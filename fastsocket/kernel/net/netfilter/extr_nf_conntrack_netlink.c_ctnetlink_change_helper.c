
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct nf_conntrack_helper {int dummy; } ;
struct nf_conn_help {struct nf_conntrack_helper* helper; int help; } ;
struct nf_conn {scalar_t__ master; } ;


 size_t CTA_HELP ;
 int EAGAIN ;
 int EBUSY ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int GFP_ATOMIC ;
 struct nf_conntrack_helper* __nf_conntrack_helper_find_byname (char*) ;
 int ctnetlink_parse_help (struct nlattr const* const,char**) ;
 int memset (int *,int ,int) ;
 int nf_conntrack_lock ;
 struct nf_conn_help* nf_ct_helper_ext_add (struct nf_conn*,int ) ;
 int nf_ct_remove_expectations (struct nf_conn*) ;
 struct nf_conn_help* nfct_help (struct nf_conn*) ;
 int rcu_assign_pointer (struct nf_conntrack_helper*,struct nf_conntrack_helper*) ;
 scalar_t__ request_module (char*,char*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int strcmp (char*,char*) ;

__attribute__((used)) static inline int
ctnetlink_change_helper(struct nf_conn *ct, const struct nlattr * const cda[])
{
 struct nf_conntrack_helper *helper;
 struct nf_conn_help *help = nfct_help(ct);
 char *helpname = ((void*)0);
 int err;


 if (ct->master)
  return -EBUSY;

 err = ctnetlink_parse_help(cda[CTA_HELP], &helpname);
 if (err < 0)
  return err;

 if (!strcmp(helpname, "")) {
  if (help && help->helper) {

   nf_ct_remove_expectations(ct);
   rcu_assign_pointer(help->helper, ((void*)0));
  }

  return 0;
 }

 helper = __nf_conntrack_helper_find_byname(helpname);
 if (helper == ((void*)0)) {
  return -EOPNOTSUPP;
 }

 if (help) {
  if (help->helper == helper)
   return 0;
  if (help->helper)
   return -EBUSY;

  memset(&help->help, 0, sizeof(help->help));
 } else {
  help = nf_ct_helper_ext_add(ct, GFP_ATOMIC);
  if (help == ((void*)0))
   return -ENOMEM;
 }

 rcu_assign_pointer(help->helper, helper);

 return 0;
}
