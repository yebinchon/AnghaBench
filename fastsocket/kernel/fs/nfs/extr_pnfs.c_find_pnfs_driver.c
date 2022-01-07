
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pnfs_layoutdriver_type {int dummy; } ;


 struct pnfs_layoutdriver_type* find_pnfs_driver_locked (int ) ;
 int pnfs_spinlock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static struct pnfs_layoutdriver_type *
find_pnfs_driver(u32 id)
{
 struct pnfs_layoutdriver_type *local;

 spin_lock(&pnfs_spinlock);
 local = find_pnfs_driver_locked(id);
 spin_unlock(&pnfs_spinlock);
 return local;
}
