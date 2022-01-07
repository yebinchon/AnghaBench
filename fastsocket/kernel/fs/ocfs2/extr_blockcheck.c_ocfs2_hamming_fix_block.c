
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ocfs2_hamming_fix (void*,unsigned int,int ,unsigned int) ;

void ocfs2_hamming_fix_block(void *data, unsigned int blocksize,
        unsigned int fix)
{
 ocfs2_hamming_fix(data, blocksize * 8, 0, fix);
}
