
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int destroy_procinfo (void*) ;

__attribute__((used)) static void
do_destroy_procinfo_cleanup (void *pi)
{
  destroy_procinfo (pi);
}
