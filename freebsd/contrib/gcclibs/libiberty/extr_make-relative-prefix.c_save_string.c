
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ malloc (int) ;
 int memcpy (char*,char const*,int) ;

__attribute__((used)) static char *
save_string (const char *s, int len)
{
  char *result = (char *) malloc (len + 1);

  memcpy (result, s, len);
  result[len] = 0;
  return result;
}
