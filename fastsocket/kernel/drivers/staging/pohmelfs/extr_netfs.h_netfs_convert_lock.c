
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netfs_lock {void* type; void* size; void* ino; void* start; } ;


 void* __cpu_to_be32 (void*) ;
 void* __cpu_to_be64 (void*) ;

__attribute__((used)) static inline void netfs_convert_lock(struct netfs_lock *lock)
{
 lock->start = __cpu_to_be64(lock->start);
 lock->ino = __cpu_to_be64(lock->ino);
 lock->size = __cpu_to_be32(lock->size);
 lock->type = __cpu_to_be32(lock->type);
}
