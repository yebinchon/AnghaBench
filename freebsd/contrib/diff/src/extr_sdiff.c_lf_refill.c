
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct line_filter {char* buffer; char* bufpos; char* buflim; int infile; } ;


 int SDIFF_BUFSIZE ;
 int checksigs () ;
 size_t ck_fread (char*,int ,int ) ;

__attribute__((used)) static size_t
lf_refill (struct line_filter *lf)
{
  size_t s = ck_fread (lf->buffer, SDIFF_BUFSIZE, lf->infile);
  lf->bufpos = lf->buffer;
  lf->buflim = lf->buffer + s;
  lf->buflim[0] = '\n';
  checksigs ();
  return s;
}
