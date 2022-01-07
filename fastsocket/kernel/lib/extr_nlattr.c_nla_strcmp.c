
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;


 int memcmp (int ,char const*,int) ;
 int nla_data (struct nlattr const*) ;
 int nla_len (struct nlattr const*) ;
 int strlen (char const*) ;

int nla_strcmp(const struct nlattr *nla, const char *str)
{
 int len = strlen(str) + 1;
 int d = nla_len(nla) - len;

 if (d == 0)
  d = memcmp(nla_data(nla), str, len);

 return d;
}
