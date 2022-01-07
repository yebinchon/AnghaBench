
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct class {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 unsigned long beacon_timeout_ms ;
 int sscanf (char const*,char*,unsigned long*) ;

__attribute__((used)) static
ssize_t beacon_timeout_ms_store(struct class *class,
    const char *buf, size_t size)
{
 unsigned long bt;
 ssize_t result;
 result = sscanf(buf, "%lu", &bt);
 if (result != 1)
  return -EINVAL;
 beacon_timeout_ms = bt;
 return size;
}
