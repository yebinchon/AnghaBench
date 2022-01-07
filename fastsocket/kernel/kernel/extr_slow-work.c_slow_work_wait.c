
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int schedule () ;

__attribute__((used)) static int slow_work_wait(void *word)
{
 schedule();
 return 0;
}
