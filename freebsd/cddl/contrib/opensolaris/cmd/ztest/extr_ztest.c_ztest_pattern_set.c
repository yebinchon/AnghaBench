
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;



__attribute__((used)) static void
ztest_pattern_set(void *buf, uint64_t size, uint64_t value)
{
 uint64_t *ip = buf;
 uint64_t *ip_end = (uint64_t *)((uintptr_t)buf + (uintptr_t)size);

 while (ip < ip_end)
  *ip++ = value;
}
