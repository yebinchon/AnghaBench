
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int snprintf (char*,size_t,char*,int) ;

__attribute__((used)) static const char *
conf_num(char *b, size_t l, int n)
{
 switch (n) {
 case 128:
  return "*";
 case 129:
  return "=";
 default:
  snprintf(b, l, "%d", n);
  return b;
 }
}
