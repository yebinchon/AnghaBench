
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct line_maps {scalar_t__ maps; } ;


 int free (scalar_t__) ;
 int linemap_check_files_exited (struct line_maps*) ;

void
linemap_free (struct line_maps *set)
{
  if (set->maps)
    {
      linemap_check_files_exited (set);

      free (set->maps);
    }
}
