
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int filename ;


 int PATH_MAX ;
 int SIZE_MAX ;
 int bzero (char**,int) ;
 int err (int,char*) ;
 int errx (int,char*) ;
 scalar_t__ fgets (char*,int,int ) ;
 int have_stdin ;
 int stdin ;
 char* strdup (char*) ;
 int strlen (char*) ;
 char** zmalloc (size_t) ;
 char** zrealloc (char**,size_t) ;

__attribute__((used)) static char **
stdin_files(void)
{
 char **files_list;
 char filename[PATH_MAX];
 size_t fl_count, i;

 if (have_stdin)
  err(1, "cannot have more than one stdin");

 i = 0;
 have_stdin = 1;
 bzero(&filename, sizeof(filename));

 fl_count = 1024;
 files_list = zmalloc(fl_count * sizeof(char *));
 while (fgets(filename, (int)sizeof(filename), stdin)) {

  filename[strlen(filename) - 1] = '\0';
  files_list[i] = strdup(filename);
  if (files_list[i] == ((void*)0))
   err(1, "strdup() failed");

  if (++i == fl_count) {
   fl_count <<= 1;
   if (fl_count > SIZE_MAX / sizeof(char *))
    errx(1, "Too many input files");
   files_list = zrealloc(files_list,
     fl_count * sizeof(char *));
  }
 }


 files_list[i] = ((void*)0);

 return (files_list);
}
