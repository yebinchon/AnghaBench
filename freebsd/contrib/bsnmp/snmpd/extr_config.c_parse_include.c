
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char TOK_STR ;
 int _POSIX2_LINE_MAX ;
 char gettoken () ;
 int input_open_file (char*,int) ;
 int report (char*,...) ;
 int strcpy (char*,int ) ;
 int strval ;
 char token ;

__attribute__((used)) static void
parse_include(void)
{
 int sysdir = 0;
 char fname[_POSIX2_LINE_MAX];

 if (gettoken() == '<') {
  sysdir = 1;
  if (gettoken() != TOK_STR)
   report("expecting filename after in .include");
 } else if (token != TOK_STR)
  report("expecting filename after in .include");

 strcpy(fname, strval);
 if (sysdir && gettoken() != '>')
  report("expecting '>'");
 gettoken();
 if (input_open_file(fname, sysdir) == -1)
  report("%s: %m", fname);
}
