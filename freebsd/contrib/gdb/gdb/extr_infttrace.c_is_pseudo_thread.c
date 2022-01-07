
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int am_pseudo; scalar_t__ terminated; } ;
typedef TYPE_1__ thread_info ;
typedef int lwpid_t ;


 TYPE_1__* find_thread_info (int ) ;

__attribute__((used)) static int
is_pseudo_thread (lwpid_t tid)
{
  thread_info *p = find_thread_info (tid);
  if (((void*)0) == p || p->terminated)
    return 0;
  else
    return p->am_pseudo;
}
