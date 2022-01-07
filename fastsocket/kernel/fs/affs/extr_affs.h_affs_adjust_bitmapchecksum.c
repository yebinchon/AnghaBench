
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct buffer_head {scalar_t__ b_data; } ;
typedef int __be32 ;


 scalar_t__ be32_to_cpu (int ) ;
 int cpu_to_be32 (scalar_t__) ;

__attribute__((used)) static inline void
affs_adjust_bitmapchecksum(struct buffer_head *bh, u32 val)
{
 u32 tmp = be32_to_cpu(((__be32 *)bh->b_data)[0]);
 ((__be32 *)bh->b_data)[0] = cpu_to_be32(tmp - val);
}
