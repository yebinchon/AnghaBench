
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,char const*,char*) ;
 int stderr ;
 char* strerror (int) ;
 int utilfdt_write_err (char const*,void const*) ;

int utilfdt_write(const char *filename, const void *blob)
{
 int ret = utilfdt_write_err(filename, blob);

 if (ret) {
  fprintf(stderr, "Couldn't write blob to '%s': %s\n", filename,
   strerror(ret));
 }
 return ret ? -1 : 0;
}
