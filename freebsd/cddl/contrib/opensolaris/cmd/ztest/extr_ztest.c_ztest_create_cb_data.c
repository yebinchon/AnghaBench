
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int zcd_spa; int zcd_txg; } ;
typedef TYPE_1__ ztest_cb_data_t ;
typedef int uint64_t ;
typedef int objset_t ;


 int UMEM_NOFAIL ;
 int dmu_objset_spa (int *) ;
 TYPE_1__* umem_zalloc (int,int ) ;

__attribute__((used)) static ztest_cb_data_t *
ztest_create_cb_data(objset_t *os, uint64_t txg)
{
 ztest_cb_data_t *cb_data;

 cb_data = umem_zalloc(sizeof (ztest_cb_data_t), UMEM_NOFAIL);

 cb_data->zcd_txg = txg;
 cb_data->zcd_spa = dmu_objset_spa(os);

 return (cb_data);
}
