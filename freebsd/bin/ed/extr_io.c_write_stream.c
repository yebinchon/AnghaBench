
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int len; struct TYPE_4__* q_forw; } ;
typedef TYPE_1__ line_t ;
typedef int FILE ;


 long ERR ;
 long addr_last ;
 TYPE_1__* get_addressed_line_node (long) ;
 char* get_sbuf_line (TYPE_1__*) ;
 int isbinary ;
 int newline_added ;
 scalar_t__ put_stream_line (int *,char*,int) ;

long
write_stream(FILE *fp, long n, long m)
{
 line_t *lp = get_addressed_line_node(n);
 unsigned long size = 0;
 char *s;
 int len;

 for (; n && n <= m; n++, lp = lp->q_forw) {
  if ((s = get_sbuf_line(lp)) == ((void*)0))
   return ERR;
  len = lp->len;
  if (n != addr_last || !isbinary || !newline_added)
   s[len++] = '\n';
  if (put_stream_line(fp, s, len) < 0)
   return ERR;
  size += len;
 }
 return size;
}
