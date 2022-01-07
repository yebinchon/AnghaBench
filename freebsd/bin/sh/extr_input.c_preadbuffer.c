
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {char* buf; scalar_t__ fd; TYPE_1__* strpush; } ;
struct TYPE_3__ {int * ap; } ;
typedef int HistEvent ;


 int EOF_NLEFT ;
 int H_ADD ;
 int H_ENTER ;
 int INTOFF ;
 int INTON ;
 int PEOF ;
 int flushout (int ) ;
 scalar_t__ hist ;
 int history (scalar_t__,int *,int ,char*) ;
 int out2 ;
 int out2str (char*) ;
 TYPE_2__* parsefile ;
 int parselleft ;
 char* parsenextc ;
 int parsenleft ;
 int popstring () ;
 int preadfd () ;
 char* strchrnul (char*,char) ;
 size_t strspn (char*,char*) ;
 scalar_t__ vflag ;
 int whichprompt ;

int
preadbuffer(void)
{
 char *p, *q, *r, *end;
 char savec;

 while (parsefile->strpush) {





  if (parsenleft == -1 && parsefile->strpush->ap != ((void*)0))
   return ' ';
  popstring();
  if (--parsenleft >= 0)
   return (*parsenextc++);
 }
 if (parsenleft == EOF_NLEFT || parsefile->buf == ((void*)0))
  return PEOF;

again:
 if (parselleft <= 0) {
  if ((parselleft = preadfd()) == -1) {
   parselleft = parsenleft = EOF_NLEFT;
   return PEOF;
  }
 }

 p = parsefile->buf + (parsenextc - parsefile->buf);
 end = p + parselleft;
 *end = '\0';
 q = strchrnul(p, '\n');
 if (q != end && *q == '\0') {

  for (r = q; q != end; q++) {
   if (*q != '\0')
    *r++ = *q;
  }
  parselleft -= end - r;
  if (parselleft == 0)
   goto again;
  end = p + parselleft;
  *end = '\0';
  q = strchrnul(p, '\n');
 }
 if (q == end) {
  parsenleft = parselleft;
  parselleft = 0;
 } else {
  q++;
  parsenleft = q - parsenextc;
  parselleft -= parsenleft;
 }
 parsenleft--;

 savec = *q;
 *q = '\0';


 if (parsefile->fd == 0 && hist &&
     parsenextc[strspn(parsenextc, " \t\n")] != '\0') {
  HistEvent he;
  INTOFF;
  history(hist, &he, whichprompt == 1 ? H_ENTER : H_ADD,
      parsenextc);
  INTON;
 }


 if (vflag) {
  out2str(parsenextc);
  flushout(out2);
 }

 *q = savec;

 return *parsenextc++;
}
