
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int boolean_t ;



__attribute__((used)) static boolean_t
ztest_pattern_match(void *buf, uint64_t size, uint64_t value)
{
 uint64_t *ip = buf;
 uint64_t *ip_end = (uint64_t *)((uintptr_t)buf + (uintptr_t)size);
 uint64_t diff = 0;

 while (ip < ip_end)
  diff |= (value - *ip++);

 return (diff == 0);
}
