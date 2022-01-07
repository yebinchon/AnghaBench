
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subfile {int name; struct subfile* next; } ;


 scalar_t__ FILENAME_CMP (int ,char*) ;
 int IS_ABSOLUTE_PATH (char*) ;
 char* concat (char*,char*,char*,int *) ;
 struct subfile* current_subfile ;
 int start_subfile (char*,char*) ;
 struct subfile* subfiles ;
 int xfree (char*) ;

__attribute__((used)) static void
dwarf2_start_subfile (char *filename, char *dirname)
{



  if (!IS_ABSOLUTE_PATH (filename) && dirname != ((void*)0))
    {
      struct subfile *subfile;
      char *fullname = concat (dirname, "/", filename, ((void*)0));

      for (subfile = subfiles; subfile; subfile = subfile->next)
 {
   if (FILENAME_CMP (subfile->name, fullname) == 0)
     {
       current_subfile = subfile;
       xfree (fullname);
       return;
     }
 }
      xfree (fullname);
    }
  start_subfile (filename, dirname);
}
