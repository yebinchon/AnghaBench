
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int check_matrix_bitmap(unsigned char *bmap, int ich, int och, int num_outs)
{
 int idx = ich * num_outs + och;
 return bmap[idx >> 3] & (0x80 >> (idx & 7));
}
