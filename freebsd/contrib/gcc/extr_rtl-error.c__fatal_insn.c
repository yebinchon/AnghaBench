
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int _ (char const*) ;
 int debug_rtx (int ) ;
 int error (char*,int ) ;
 int errorcount ;
 int fancy_abort (char const*,int,char const*) ;

void
_fatal_insn (const char *msgid, rtx insn, const char *file, int line,
      const char *function)
{
  error ("%s", _(msgid));



  errorcount--;

  debug_rtx (insn);
  fancy_abort (file, line, function);
}
