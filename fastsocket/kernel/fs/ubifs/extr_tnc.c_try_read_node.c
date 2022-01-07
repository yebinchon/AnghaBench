
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint32_t ;
struct ubifs_info {scalar_t__ no_chk_data_crc; int always_chk_crc; int ubi; } ;
struct ubifs_ch {int node_type; int crc; int len; int magic; } ;


 int UBIFS_CRC32_INIT ;
 int UBIFS_DATA_NODE ;
 void* UBIFS_NODE_MAGIC ;
 void* crc32 (int ,void*,int) ;
 int dbg_io (char*,int,int,int ,int) ;
 int dbg_ntype (int) ;
 void* le32_to_cpu (int ) ;
 int ubi_read (int ,int,void*,int,int) ;
 int ubifs_err (char*,int,int,int,int) ;

__attribute__((used)) static int try_read_node(const struct ubifs_info *c, void *buf, int type,
    int len, int lnum, int offs)
{
 int err, node_len;
 struct ubifs_ch *ch = buf;
 uint32_t crc, node_crc;

 dbg_io("LEB %d:%d, %s, length %d", lnum, offs, dbg_ntype(type), len);

 err = ubi_read(c->ubi, lnum, buf, offs, len);
 if (err) {
  ubifs_err("cannot read node type %d from LEB %d:%d, error %d",
     type, lnum, offs, err);
  return err;
 }

 if (le32_to_cpu(ch->magic) != UBIFS_NODE_MAGIC)
  return 0;

 if (ch->node_type != type)
  return 0;

 node_len = le32_to_cpu(ch->len);
 if (node_len != len)
  return 0;

 if (type == UBIFS_DATA_NODE && !c->always_chk_crc && c->no_chk_data_crc)
  return 1;

 crc = crc32(UBIFS_CRC32_INIT, buf + 8, node_len - 8);
 node_crc = le32_to_cpu(ch->crc);
 if (crc != node_crc)
  return 0;

 return 1;
}
