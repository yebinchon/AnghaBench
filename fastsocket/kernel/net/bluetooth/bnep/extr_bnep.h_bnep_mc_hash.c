
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u8 ;


 int ETH_ALEN ;
 int crc32_be (int ,int *,int ) ;

__attribute__((used)) static inline int bnep_mc_hash(__u8 *addr)
{
 return (crc32_be(~0, addr, ETH_ALEN) >> 26);
}
