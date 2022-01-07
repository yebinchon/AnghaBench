
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;


 int fprintf (int ,char*,char const*,char*) ;
 int stderr ;
 char* strerror (int) ;
 int utilfdt_read_err_len (char const*,char**,int *) ;

char *utilfdt_read_len(const char *filename, off_t *len)
{
 char *buff;
 int ret = utilfdt_read_err_len(filename, &buff, len);

 if (ret) {
  fprintf(stderr, "Couldn't open blob from '%s': %s\n", filename,
   strerror(ret));
  return ((void*)0);
 }

 return buff;
}
