
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fd; } ;
union node {TYPE_1__ nfile; int type; } ;
struct nhere {int dummy; } ;
struct nfile {int dummy; } ;
struct heredoc {int striptabs; union node* here; } ;


 int NAPPEND ;
 int NCLOBBER ;
 int NFROM ;
 int NFROMFD ;
 int NFROMTO ;
 int NHERE ;
 int NTO ;
 int NTOFD ;
 int digit_val (char) ;
 struct heredoc* heredoc ;
 int pgetc_linecont () ;
 int pungetc () ;
 union node* redirnode ;
 scalar_t__ stalloc (int) ;

__attribute__((used)) static void
parseredir(char *out, int c)
{
 char fd = *out;
 union node *np;

 np = (union node *)stalloc(sizeof (struct nfile));
 if (c == '>') {
  np->nfile.fd = 1;
  c = pgetc_linecont();
  if (c == '>')
   np->type = NAPPEND;
  else if (c == '&')
   np->type = NTOFD;
  else if (c == '|')
   np->type = NCLOBBER;
  else {
   np->type = NTO;
   pungetc();
  }
 } else {
  np->nfile.fd = 0;
  c = pgetc_linecont();
  if (c == '<') {
   if (sizeof (struct nfile) != sizeof (struct nhere)) {
    np = (union node *)stalloc(sizeof (struct nhere));
    np->nfile.fd = 0;
   }
   np->type = NHERE;
   heredoc = (struct heredoc *)stalloc(sizeof (struct heredoc));
   heredoc->here = np;
   if ((c = pgetc_linecont()) == '-') {
    heredoc->striptabs = 1;
   } else {
    heredoc->striptabs = 0;
    pungetc();
   }
  } else if (c == '&')
   np->type = NFROMFD;
  else if (c == '>')
   np->type = NFROMTO;
  else {
   np->type = NFROM;
   pungetc();
  }
 }
 if (fd != '\0')
  np->nfile.fd = digit_val(fd);
 redirnode = np;
}
