
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct cmd_list_element {int dummy; } ;
struct TYPE_5__ {char* fastmap; } ;
typedef TYPE_1__ regex_t ;


 int REG_ICASE ;
 int apropos_cmd (int ,struct cmd_list_element*,TYPE_1__*,char*) ;
 int error (char*,...) ;
 int gdb_stdout ;
 int re_compile_fastmap (TYPE_1__*) ;
 scalar_t__ regcomp (TYPE_1__*,char*,int ) ;
 int regerror (scalar_t__,int *,char*,int) ;
 char* xcalloc (int,int) ;
 int xfree (char*) ;

void
apropos_command (char *searchstr, int from_tty)
{
  extern struct cmd_list_element *cmdlist;
  regex_t pattern;
  char *pattern_fastmap;
  char errorbuffer[512];
  pattern_fastmap = xcalloc (256, sizeof (char));
  if (searchstr == ((void*)0))
      error("REGEXP string is empty");

  if (regcomp(&pattern,searchstr,REG_ICASE) == 0)
    {
      pattern.fastmap=pattern_fastmap;
      re_compile_fastmap(&pattern);
      apropos_cmd (gdb_stdout,cmdlist,&pattern,"");
    }
  else
    {
      regerror(regcomp(&pattern,searchstr,REG_ICASE),((void*)0),errorbuffer,512);
      error("Error in regular expression:%s",errorbuffer);
    }
  xfree (pattern_fastmap);
}
