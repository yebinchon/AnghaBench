
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int helper_extend ;
 int nf_ct_extend_unregister (int *) ;
 int nf_ct_free_hashtable (int ,int ,int ) ;
 int nf_ct_helper_hash ;
 int nf_ct_helper_hsize ;
 int nf_ct_helper_vmalloc ;

void nf_conntrack_helper_fini(void)
{
 nf_ct_extend_unregister(&helper_extend);
 nf_ct_free_hashtable(nf_ct_helper_hash, nf_ct_helper_vmalloc,
        nf_ct_helper_hsize);
}
