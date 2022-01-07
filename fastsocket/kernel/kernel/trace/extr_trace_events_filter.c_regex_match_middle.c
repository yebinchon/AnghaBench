
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regex {int pattern; } ;


 scalar_t__ strnstr (char*,int ,int) ;

__attribute__((used)) static int regex_match_middle(char *str, struct regex *r, int len)
{
 if (strnstr(str, r->pattern, len))
  return 1;
 return 0;
}
