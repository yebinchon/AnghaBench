
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EBUSY ;
 scalar_t__ freeze_processes () ;
 int thaw_processes () ;

__attribute__((used)) static int prepare_processes(void)
{
 int error = 0;

 if (freeze_processes()) {
  error = -EBUSY;
  thaw_processes();
 }
 return error;
}
