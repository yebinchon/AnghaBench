
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int pattern_t ;
struct TYPE_4__ {int len; } ;
typedef TYPE_1__ line_t ;


 long DEC_MOD (long,int ) ;
 long ERR ;
 long INC_MOD (long,int ) ;
 int NUL_TO_NEWLINE (char*,int ) ;
 int addr_last ;
 long current_addr ;
 char* errmsg ;
 TYPE_1__* get_addressed_line_node (long) ;
 char* get_sbuf_line (TYPE_1__*) ;
 scalar_t__ isbinary ;
 int regexec (int *,char*,int ,int *,int ) ;

long
get_matching_node_addr(pattern_t *pat, int dir)
{
 char *s;
 long n = current_addr;
 line_t *lp;

 if (!pat) return ERR;
 do {
        if ((n = dir ? INC_MOD(n, addr_last) : DEC_MOD(n, addr_last))) {
   lp = get_addressed_line_node(n);
   if ((s = get_sbuf_line(lp)) == ((void*)0))
    return ERR;
   if (isbinary)
    NUL_TO_NEWLINE(s, lp->len);
   if (!regexec(pat, s, 0, ((void*)0), 0))
    return n;
        }
 } while (n != current_addr);
 errmsg = "no match";
 return ERR;
}
