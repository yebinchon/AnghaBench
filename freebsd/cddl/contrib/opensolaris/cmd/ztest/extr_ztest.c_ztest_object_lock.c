
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * zd_object_lock; } ;
typedef TYPE_1__ ztest_ds_t ;
typedef int uint64_t ;
typedef int rll_t ;
typedef int rl_type_t ;


 int ZTEST_OBJECT_LOCKS ;
 int ztest_rll_lock (int *,int ) ;

__attribute__((used)) static void
ztest_object_lock(ztest_ds_t *zd, uint64_t object, rl_type_t type)
{
 rll_t *rll = &zd->zd_object_lock[object & (ZTEST_OBJECT_LOCKS - 1)];

 ztest_rll_lock(rll, type);
}
