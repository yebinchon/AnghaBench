
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zprop_func ;
typedef int zfs_type_t ;
typedef int boolean_t ;


 int zprop_iter_common (int ,void*,int ,int ,int ) ;

int
zprop_iter(zprop_func func, void *cb, boolean_t show_all, boolean_t ordered,
    zfs_type_t type)
{
 return (zprop_iter_common(func, cb, show_all, ordered, type));
}
