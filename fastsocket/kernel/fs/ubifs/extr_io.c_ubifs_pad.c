
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ubifs_pad_node {void* pad_len; } ;
struct ubifs_info {int dummy; } ;
struct ubifs_ch {void* crc; void* len; scalar_t__ sqnum; scalar_t__* padding; int group_type; int node_type; void* magic; } ;


 int UBIFS_CRC32_INIT ;
 int UBIFS_NODE_MAGIC ;
 int UBIFS_NO_NODE_GROUP ;
 int UBIFS_PADDING_BYTE ;
 int UBIFS_PAD_NODE ;
 int UBIFS_PAD_NODE_SZ ;
 void* cpu_to_le32 (int) ;
 int crc32 (int ,void*,int) ;
 int memset (void*,int ,int) ;
 int ubifs_assert (int) ;

void ubifs_pad(const struct ubifs_info *c, void *buf, int pad)
{
 uint32_t crc;

 ubifs_assert(pad >= 0 && !(pad & 7));

 if (pad >= UBIFS_PAD_NODE_SZ) {
  struct ubifs_ch *ch = buf;
  struct ubifs_pad_node *pad_node = buf;

  ch->magic = cpu_to_le32(UBIFS_NODE_MAGIC);
  ch->node_type = UBIFS_PAD_NODE;
  ch->group_type = UBIFS_NO_NODE_GROUP;
  ch->padding[0] = ch->padding[1] = 0;
  ch->sqnum = 0;
  ch->len = cpu_to_le32(UBIFS_PAD_NODE_SZ);
  pad -= UBIFS_PAD_NODE_SZ;
  pad_node->pad_len = cpu_to_le32(pad);
  crc = crc32(UBIFS_CRC32_INIT, buf + 8, UBIFS_PAD_NODE_SZ - 8);
  ch->crc = cpu_to_le32(crc);
  memset(buf + UBIFS_PAD_NODE_SZ, 0, pad);
 } else if (pad > 0)

  memset(buf, UBIFS_PADDING_BYTE, pad);
}
