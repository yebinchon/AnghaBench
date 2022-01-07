
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int len; } ;
struct ubifs_data_node {int size; int compr_type; int data; TYPE_1__ ch; } ;


 int ENOMEM ;
 int GFP_NOFS ;
 int UBIFS_BLOCK_SIZE ;
 int UBIFS_DATA_NODE_SZ ;
 int WORST_COMPR_FACTOR ;
 int cpu_to_le16 (int) ;
 int cpu_to_le32 (int) ;
 int kfree (void*) ;
 void* kmalloc (int,int ) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int ubifs_assert (int) ;
 int ubifs_compress (void*,int,int *,int*,int*) ;
 int ubifs_decompress (int *,int,void*,int*,int) ;

__attribute__((used)) static int recomp_data_node(struct ubifs_data_node *dn, int *new_len)
{
 void *buf;
 int err, len, compr_type, out_len;

 out_len = le32_to_cpu(dn->size);
 buf = kmalloc(out_len * WORST_COMPR_FACTOR, GFP_NOFS);
 if (!buf)
  return -ENOMEM;

 len = le32_to_cpu(dn->ch.len) - UBIFS_DATA_NODE_SZ;
 compr_type = le16_to_cpu(dn->compr_type);
 err = ubifs_decompress(&dn->data, len, buf, &out_len, compr_type);
 if (err)
  goto out;

 ubifs_compress(buf, *new_len, &dn->data, &out_len, &compr_type);
 ubifs_assert(out_len <= UBIFS_BLOCK_SIZE);
 dn->compr_type = cpu_to_le16(compr_type);
 dn->size = cpu_to_le32(*new_len);
 *new_len = UBIFS_DATA_NODE_SZ + out_len;
out:
 kfree(buf);
 return err;
}
