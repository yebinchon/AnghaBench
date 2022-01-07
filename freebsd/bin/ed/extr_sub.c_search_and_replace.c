
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* t; } ;
typedef TYPE_1__ undo_t ;
typedef int pattern_t ;
typedef int line_t ;


 int ERR ;
 int GLB ;
 int GLS ;
 int GNP ;
 int GPR ;
 int SPL0 () ;
 int SPL1 () ;
 int UADD ;
 long current_addr ;
 scalar_t__ delete_lines (long,long) ;
 scalar_t__ display_lines (long,long,int) ;
 char* errmsg ;
 int first_addr ;
 void* get_addressed_line_node (long) ;
 TYPE_1__* push_undo_stack (int ,long,long) ;
 char* put_sbuf_line (char const*) ;
 char* rbuf ;
 int second_addr ;
 int substitute_matching_text (int *,int *,int,int) ;

int
search_and_replace(pattern_t *pat, int gflag, int kth)
{
 undo_t *up;
 const char *txt;
 const char *eot;
 long lc;
 long xa = current_addr;
 int nsubs = 0;
 line_t *lp;
 int len;

 current_addr = first_addr - 1;
 for (lc = 0; lc <= second_addr - first_addr; lc++) {
  lp = get_addressed_line_node(++current_addr);
  if ((len = substitute_matching_text(pat, lp, gflag, kth)) < 0)
   return ERR;
  else if (len) {
   up = ((void*)0);
   if (delete_lines(current_addr, current_addr) < 0)
    return ERR;
   txt = rbuf;
   eot = rbuf + len;
   SPL1();
   do {
    if ((txt = put_sbuf_line(txt)) == ((void*)0)) {
     SPL0();
     return ERR;
    } else if (up)
     up->t = get_addressed_line_node(current_addr);
    else if ((up = push_undo_stack(UADD,
        current_addr, current_addr)) == ((void*)0)) {
     SPL0();
     return ERR;
    }
   } while (txt != eot);
   SPL0();
   nsubs++;
   xa = current_addr;
  }
 }
 current_addr = xa;
 if (nsubs == 0 && !(gflag & GLB)) {
  errmsg = "no match";
  return ERR;
 } else if ((gflag & (GPR | GLS | GNP)) &&
     display_lines(current_addr, current_addr, gflag) < 0)
  return ERR;
 return 0;
}
