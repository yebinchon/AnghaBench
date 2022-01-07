
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dtc_file {char* name; int file; } ;


 int fopen (char*,char*) ;
 int free (char*) ;
 int strcat (char*,char const*) ;
 int strcpy (char*,char const*) ;
 char* strdup (char const*) ;
 scalar_t__ strlen (char const*) ;
 char* xmalloc (scalar_t__) ;

__attribute__((used)) static int dtc_open_one(struct dtc_file *file,
                        const char *search,
                        const char *fname)
{
 char *fullname;

 if (search) {
  fullname = xmalloc(strlen(search) + strlen(fname) + 2);

  strcpy(fullname, search);
  strcat(fullname, "/");
  strcat(fullname, fname);
 } else {
  fullname = strdup(fname);
 }

 file->file = fopen(fullname, "r");
 if (!file->file) {
  free(fullname);
  return 0;
 }

 file->name = fullname;
 return 1;
}
