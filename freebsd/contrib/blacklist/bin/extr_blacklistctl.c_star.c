
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int snprintf (char*,size_t,char*,int) ;

__attribute__((used)) static const char *
star(char *buf, size_t len, int val)
{
 if (val == -1)
  return "*";
 snprintf(buf, len, "%d", val);
 return buf;
}
