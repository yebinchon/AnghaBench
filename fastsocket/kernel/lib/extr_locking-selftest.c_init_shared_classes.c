
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int init_class_X (int *,int *,int *,int *) ;
 int init_class_Y (int *,int *,int *,int *) ;
 int init_class_Z (int *,int *,int *,int *) ;
 int lock_X1 ;
 int lock_X2 ;
 int lock_Y1 ;
 int lock_Y2 ;
 int lock_Z1 ;
 int lock_Z2 ;
 int mutex_X1 ;
 int mutex_X2 ;
 int mutex_Y1 ;
 int mutex_Y2 ;
 int mutex_Z1 ;
 int mutex_Z2 ;
 int rwlock_X1 ;
 int rwlock_X2 ;
 int rwlock_Y1 ;
 int rwlock_Y2 ;
 int rwlock_Z1 ;
 int rwlock_Z2 ;
 int rwsem_X1 ;
 int rwsem_X2 ;
 int rwsem_Y1 ;
 int rwsem_Y2 ;
 int rwsem_Z1 ;
 int rwsem_Z2 ;

__attribute__((used)) static void init_shared_classes(void)
{
 init_class_X(&lock_X1, &rwlock_X1, &mutex_X1, &rwsem_X1);
 init_class_X(&lock_X2, &rwlock_X2, &mutex_X2, &rwsem_X2);

 init_class_Y(&lock_Y1, &rwlock_Y1, &mutex_Y1, &rwsem_Y1);
 init_class_Y(&lock_Y2, &rwlock_Y2, &mutex_Y2, &rwsem_Y2);

 init_class_Z(&lock_Z1, &rwlock_Z1, &mutex_Z1, &rwsem_Z1);
 init_class_Z(&lock_Z2, &rwlock_Z2, &mutex_Z2, &rwsem_Z2);
}
