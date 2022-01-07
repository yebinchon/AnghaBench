
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int16_t ;


 int errx (int,char*,char*) ;
 scalar_t__ strtol (char*,char**,int) ;

__attribute__((used)) static u_int16_t
parse_element_unit(char *cp)
{
 int i;
 char *p;

 i = (int)strtol(cp, &p, 10);
 if ((i < 0) || (*p != '\0'))
  errx(1, "invalid unit number `%s'", cp);

 return ((u_int16_t)i);
}
