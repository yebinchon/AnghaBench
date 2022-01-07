
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __le16 ;


 int BUG () ;
 unsigned int EXT4_MAX_REC_LEN ;
 int cpu_to_le16 (unsigned int) ;

__attribute__((used)) static inline __le16 ext4_rec_len_to_disk(unsigned len, unsigned blocksize)
{
 if ((len > blocksize) || (blocksize > (1 << 18)) || (len & 3))
  BUG();
 return cpu_to_le16(len);

}
