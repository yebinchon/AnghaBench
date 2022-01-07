
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int off_t ;
struct TYPE_4__ {size_t len; size_t seek; } ;
typedef TYPE_1__ line_t ;


 int LINECHARS ;
 int SEEK_END ;
 int add_line_node (TYPE_1__*) ;
 char* errmsg ;
 int errno ;
 int fprintf (int ,char*,char*) ;
 int free (TYPE_1__*) ;
 scalar_t__ fseeko (int ,int ,int ) ;
 size_t ftello (int ) ;
 size_t fwrite (char const*,int,size_t,int ) ;
 scalar_t__ malloc (int) ;
 scalar_t__ seek_write ;
 int sfp ;
 size_t sfseek ;
 int stderr ;
 char* strerror (int ) ;

const char *
put_sbuf_line(const char *cs)
{
 line_t *lp;
 size_t len;
 const char *s;

 if ((lp = (line_t *) malloc(sizeof(line_t))) == ((void*)0)) {
  fprintf(stderr, "%s\n", strerror(errno));
  errmsg = "out of memory";
  return ((void*)0);
 }

 for (s = cs; *s != '\n'; s++)
  ;
 if (s - cs >= LINECHARS) {
  errmsg = "line too long";
  free(lp);
  return ((void*)0);
 }
 len = s - cs;

 if (seek_write) {
  if (fseeko(sfp, (off_t)0, SEEK_END) < 0) {
   fprintf(stderr, "%s\n", strerror(errno));
   errmsg = "cannot seek temp file";
   free(lp);
   return ((void*)0);
  }
  sfseek = ftello(sfp);
  seek_write = 0;
 }

 if (fwrite(cs, sizeof(char), len, sfp) != len) {
  sfseek = -1;
  fprintf(stderr, "%s\n", strerror(errno));
  errmsg = "cannot write temp file";
  free(lp);
  return ((void*)0);
 }
 lp->len = len;
 lp->seek = sfseek;
 add_line_node(lp);
 sfseek += len;
 return ++s;
}
