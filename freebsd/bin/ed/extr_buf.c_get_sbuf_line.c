
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ seek; size_t len; } ;
typedef TYPE_1__ line_t ;


 int REALLOC (char*,size_t,size_t,int *) ;
 int SEEK_SET ;
 TYPE_1__ buffer_head ;
 char* errmsg ;
 int errno ;
 int fprintf (int ,char*,char*) ;
 size_t fread (char*,int,size_t,int ) ;
 scalar_t__ fseeko (int ,scalar_t__,int ) ;
 int seek_write ;
 int sfp ;
 scalar_t__ sfseek ;
 int stderr ;
 char* strerror (int ) ;

char *
get_sbuf_line(line_t *lp)
{
 static char *sfbuf = ((void*)0);
 static size_t sfbufsz;

 size_t len;

 if (lp == &buffer_head)
  return ((void*)0);
 seek_write = 1;

 if (sfseek != lp->seek) {
  sfseek = lp->seek;
  if (fseeko(sfp, sfseek, SEEK_SET) < 0) {
   fprintf(stderr, "%s\n", strerror(errno));
   errmsg = "cannot seek temp file";
   return ((void*)0);
  }
 }
 len = lp->len;
 REALLOC(sfbuf, sfbufsz, len + 1, ((void*)0));
 if (fread(sfbuf, sizeof(char), len, sfp) != len) {
  fprintf(stderr, "%s\n", strerror(errno));
  errmsg = "cannot read temp file";
  return ((void*)0);
 }
 sfseek += len;
 sfbuf[len] = '\0';
 return sfbuf;
}
