
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tdtrav_data_t ;
typedef int tdtrav_cb_f ;
typedef int iidesc_t ;


 int iitraverse_td (int *,int *) ;
 int tdtrav_init (int *,int*,int *,int *,int *,void*) ;

int
iitraverse(iidesc_t *ii, int *vgenp, tdtrav_cb_f *firstops, tdtrav_cb_f *preops,
    tdtrav_cb_f *postops, void *private)
{
 tdtrav_data_t tdtd;

 tdtrav_init(&tdtd, vgenp, firstops, preops, postops, private);

 return (iitraverse_td(ii, &tdtd));
}
