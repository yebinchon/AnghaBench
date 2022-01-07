
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __le16 ;


 int BUG_ON (int) ;
 unsigned int EXT2_MAX_REC_LEN ;
 int cpu_to_le16 (unsigned int) ;

__attribute__((used)) static inline __le16 ext2_rec_len_to_disk(unsigned len)
{






 return cpu_to_le16(len);
}
