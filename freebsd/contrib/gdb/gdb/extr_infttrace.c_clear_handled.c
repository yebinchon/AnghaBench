
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ handled; } ;
typedef TYPE_1__ thread_info ;
typedef scalar_t__ lwpid_t ;


 scalar_t__ debug_on ;
 int error (char*) ;
 TYPE_1__* find_thread_info (scalar_t__) ;
 int printf (char*,int) ;

__attribute__((used)) static void
clear_handled (lwpid_t tid)
{
  thread_info *p;






  p = find_thread_info (tid);
  if (p == ((void*)0))
    error ("Internal error: No thread state to clear?");

  p->handled = 0;
}
