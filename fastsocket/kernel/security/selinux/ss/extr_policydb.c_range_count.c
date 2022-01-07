
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int range_count(void *key, void *data, void *ptr)
{
 int *cnt = ptr;
 *cnt = *cnt + 1;

 return 0;
}
