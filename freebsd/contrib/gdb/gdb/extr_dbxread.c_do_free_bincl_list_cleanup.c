
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free_bincl_list (void*) ;

__attribute__((used)) static void
do_free_bincl_list_cleanup (void *objfile)
{
  free_bincl_list (objfile);
}
