
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_2__* wchan_t ;
struct TYPE_9__ {TYPE_1__* mf_ops; } ;
typedef TYPE_2__ mntfs ;
struct TYPE_8__ {TYPE_2__* (* get_wchan ) (TYPE_2__*) ;} ;


 TYPE_2__* stub1 (TYPE_2__*) ;

wchan_t
get_mntfs_wchan(mntfs *mf)
{
  if (mf &&
      mf->mf_ops &&
      mf->mf_ops->get_wchan)
    return mf->mf_ops->get_wchan(mf);
  return mf;
}
