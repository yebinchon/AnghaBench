
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free_stringtab () ;

__attribute__((used)) static void
free_stringtab_cleanup (void *ignore)
{
  free_stringtab ();
}
