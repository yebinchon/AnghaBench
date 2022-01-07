
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_data {int desc; int name; } ;
struct dirent {char* d_name; } ;
struct dirdata {char const** names; char* data; size_t nnames; } ;
typedef int DIR ;


 int NAMLEN (struct dirent*) ;
 int PTRDIFF_MAX ;
 scalar_t__ closedir (int *) ;
 int errno ;
 int excluded ;
 scalar_t__ excluded_filename (int ,char*) ;
 int memcpy (char*,char*,size_t) ;
 int * opendir (int ) ;
 struct dirent* readdir (int *) ;
 scalar_t__ strlen (char*) ;
 int xalloc_die () ;
 void* xmalloc (size_t) ;
 char* xrealloc (char*,size_t) ;

__attribute__((used)) static bool
dir_read (struct file_data const *dir, struct dirdata *dirdata)
{
  register struct dirent *next;
  register size_t i;


  char const **names;


  size_t nnames;


  char *data;
  size_t data_alloc, data_used;

  dirdata->names = 0;
  dirdata->data = 0;
  nnames = 0;
  data = 0;

  if (dir->desc != -1)
    {

      register DIR *reading = opendir (dir->name);
      if (!reading)
 return 0;



      data_alloc = 512;
      data_used = 0;
      dirdata->data = data = xmalloc (data_alloc);




      while ((errno = 0, (next = readdir (reading)) != 0))
 {
   char *d_name = next->d_name;
   size_t d_size = NAMLEN (next) + 1;


   if (d_name[0] == '.'
       && (d_name[1] == 0 || (d_name[1] == '.' && d_name[2] == 0)))
     continue;

   if (excluded_filename (excluded, d_name))
     continue;

   while (data_alloc < data_used + d_size)
     {
       if (PTRDIFF_MAX / 2 <= data_alloc)
  xalloc_die ();
       dirdata->data = data = xrealloc (data, data_alloc *= 2);
     }

   memcpy (data + data_used, d_name, d_size);
   data_used += d_size;
   nnames++;
 }
      if (errno)
 {
   int e = errno;
   closedir (reading);
   errno = e;
   return 0;
 }



      if (closedir (reading) != 0)
 return 0;

    }


  if (PTRDIFF_MAX / sizeof *names - 1 <= nnames)
    xalloc_die ();
  dirdata->names = names = xmalloc ((nnames + 1) * sizeof *names);
  dirdata->nnames = nnames;
  for (i = 0; i < nnames; i++)
    {
      names[i] = data;
      data += strlen (data) + 1;
    }
  names[nnames] = 0;
  return 1;
}
