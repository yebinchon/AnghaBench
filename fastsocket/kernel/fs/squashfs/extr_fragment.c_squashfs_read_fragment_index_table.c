
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
 unsigned int SQUASHFS_FRAGMENT_INDEX_BYTES (unsigned int) ;
 int kfree (int *) ;
 int * kmalloc (unsigned int,int ) ;
 int squashfs_read_table (struct super_block*,int *,int ,unsigned int) ;

__le64 *squashfs_read_fragment_index_table(struct super_block *sb,
 u64 fragment_table_start, unsigned int fragments)
{
 unsigned int length = SQUASHFS_FRAGMENT_INDEX_BYTES(fragments);
 __le64 *fragment_index;
 int err;


 fragment_index = kmalloc(length, GFP_KERNEL);
 if (fragment_index == ((void*)0)) {
  ERROR("Failed to allocate fragment index table\n");
  return ERR_PTR(-ENOMEM);
 }

 err = squashfs_read_table(sb, fragment_index, fragment_table_start,
   length);
 if (err < 0) {
  ERROR("unable to read fragment index table\n");
  kfree(fragment_index);
  return ERR_PTR(err);
 }

 return fragment_index;
}
