
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_size; } ;
struct carlfw_file {int name; int len; int * data; } ;
typedef int FILE ;


 int ENOMEM ;
 int errno ;
 int fclose (int *) ;
 int ferror (int *) ;
 int fileno (int *) ;
 int * fopen (char const*,char const*) ;
 int fread (int *,int ,int,int *) ;
 int fstat (int ,struct stat*) ;
 int * malloc (int ) ;
 int strdup (char const*) ;

__attribute__((used)) static int __carlfw_load(struct carlfw_file *file, const char *name, const char *mode)
{
 struct stat file_stat;
 FILE *fh;
 int err;

 fh = fopen(name, mode);
 if (fh == ((void*)0))
  return errno ? -errno : -1;

 err = fstat(fileno(fh), &file_stat);
 if (err)
  return errno ? -errno : -1;

 file->len = file_stat.st_size;
 file->data = malloc(file->len);
 if (file->data == ((void*)0))
  return -ENOMEM;

 err = fread(file->data, file->len, 1, fh);
 if (err != 1)
  return -ferror(fh);

 file->name = strdup(name);
 fclose(fh);

 if (!file->name)
  return -ENOMEM;

 return 0;
}
