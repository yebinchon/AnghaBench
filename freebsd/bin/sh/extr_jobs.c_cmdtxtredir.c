
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int fd; int fname; } ;
struct TYPE_3__ {scalar_t__ dupfd; } ;
union node {scalar_t__ type; TYPE_2__ nfile; TYPE_1__ ndup; } ;


 scalar_t__ NFROMFD ;
 scalar_t__ NTOFD ;
 int cmdputs (char const*) ;
 int cmdtxt (int ) ;

__attribute__((used)) static void
cmdtxtredir(union node *n, const char *op, int deffd)
{
 char s[2];

 if (n->nfile.fd != deffd) {
  s[0] = n->nfile.fd + '0';
  s[1] = '\0';
  cmdputs(s);
 }
 cmdputs(op);
 if (n->type == NTOFD || n->type == NFROMFD) {
  if (n->ndup.dupfd >= 0)
   s[0] = n->ndup.dupfd + '0';
  else
   s[0] = '-';
  s[1] = '\0';
  cmdputs(s);
 } else {
  cmdtxt(n->nfile.fname);
 }
}
