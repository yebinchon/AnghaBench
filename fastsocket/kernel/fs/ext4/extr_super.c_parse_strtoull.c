
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int kstrtoull (int ,int ,unsigned long long*) ;
 int skip_spaces (char const*) ;

__attribute__((used)) static int parse_strtoull(const char *buf,
  unsigned long long max, unsigned long long *value)
{
 int ret;

 ret = kstrtoull(skip_spaces(buf), 0, value);
 if (!ret && *value > max)
  ret = -EINVAL;
 return ret;
}
