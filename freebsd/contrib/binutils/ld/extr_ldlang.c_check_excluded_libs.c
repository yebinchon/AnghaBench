
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct excluded_lib {struct excluded_lib* next; int name; } ;
struct TYPE_3__ {void* no_export; int filename; } ;
typedef TYPE_1__ bfd ;


 void* TRUE ;
 struct excluded_lib* excluded_libs ;
 char* lbasename (int ) ;
 scalar_t__ strcmp (int ,char*) ;
 int strlen (int ) ;
 scalar_t__ strncmp (int ,char const*,int) ;

__attribute__((used)) static void
check_excluded_libs (bfd *abfd)
{
  struct excluded_lib *lib = excluded_libs;

  while (lib)
    {
      int len = strlen (lib->name);
      const char *filename = lbasename (abfd->filename);

      if (strcmp (lib->name, "ALL") == 0)
 {
   abfd->no_export = TRUE;
   return;
 }

      if (strncmp (lib->name, filename, len) == 0
   && (filename[len] == '\0'
       || (filename[len] == '.' && filename[len + 1] == 'a'
    && filename[len + 2] == '\0')))
 {
   abfd->no_export = TRUE;
   return;
 }

      lib = lib->next;
    }
}
