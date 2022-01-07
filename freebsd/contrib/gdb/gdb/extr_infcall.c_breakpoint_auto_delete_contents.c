
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bpstat ;


 int breakpoint_auto_delete (int ) ;

__attribute__((used)) static void
breakpoint_auto_delete_contents (void *arg)
{
  breakpoint_auto_delete (*(bpstat *) arg);
}
