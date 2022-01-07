
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_conntrack_helper {scalar_t__ expect_class_max; int hnode; int name; int * expect_policy; int tuple; } ;


 int BUG_ON (int) ;
 int NF_CT_HELPER_NAME_LEN ;
 scalar_t__ NF_CT_MAX_EXPECT_CLASSES ;
 unsigned int helper_hash (int *) ;
 int hlist_add_head_rcu (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nf_ct_helper_count ;
 int * nf_ct_helper_hash ;
 int nf_ct_helper_mutex ;
 int strlen (int ) ;

int nf_conntrack_helper_register(struct nf_conntrack_helper *me)
{
 unsigned int h = helper_hash(&me->tuple);

 BUG_ON(me->expect_policy == ((void*)0));
 BUG_ON(me->expect_class_max >= NF_CT_MAX_EXPECT_CLASSES);
 BUG_ON(strlen(me->name) > NF_CT_HELPER_NAME_LEN - 1);

 mutex_lock(&nf_ct_helper_mutex);
 hlist_add_head_rcu(&me->hnode, &nf_ct_helper_hash[h]);
 nf_ct_helper_count++;
 mutex_unlock(&nf_ct_helper_mutex);

 return 0;
}
