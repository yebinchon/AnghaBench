
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 scalar_t__ arg0 ;
 scalar_t__ commandname ;
 int doformat (int ,char const*,int ) ;
 int out2 ;
 int out2fmt_flush (char*) ;
 int outfmt (int ,char*,scalar_t__) ;

__attribute__((used)) static void
vwarning(const char *msg, va_list ap)
{
 if (commandname)
  outfmt(out2, "%s: ", commandname);
 else if (arg0)
  outfmt(out2, "%s: ", arg0);
 doformat(out2, msg, ap);
 out2fmt_flush("\n");
}
