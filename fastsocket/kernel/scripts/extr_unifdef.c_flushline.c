
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int complement ;
 scalar_t__ delcount ;
 int exitstat ;
 int fputs (int ,int ) ;
 int linenum ;
 scalar_t__ lnblank ;
 scalar_t__ lnnum ;
 int printf (char*,int) ;
 int putc (char,int ) ;
 int stdout ;
 scalar_t__ symlist ;
 int tline ;

__attribute__((used)) static void
flushline(bool keep)
{
 if (symlist)
  return;
 if (keep ^ complement) {
  if (lnnum && delcount > 0)
   printf("#line %d\n", linenum);
  fputs(tline, stdout);
  delcount = 0;
 } else {
  if (lnblank)
   putc('\n', stdout);
  exitstat = 1;
  delcount += 1;
 }
}
