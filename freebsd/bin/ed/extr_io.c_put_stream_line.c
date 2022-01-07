
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int ERR ;
 char* errmsg ;
 int errno ;
 int fprintf (int ,char*,char*) ;
 scalar_t__ fputc (int ,int *) ;
 int stderr ;
 char* strerror (int ) ;

int
put_stream_line(FILE *fp, const char *s, int len)
{
 while (len--)
  if (fputc(*s++, fp) < 0) {
   fprintf(stderr, "%s\n", strerror(errno));
   errmsg = "cannot write file";
   return ERR;
  }
 return 0;
}
