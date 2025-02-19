
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef union ubifs_key {int dummy; } ubifs_key ;
struct ubifs_info {int dummy; } ;
struct TYPE_5__ {int len; int sqnum; } ;
struct ubifs_data_node {int compr_type; int data; TYPE_2__ ch; int size; } ;
struct inode {int i_ino; TYPE_1__* i_sb; } ;
struct TYPE_6__ {scalar_t__ creat_sqnum; } ;
struct TYPE_4__ {struct ubifs_info* s_fs_info; } ;


 int EINVAL ;
 int ENOENT ;
 int UBIFS_BLOCK_SIZE ;
 void* UBIFS_DATA_NODE_SZ ;
 int data_key_init (struct ubifs_info*,union ubifs_key*,int ,unsigned int) ;
 int dbg_dump_node (struct ubifs_info*,struct ubifs_data_node*) ;
 int le16_to_cpu (int ) ;
 void* le32_to_cpu (int ) ;
 scalar_t__ le64_to_cpu (int ) ;
 int memset (void*,int ,int) ;
 int ubifs_assert (int) ;
 int ubifs_decompress (int *,unsigned int,void*,int*,int ) ;
 int ubifs_err (char*,unsigned int,int ) ;
 TYPE_3__* ubifs_inode (struct inode*) ;
 int ubifs_tnc_lookup (struct ubifs_info*,union ubifs_key*,struct ubifs_data_node*) ;

__attribute__((used)) static int read_block(struct inode *inode, void *addr, unsigned int block,
        struct ubifs_data_node *dn)
{
 struct ubifs_info *c = inode->i_sb->s_fs_info;
 int err, len, out_len;
 union ubifs_key key;
 unsigned int dlen;

 data_key_init(c, &key, inode->i_ino, block);
 err = ubifs_tnc_lookup(c, &key, dn);
 if (err) {
  if (err == -ENOENT)

   memset(addr, 0, UBIFS_BLOCK_SIZE);
  return err;
 }

 ubifs_assert(le64_to_cpu(dn->ch.sqnum) >
       ubifs_inode(inode)->creat_sqnum);
 len = le32_to_cpu(dn->size);
 if (len <= 0 || len > UBIFS_BLOCK_SIZE)
  goto dump;

 dlen = le32_to_cpu(dn->ch.len) - UBIFS_DATA_NODE_SZ;
 out_len = UBIFS_BLOCK_SIZE;
 err = ubifs_decompress(&dn->data, dlen, addr, &out_len,
          le16_to_cpu(dn->compr_type));
 if (err || len != out_len)
  goto dump;






 if (len < UBIFS_BLOCK_SIZE)
  memset(addr + len, 0, UBIFS_BLOCK_SIZE - len);

 return 0;

dump:
 ubifs_err("bad data node (block %u, inode %lu)",
    block, inode->i_ino);
 dbg_dump_node(c, dn);
 return -EINVAL;
}
