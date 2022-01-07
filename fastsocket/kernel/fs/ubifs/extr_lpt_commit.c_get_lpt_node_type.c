
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ubifs_info {int pcnt_bits; } ;


 int UBIFS_LPT_CRC_BYTES ;
 int UBIFS_LPT_TYPE_BITS ;
 int ubifs_unpack_bits (int **,int*,int ) ;

__attribute__((used)) static int get_lpt_node_type(const struct ubifs_info *c, uint8_t *buf,
        int *node_num)
{
 uint8_t *addr = buf + UBIFS_LPT_CRC_BYTES;
 int pos = 0, node_type;

 node_type = ubifs_unpack_bits(&addr, &pos, UBIFS_LPT_TYPE_BITS);
 *node_num = ubifs_unpack_bits(&addr, &pos, c->pcnt_bits);
 return node_type;
}
