
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct tcf_proto {struct fw_head* root; } ;
struct nlattr {int dummy; } ;
struct fw_head {struct fw_filter** ht; scalar_t__ mask; } ;
struct fw_filter {scalar_t__ id; struct fw_filter* next; } ;


 int EINVAL ;
 int ENOBUFS ;
 int GFP_KERNEL ;
 size_t TCA_FW_MASK ;
 int TCA_FW_MAX ;
 size_t TCA_OPTIONS ;
 int fw_change_attrs (struct tcf_proto*,struct fw_filter*,struct nlattr**,struct nlattr**,unsigned long) ;
 size_t fw_hash (scalar_t__) ;
 int fw_policy ;
 int kfree (struct fw_filter*) ;
 void* kzalloc (int,int ) ;
 scalar_t__ nla_get_u32 (struct nlattr*) ;
 int nla_parse_nested (struct nlattr**,int ,struct nlattr*,int ) ;
 int tcf_tree_lock (struct tcf_proto*) ;
 int tcf_tree_unlock (struct tcf_proto*) ;

__attribute__((used)) static int fw_change(struct tcf_proto *tp, unsigned long base,
       u32 handle,
       struct nlattr **tca,
       unsigned long *arg)
{
 struct fw_head *head = (struct fw_head*)tp->root;
 struct fw_filter *f = (struct fw_filter *) *arg;
 struct nlattr *opt = tca[TCA_OPTIONS];
 struct nlattr *tb[TCA_FW_MAX + 1];
 int err;

 if (!opt)
  return handle ? -EINVAL : 0;

 err = nla_parse_nested(tb, TCA_FW_MAX, opt, fw_policy);
 if (err < 0)
  return err;

 if (f != ((void*)0)) {
  if (f->id != handle && handle)
   return -EINVAL;
  return fw_change_attrs(tp, f, tb, tca, base);
 }

 if (!handle)
  return -EINVAL;

 if (head == ((void*)0)) {
  u32 mask = 0xFFFFFFFF;
  if (tb[TCA_FW_MASK])
   mask = nla_get_u32(tb[TCA_FW_MASK]);

  head = kzalloc(sizeof(struct fw_head), GFP_KERNEL);
  if (head == ((void*)0))
   return -ENOBUFS;
  head->mask = mask;

  tcf_tree_lock(tp);
  tp->root = head;
  tcf_tree_unlock(tp);
 }

 f = kzalloc(sizeof(struct fw_filter), GFP_KERNEL);
 if (f == ((void*)0))
  return -ENOBUFS;

 f->id = handle;

 err = fw_change_attrs(tp, f, tb, tca, base);
 if (err < 0)
  goto errout;

 f->next = head->ht[fw_hash(handle)];
 tcf_tree_lock(tp);
 head->ht[fw_hash(handle)] = f;
 tcf_tree_unlock(tp);

 *arg = (unsigned long)f;
 return 0;

errout:
 kfree(f);
 return err;
}
