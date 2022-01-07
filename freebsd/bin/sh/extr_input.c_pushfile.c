
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * prev; } ;
struct parsefile {int fd; TYPE_1__ basestrpush; int * strpush; struct parsefile* prev; int linno; int nextc; int lleft; int nleft; } ;


 scalar_t__ ckmalloc (int) ;
 struct parsefile* parsefile ;
 int parselleft ;
 int parsenextc ;
 int parsenleft ;
 int plinno ;

__attribute__((used)) static void
pushfile(void)
{
 struct parsefile *pf;

 parsefile->nleft = parsenleft;
 parsefile->lleft = parselleft;
 parsefile->nextc = parsenextc;
 parsefile->linno = plinno;
 pf = (struct parsefile *)ckmalloc(sizeof (struct parsefile));
 pf->prev = parsefile;
 pf->fd = -1;
 pf->strpush = ((void*)0);
 pf->basestrpush.prev = ((void*)0);
 parsefile = pf;
}
