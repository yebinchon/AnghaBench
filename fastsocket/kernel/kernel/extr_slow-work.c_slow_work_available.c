
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atomic_read (int *) ;
 int list_empty (int *) ;
 int slow_work_queue ;
 int vslow_work_executing_count ;
 int vslow_work_queue ;

__attribute__((used)) static inline bool slow_work_available(int vsmax)
{
 return !list_empty(&slow_work_queue) ||
  (!list_empty(&vslow_work_queue) &&
   atomic_read(&vslow_work_executing_count) < vsmax);
}
