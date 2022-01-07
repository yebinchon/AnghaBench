
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 unsigned long long PAGE_ALIGN (unsigned long long) ;
 unsigned long long RESOURCE_MAX ;
 unsigned long long memparse (char*,char**) ;
 unsigned long long simple_strtoull (char const*,char**,int) ;

int res_counter_memparse_write_strategy(const char *buf,
     unsigned long long *res)
{
 char *end;


 if (*buf == '-') {
  *res = simple_strtoull(buf + 1, &end, 10);
  if (*res != 1 || *end != '\0')
   return -EINVAL;
  *res = RESOURCE_MAX;
  return 0;
 }


 *res = memparse((char *)buf, &end);
 if (*end != '\0')
  return -EINVAL;

 *res = PAGE_ALIGN(*res);
 return 0;
}
