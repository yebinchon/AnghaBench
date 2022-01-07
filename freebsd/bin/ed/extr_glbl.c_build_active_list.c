
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int pattern_t ;
struct TYPE_5__ {int len; struct TYPE_5__* q_forw; } ;
typedef TYPE_1__ line_t ;


 int ERR ;
 int NUL_TO_NEWLINE (char*,int ) ;
 int clear_active_list () ;
 char* errmsg ;
 long first_addr ;
 TYPE_1__* get_addressed_line_node (long) ;
 int * get_compiled_pattern () ;
 char* get_sbuf_line (TYPE_1__*) ;
 char* ibufp ;
 scalar_t__ isbinary ;
 int regexec (int *,char*,int ,int *,int ) ;
 long second_addr ;
 scalar_t__ set_active_node (TYPE_1__*) ;

int
build_active_list(int isgcmd)
{
 pattern_t *pat;
 line_t *lp;
 long n;
 char *s;
 char delimiter;

 if ((delimiter = *ibufp) == ' ' || delimiter == '\n') {
  errmsg = "invalid pattern delimiter";
  return ERR;
 } else if ((pat = get_compiled_pattern()) == ((void*)0))
  return ERR;
 else if (*ibufp == delimiter)
  ibufp++;
 clear_active_list();
 lp = get_addressed_line_node(first_addr);
 for (n = first_addr; n <= second_addr; n++, lp = lp->q_forw) {
  if ((s = get_sbuf_line(lp)) == ((void*)0))
   return ERR;
  if (isbinary)
   NUL_TO_NEWLINE(s, lp->len);
  if (!(regexec(pat, s, 0, ((void*)0), 0) == isgcmd) &&
      set_active_node(lp) < 0)
   return ERR;
 }
 return 0;
}
