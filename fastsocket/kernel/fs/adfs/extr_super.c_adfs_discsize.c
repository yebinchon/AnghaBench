
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adfs_discrecord {int disc_size; int disc_size_high; } ;


 int le32_to_cpu (int ) ;

__attribute__((used)) static inline unsigned long adfs_discsize(struct adfs_discrecord *dr, int block_bits)
{
 unsigned long discsize;

 discsize = le32_to_cpu(dr->disc_size_high) << (32 - block_bits);
 discsize |= le32_to_cpu(dr->disc_size) >> block_bits;

 return discsize;
}
