
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regex {int len; int pattern; } ;


 scalar_t__ strncmp (char*,int ,int ) ;

__attribute__((used)) static int regex_match_front(char *str, struct regex *r, int len)
{
 if (strncmp(str, r->pattern, r->len) == 0)
  return 1;
 return 0;
}
