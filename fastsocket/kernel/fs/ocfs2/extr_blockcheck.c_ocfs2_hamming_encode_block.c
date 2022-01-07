
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ocfs2_hamming_encode (int ,void*,unsigned int,int ) ;

u32 ocfs2_hamming_encode_block(void *data, unsigned int blocksize)
{
 return ocfs2_hamming_encode(0, data, blocksize * 8, 0);
}
