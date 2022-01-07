
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int restore_inferior_status (void*) ;

__attribute__((used)) static void
do_restore_inferior_status_cleanup (void *sts)
{
  restore_inferior_status (sts);
}
