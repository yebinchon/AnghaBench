
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STADJUST (int,char const*) ;
 char const* expdest ;

__attribute__((used)) static void
recordleft(const char *str, const char *loc, char *startp)
{
 int amount;

 amount = ((str - 1) - (loc - startp)) - expdest;
 STADJUST(amount, expdest);
 while (loc != str - 1)
  *startp++ = *loc++;
}
