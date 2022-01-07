
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;



__attribute__((used)) static int debugfs_u8_get(void *data, u64 *val)
{
 *val = *(u8 *)data;
 return 0;
}
