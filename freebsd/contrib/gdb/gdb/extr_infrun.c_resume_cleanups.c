
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int normal_stop () ;

__attribute__((used)) static void
resume_cleanups (void *ignore)
{
  normal_stop ();
}
