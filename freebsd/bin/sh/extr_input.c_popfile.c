
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parsefile {scalar_t__ fd; int linno; int nextc; int lleft; int nleft; struct parsefile* prev; scalar_t__ strpush; struct parsefile* buf; } ;


 int INTOFF ;
 int INTON ;
 int ckfree (struct parsefile*) ;
 int close (scalar_t__) ;
 struct parsefile* parsefile ;
 int parselleft ;
 int parsenextc ;
 int parsenleft ;
 int plinno ;
 int popstring () ;

void
popfile(void)
{
 struct parsefile *pf = parsefile;

 INTOFF;
 if (pf->fd >= 0)
  close(pf->fd);
 if (pf->buf)
  ckfree(pf->buf);
 while (pf->strpush)
  popstring();
 parsefile = pf->prev;
 ckfree(pf);
 parsenleft = parsefile->nleft;
 parselleft = parsefile->lleft;
 parsenextc = parsefile->nextc;
 plinno = parsefile->linno;
 INTON;
}
