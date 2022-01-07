
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int len; int seek; } ;
typedef TYPE_1__ line_t ;


 char* errmsg ;
 int errno ;
 int fprintf (int ,char*,char*) ;
 scalar_t__ malloc (int) ;
 int stderr ;
 char* strerror (int ) ;

line_t *
dup_line_node(line_t *lp)
{
 line_t *np;

 if ((np = (line_t *) malloc(sizeof(line_t))) == ((void*)0)) {
  fprintf(stderr, "%s\n", strerror(errno));
  errmsg = "out of memory";
  return ((void*)0);
 }
 np->seek = lp->seek;
 np->len = lp->len;
 return np;
}
