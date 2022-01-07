
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAKETYPEID (int,int) ;
 int expected (char*,char*,char*) ;
 scalar_t__ isdigit (char) ;
 char* number (char*,int*) ;

__attribute__((used)) static char *
id(char *cp, int *h)
{
 int n1, n2;

 if (*cp == '(') {
  cp++;
  cp = number(cp, &n1);
  if (*cp++ != ',')
   expected("id", ",", cp - 1);
  cp = number(cp, &n2);
  if (*cp++ != ')')
   expected("id", ")", cp - 1);
  *h = MAKETYPEID(n1, n2);
 } else if (isdigit(*cp)) {
  cp = number(cp, &n1);
  *h = n1;
 } else {
  expected("id", "(/0-9", cp);
 }
 return (cp);
}
