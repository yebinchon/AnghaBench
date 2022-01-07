
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct subfile {char* dirname; char* name; scalar_t__ language; TYPE_1__* next; } ;
struct TYPE_2__ {scalar_t__ language; } ;


 scalar_t__ deduce_language_from_filename (char*) ;
 scalar_t__ language_unknown ;
 char* last_source_file ;
 char* savestring (char*,int) ;
 int strlen (char*) ;

void
patch_subfile_names (struct subfile *subfile, char *name)
{
  if (subfile != ((void*)0) && subfile->dirname == ((void*)0) && subfile->name != ((void*)0)
      && subfile->name[strlen (subfile->name) - 1] == '/')
    {
      subfile->dirname = subfile->name;
      subfile->name = savestring (name, strlen (name));
      last_source_file = name;
      subfile->language = deduce_language_from_filename (subfile->name);
      if (subfile->language == language_unknown &&
   subfile->next != ((void*)0))
 {
   subfile->language = subfile->next->language;
 }
    }
}
