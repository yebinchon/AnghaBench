
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct super_block {int dummy; } ;
typedef int __le64 ;


 int ENOMEM ;
 int ERROR (char*) ;
 int * ERR_PTR (int) ;
 int GFP_KERNEL ;
 unsigned int SQUASHFS_ID_BLOCK_BYTES (unsigned short) ;
 int TRACE (char*,unsigned int) ;
 int kfree (int *) ;
 int * kmalloc (unsigned int,int ) ;
 int squashfs_read_table (struct super_block*,int *,int ,unsigned int) ;

__le64 *squashfs_read_id_index_table(struct super_block *sb,
   u64 id_table_start, unsigned short no_ids)
{
 unsigned int length = SQUASHFS_ID_BLOCK_BYTES(no_ids);
 __le64 *id_table;
 int err;

 TRACE("In read_id_index_table, length %d\n", length);


 id_table = kmalloc(length, GFP_KERNEL);
 if (id_table == ((void*)0)) {
  ERROR("Failed to allocate id index table\n");
  return ERR_PTR(-ENOMEM);
 }

 err = squashfs_read_table(sb, id_table, id_table_start, length);
 if (err < 0) {
  ERROR("unable to read id index table\n");
  kfree(id_table);
  return ERR_PTR(err);
 }

 return id_table;
}
