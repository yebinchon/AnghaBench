
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERR ;
 char* errmsg ;
 int errno ;
 scalar_t__ fclose (int *) ;
 int fprintf (int ,char*,char*,char*) ;
 scalar_t__ seek_write ;
 char* sfn ;
 int * sfp ;
 scalar_t__ sfseek ;
 int stderr ;
 char* strerror (int ) ;
 int unlink (char*) ;

int
close_sbuf(void)
{
 if (sfp) {
  if (fclose(sfp) < 0) {
   fprintf(stderr, "%s: %s\n", sfn, strerror(errno));
   errmsg = "cannot close temp file";
   return ERR;
  }
  sfp = ((void*)0);
  unlink(sfn);
 }
 sfseek = seek_write = 0;
 return 0;
}
