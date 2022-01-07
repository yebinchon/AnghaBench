
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inf {int task; } ;


 struct inf* cur_inf () ;
 int error (char*) ;

__attribute__((used)) static struct inf *
active_inf (void)
{
  struct inf *inf = cur_inf ();
  if (!inf->task)
    error ("No current process.");
  return inf;
}
