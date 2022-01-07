
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sysv_zone_t ;
struct buffer_head {int b_size; scalar_t__ b_data; } ;



__attribute__((used)) static inline sysv_zone_t *block_end(struct buffer_head *bh)
{
 return (sysv_zone_t*)((char*)bh->b_data + bh->b_size);
}
