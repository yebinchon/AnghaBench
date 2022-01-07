
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct stat {int st_mode; } ;
typedef int FILE ;


 scalar_t__ FDT_MAGIC ;
 scalar_t__ S_ISDIR (int ) ;
 int S_ISREG (int ) ;
 int fclose (int *) ;
 scalar_t__ fdt32_to_cpu (scalar_t__) ;
 int * fopen (char const*,char*) ;
 int fread (scalar_t__*,int,int,int *) ;
 char const* guess_type_by_name (char const*,char const*) ;
 scalar_t__ stat (char const*,struct stat*) ;

__attribute__((used)) static const char *guess_input_format(const char *fname, const char *fallback)
{
 struct stat statbuf;
 uint32_t magic;
 FILE *f;

 if (stat(fname, &statbuf) != 0)
  return fallback;

 if (S_ISDIR(statbuf.st_mode))
  return "fs";

 if (!S_ISREG(statbuf.st_mode))
  return fallback;

 f = fopen(fname, "r");
 if (f == ((void*)0))
  return fallback;
 if (fread(&magic, 4, 1, f) != 1) {
  fclose(f);
  return fallback;
 }
 fclose(f);

 magic = fdt32_to_cpu(magic);
 if (magic == FDT_MAGIC)
  return "dtb";

 return guess_type_by_name(fname, fallback);
}
