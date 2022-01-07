
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fileargs_t ;
typedef int FILE ;


 int errno ;
 int fclose (int *) ;
 int * fileargs_fopen (int *,char const*,char*) ;
 int handle_elf (char const*,int *) ;
 int strerror (int ) ;
 int warnx (char*,char const*,int ) ;

int
handle_file(fileargs_t *fa, const char *name)
{
 FILE *pfile;
 int rt;

 if (name == ((void*)0))
  return (1);
 pfile = fileargs_fopen(fa, name, "rb");
 if (pfile == ((void*)0)) {
  warnx("'%s': %s", name, strerror(errno));
  return (1);
 }

 rt = handle_elf(name, pfile);
 fclose(pfile);
 return (rt);
}
