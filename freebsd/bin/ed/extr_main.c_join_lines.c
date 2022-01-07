
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int len; struct TYPE_4__* q_forw; } ;
typedef TYPE_1__ line_t ;


 int ERR ;
 long INC_MOD (long,int ) ;
 int REALLOC (char*,int,int,int) ;
 int SPL0 () ;
 int SPL1 () ;
 int UADD ;
 int addr_last ;
 long current_addr ;
 scalar_t__ delete_lines (long,long) ;
 TYPE_1__* get_addressed_line_node (long) ;
 char* get_sbuf_line (TYPE_1__*) ;
 int memcpy (char*,char*,int) ;
 int modified ;
 int * push_undo_stack (int ,long,long) ;
 int * put_sbuf_line (char*) ;

int
join_lines(long from, long to)
{
 static char *buf = ((void*)0);
 static int n;

 char *s;
 int size = 0;
 line_t *bp, *ep;

 ep = get_addressed_line_node(INC_MOD(to, addr_last));
 bp = get_addressed_line_node(from);
 for (; bp != ep; bp = bp->q_forw) {
  if ((s = get_sbuf_line(bp)) == ((void*)0))
   return ERR;
  REALLOC(buf, n, size + bp->len, ERR);
  memcpy(buf + size, s, bp->len);
  size += bp->len;
 }
 REALLOC(buf, n, size + 2, ERR);
 memcpy(buf + size, "\n", 2);
 if (delete_lines(from, to) < 0)
  return ERR;
 current_addr = from - 1;
 SPL1();
 if (put_sbuf_line(buf) == ((void*)0) ||
     push_undo_stack(UADD, current_addr, current_addr) == ((void*)0)) {
  SPL0();
  return ERR;
 }
 modified = 1;
 SPL0();
 return 0;
}
