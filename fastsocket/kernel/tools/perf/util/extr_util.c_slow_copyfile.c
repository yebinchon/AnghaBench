
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 scalar_t__ EOF ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 scalar_t__ fputs (char*,int *) ;
 int free (char*) ;
 scalar_t__ getline (char**,size_t*,int *) ;

__attribute__((used)) static int slow_copyfile(const char *from, const char *to)
{
 int err = 0;
 char *line = ((void*)0);
 size_t n;
 FILE *from_fp = fopen(from, "r"), *to_fp;

 if (from_fp == ((void*)0))
  goto out;

 to_fp = fopen(to, "w");
 if (to_fp == ((void*)0))
  goto out_fclose_from;

 while (getline(&line, &n, from_fp) > 0)
  if (fputs(line, to_fp) == EOF)
   goto out_fclose_to;
 err = 0;
out_fclose_to:
 fclose(to_fp);
 free(line);
out_fclose_from:
 fclose(from_fp);
out:
 return err;
}
