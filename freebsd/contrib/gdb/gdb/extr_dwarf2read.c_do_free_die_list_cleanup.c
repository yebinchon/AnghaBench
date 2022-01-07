
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free_die_list (void*) ;

__attribute__((used)) static void
do_free_die_list_cleanup (void *dies)
{
  free_die_list (dies);
}
