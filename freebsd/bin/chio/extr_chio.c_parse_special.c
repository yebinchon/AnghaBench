
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errx (int,char*,char*) ;
 int is_special (char*) ;

__attribute__((used)) static int
parse_special(char *cp)
{
 int val;

 val = is_special(cp);
 if (val)
  return (val);

 errx(1, "invalid modifier `%s'", cp);

}
