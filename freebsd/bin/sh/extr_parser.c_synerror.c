
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* arg0 ;
 scalar_t__ commandname ;
 int error (char*) ;
 int out2 ;
 int outfmt (int ,char*,char const*,...) ;
 int startlinno ;

__attribute__((used)) static void
synerror(const char *msg)
{
 if (commandname)
  outfmt(out2, "%s: %d: ", commandname, startlinno);
 else if (arg0)
  outfmt(out2, "%s: ", arg0);
 outfmt(out2, "Syntax error: %s\n", msg);
 error((char *)((void*)0));
}
