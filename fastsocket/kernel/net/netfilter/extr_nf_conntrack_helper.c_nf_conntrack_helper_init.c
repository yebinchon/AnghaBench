
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int helper_extend ;
 int nf_ct_alloc_hashtable (int*,int *,int ) ;
 int nf_ct_extend_register (int *) ;
 int nf_ct_free_hashtable (int ,int ,int) ;
 int nf_ct_helper_hash ;
 int nf_ct_helper_hsize ;
 int nf_ct_helper_vmalloc ;

int nf_conntrack_helper_init(void)
{
 int err;

 nf_ct_helper_hsize = 1;
 nf_ct_helper_hash = nf_ct_alloc_hashtable(&nf_ct_helper_hsize,
        &nf_ct_helper_vmalloc, 0);
 if (!nf_ct_helper_hash)
  return -ENOMEM;

 err = nf_ct_extend_register(&helper_extend);
 if (err < 0)
  goto err1;

 return 0;

err1:
 nf_ct_free_hashtable(nf_ct_helper_hash, nf_ct_helper_vmalloc,
        nf_ct_helper_hsize);
 return err;
}
