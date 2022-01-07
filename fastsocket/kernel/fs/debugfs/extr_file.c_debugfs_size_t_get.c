
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u64 ;



__attribute__((used)) static int debugfs_size_t_get(void *data, u64 *val)
{
 *val = *(size_t *)data;
 return 0;
}
