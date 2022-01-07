
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tdtrav_data_t ;
typedef int tdtrav_cb_f ;
typedef int hash_t ;


 int hash_iter (int *,int ,int *) ;
 int iitraverse_td ;
 int tdtrav_init (int *,int*,int *,int *,int *,void*) ;

int
iitraverse_hash(hash_t *iihash, int *vgenp, tdtrav_cb_f *firstops,
    tdtrav_cb_f *preops, tdtrav_cb_f *postops, void *private)
{
 tdtrav_data_t tdtd;

 tdtrav_init(&tdtd, vgenp, firstops, preops, postops, private);

 return (hash_iter(iihash, iitraverse_td, &tdtd));
}
