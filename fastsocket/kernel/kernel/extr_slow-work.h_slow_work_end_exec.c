
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slow_work {int dummy; } ;


 int ** slow_work_execs ;
 int slow_work_execs_lock ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

__attribute__((used)) static inline void slow_work_end_exec(int id, struct slow_work *work)
{





}
