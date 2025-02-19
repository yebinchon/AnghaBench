
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ data_size; scalar_t__ data_base; scalar_t__ text_size; scalar_t__ text_base; scalar_t__ linkage_ptr; } ;
struct so_list {scalar_t__ loaded; struct so_list* next; TYPE_1__ pa64_solib_desc; int * objfile; int name; } ;


 int * exec_bfd ;
 int local_hex_string_custom (scalar_t__,char*) ;
 int printf_unfiltered (char*,...) ;
 struct so_list* so_list_head ;

__attribute__((used)) static void
pa64_sharedlibrary_info_command (char *ignore, int from_tty)
{
  struct so_list *so_list = so_list_head;

  if (exec_bfd == ((void*)0))
    {
      printf_unfiltered ("No executable file.\n");
      return;
    }

  if (so_list == ((void*)0))
    {
      printf_unfiltered ("No shared libraries loaded at this time.\n");
      return;
    }

  printf_unfiltered ("Shared Object Libraries\n");
  printf_unfiltered ("   %-19s%-19s%-19s%-19s\n",
       "  text start", "   text end",
       "  data start", "   data end");
  while (so_list)
    {
      unsigned int flags;

      printf_unfiltered ("%s", so_list->name);
      if (so_list->objfile == ((void*)0))
 printf_unfiltered ("  (symbols not loaded)");
      if (so_list->loaded == 0)
 printf_unfiltered ("  (shared library unloaded)");
      printf_unfiltered ("  %-18s",
 local_hex_string_custom (so_list->pa64_solib_desc.linkage_ptr,
     "016l"));
      printf_unfiltered ("\n");
      printf_unfiltered ("%-18s",
 local_hex_string_custom (so_list->pa64_solib_desc.text_base,
     "016l"));
      printf_unfiltered (" %-18s",
 local_hex_string_custom ((so_list->pa64_solib_desc.text_base
      + so_list->pa64_solib_desc.text_size),
     "016l"));
      printf_unfiltered (" %-18s",
 local_hex_string_custom (so_list->pa64_solib_desc.data_base,
     "016l"));
      printf_unfiltered (" %-18s\n",
 local_hex_string_custom ((so_list->pa64_solib_desc.data_base
      + so_list->pa64_solib_desc.data_size),
     "016l"));
      so_list = so_list->next;
    }
}
