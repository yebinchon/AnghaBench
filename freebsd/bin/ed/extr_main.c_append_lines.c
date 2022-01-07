
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int t; } ;
typedef TYPE_1__ undo_t ;


 int EOF ;
 int ERR ;
 int SPL0 () ;
 int SPL1 () ;
 int UADD ;
 int clearerr (int ) ;
 long current_addr ;
 int get_addressed_line_node (long) ;
 int get_tty_line () ;
 char* ibuf ;
 char const* ibufp ;
 int isglobal ;
 int modified ;
 TYPE_1__* push_undo_stack (int ,long,long) ;
 char* put_sbuf_line (char const*) ;
 int stdin ;

int
append_lines(long n)
{
 int l;
 const char *lp = ibuf;
 const char *eot;
 undo_t *up = ((void*)0);

 for (current_addr = n;;) {
  if (!isglobal) {
   if ((l = get_tty_line()) < 0)
    return ERR;
   else if (l == 0 || ibuf[l - 1] != '\n') {
    clearerr(stdin);
    return l ? EOF : 0;
   }
   lp = ibuf;
  } else if (*(lp = ibufp) == '\0')
   return 0;
  else {
   while (*ibufp++ != '\n')
    ;
   l = ibufp - lp;
  }
  if (l == 2 && lp[0] == '.' && lp[1] == '\n') {
   return 0;
  }
  eot = lp + l;
  SPL1();
  do {
   if ((lp = put_sbuf_line(lp)) == ((void*)0)) {
    SPL0();
    return ERR;
   } else if (up)
    up->t = get_addressed_line_node(current_addr);
   else if ((up = push_undo_stack(UADD, current_addr,
       current_addr)) == ((void*)0)) {
    SPL0();
    return ERR;
   }
  } while (lp != eot);
  modified = 1;
  SPL0();
 }

}
