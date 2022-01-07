
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct worddest {int dummy; } ;


 int BASESYNTAX ;
 int DQSYNTAX ;
 int EXP_CASE ;
 int EXP_GLOB ;
 int EXP_SPLIT ;
 int STPUTS (char const*,int ) ;
 int STPUTS_QUOTES (char const*,int ,int ) ;
 int STPUTS_SPLIT (char const*,int ,int,int ,struct worddest*) ;
 int VSLENGTH ;
 int VSTRIMLEFT ;
 int VSTRIMLEFTMAX ;
 int VSTRIMRIGHT ;
 int VSTRIMRIGHTMAX ;
 int expdest ;

__attribute__((used)) static void
strtodest(const char *p, int flag, int subtype, int quoted,
    struct worddest *dst)
{
 if (subtype == VSLENGTH || subtype == VSTRIMLEFT ||
     subtype == VSTRIMLEFTMAX || subtype == VSTRIMRIGHT ||
     subtype == VSTRIMRIGHTMAX)
  STPUTS(p, expdest);
 else if (flag & EXP_SPLIT && !quoted && dst != ((void*)0))
  STPUTS_SPLIT(p, BASESYNTAX, flag, expdest, dst);
 else if (flag & (EXP_GLOB | EXP_CASE))
  STPUTS_QUOTES(p, quoted ? DQSYNTAX : BASESYNTAX, expdest);
 else
  STPUTS(p, expdest);
}
