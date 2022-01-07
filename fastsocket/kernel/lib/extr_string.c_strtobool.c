
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;

int strtobool(const char *s, bool *res)
{
 switch (s[0]) {
 case 'y':
 case 'Y':
 case '1':
  *res = 1;
  break;
 case 'n':
 case 'N':
 case '0':
  *res = 0;
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
