
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int line_t ;


 long ERR ;
 int REALLOC (char*,int,int,long) ;
 int clear_undo_stack () ;
 int clearerr (int ) ;
 int current_addr ;
 int display_lines (int ,int ,int) ;
 char* errmsg ;
 int exec_command () ;
 int extract_addr_range () ;
 char* get_extended_line (int*,int ) ;
 int get_line_node_addr (int *) ;
 int get_tty_line () ;
 char* ibuf ;
 char* ibufp ;
 int memcpy (char*,char*,int) ;
 int * next_active_node () ;
 int stdin ;
 int strcmp (char*,char*) ;

long
exec_global(int interact, int gflag)
{
 static char *ocmd = ((void*)0);
 static int ocmdsz = 0;

 line_t *lp = ((void*)0);
 int status;
 int n;
 char *cmd = ((void*)0);
 if (!interact && (cmd = get_extended_line(&n, 0)) == ((void*)0))
  return ERR;

 clear_undo_stack();
 while ((lp = next_active_node()) != ((void*)0)) {
  if ((current_addr = get_line_node_addr(lp)) < 0)
   return ERR;
  if (interact) {

   if (display_lines(current_addr, current_addr, gflag) < 0)
    return ERR;
   while ((n = get_tty_line()) > 0 &&
       ibuf[n - 1] != '\n')
    clearerr(stdin);
   if (n < 0)
    return ERR;
   else if (n == 0) {
    errmsg = "unexpected end-of-file";
    return ERR;
   } else if (n == 1 && !strcmp(ibuf, "\n"))
    continue;
   else if (n == 2 && !strcmp(ibuf, "&\n")) {
    if (cmd == ((void*)0)) {
     errmsg = "no previous command";
     return ERR;
    } else cmd = ocmd;
   } else if ((cmd = get_extended_line(&n, 0)) == ((void*)0))
    return ERR;
   else {
    REALLOC(ocmd, ocmdsz, n + 1, ERR);
    memcpy(ocmd, cmd, n + 1);
    cmd = ocmd;
   }

  }
  ibufp = cmd;
  for (; *ibufp;)
   if ((status = extract_addr_range()) < 0 ||
       (status = exec_command()) < 0 ||
       (status > 0 && (status = display_lines(
       current_addr, current_addr, status)) < 0))
    return status;
 }
 return 0;
}
