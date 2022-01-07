
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strlist {int dummy; } ;
typedef int entry ;
typedef int FILE ;


 int errno ;
 int fclose (int *) ;
 int * fgets (char*,int,int *) ;
 int * fopen (char const*,char*) ;
 size_t strlen (char*) ;
 int strlist__add (struct strlist*,char*) ;

int strlist__load(struct strlist *self, const char *filename)
{
 char entry[1024];
 int err;
 FILE *fp = fopen(filename, "r");

 if (fp == ((void*)0))
  return errno;

 while (fgets(entry, sizeof(entry), fp) != ((void*)0)) {
  const size_t len = strlen(entry);

  if (len == 0)
   continue;
  entry[len - 1] = '\0';

  err = strlist__add(self, entry);
  if (err != 0)
   goto out;
 }

 err = 0;
out:
 fclose(fp);
 return err;
}
