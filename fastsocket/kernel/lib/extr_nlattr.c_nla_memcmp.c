
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;


 int memcmp (int ,void const*,size_t) ;
 int nla_data (struct nlattr const*) ;
 size_t nla_len (struct nlattr const*) ;

int nla_memcmp(const struct nlattr *nla, const void *data,
        size_t size)
{
 int d = nla_len(nla) - size;

 if (d == 0)
  d = memcmp(nla_data(nla), data, size);

 return d;
}
