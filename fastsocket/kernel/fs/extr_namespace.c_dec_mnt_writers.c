
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int mnt_writers; } ;


 int * per_cpu_ptr (int ,int ) ;
 int smp_processor_id () ;

__attribute__((used)) static inline void dec_mnt_writers(struct vfsmount *mnt)
{



 mnt->mnt_writers--;

}
