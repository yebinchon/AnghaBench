
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct line_filter {char* bufpos; char* buffer; char* buflim; int * infile; } ;
typedef int FILE ;


 scalar_t__ SDIFF_BUFSIZE ;
 char* xmalloc (scalar_t__) ;

__attribute__((used)) static void
lf_init (struct line_filter *lf, FILE *infile)
{
  lf->infile = infile;
  lf->bufpos = lf->buffer = lf->buflim = xmalloc (SDIFF_BUFSIZE + 1);
  lf->buflim[0] = '\n';
}
