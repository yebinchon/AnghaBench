
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int ztest_od_t ;
struct TYPE_6__ {int zd_dirobj_lock; int * zd_od; } ;
typedef TYPE_1__ ztest_ds_t ;
typedef scalar_t__ boolean_t ;


 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 scalar_t__ ztest_create (TYPE_1__*,int *,int) ;
 scalar_t__ ztest_lookup (TYPE_1__*,int *,int) ;
 scalar_t__ ztest_remove (TYPE_1__*,int *,int) ;

__attribute__((used)) static int
ztest_object_init(ztest_ds_t *zd, ztest_od_t *od, size_t size, boolean_t remove)
{
 int count = size / sizeof (*od);
 int rv = 0;

 mutex_enter(&zd->zd_dirobj_lock);
 if ((ztest_lookup(zd, od, count) != 0 || remove) &&
     (ztest_remove(zd, od, count) != 0 ||
     ztest_create(zd, od, count) != 0))
  rv = -1;
 zd->zd_od = od;
 mutex_exit(&zd->zd_dirobj_lock);

 return (rv);
}
