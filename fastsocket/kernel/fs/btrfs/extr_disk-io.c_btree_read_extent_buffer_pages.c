
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct extent_io_tree {int dummy; } ;
struct extent_buffer {int read_mirror; int len; int start; int bflags; } ;
struct btrfs_root {TYPE_1__* fs_info; } ;
struct TYPE_4__ {struct extent_io_tree io_tree; } ;
struct TYPE_3__ {int mapping_tree; int btree_inode; } ;


 TYPE_2__* BTRFS_I (int ) ;
 int EXTENT_BUFFER_CORRUPT ;
 int WAIT_COMPLETE ;
 int btree_get_extent ;
 int btrfs_num_copies (int *,int ,int ) ;
 int clear_bit (int ,int *) ;
 int read_extent_buffer_pages (struct extent_io_tree*,struct extent_buffer*,int ,int ,int ,int) ;
 int repair_eb_io_failure (struct btrfs_root*,struct extent_buffer*,int) ;
 scalar_t__ test_bit (int ,int *) ;
 int verify_parent_transid (struct extent_io_tree*,struct extent_buffer*,int ,int ) ;

__attribute__((used)) static int btree_read_extent_buffer_pages(struct btrfs_root *root,
       struct extent_buffer *eb,
       u64 start, u64 parent_transid)
{
 struct extent_io_tree *io_tree;
 int failed = 0;
 int ret;
 int num_copies = 0;
 int mirror_num = 0;
 int failed_mirror = 0;

 clear_bit(EXTENT_BUFFER_CORRUPT, &eb->bflags);
 io_tree = &BTRFS_I(root->fs_info->btree_inode)->io_tree;
 while (1) {
  ret = read_extent_buffer_pages(io_tree, eb, start,
            WAIT_COMPLETE,
            btree_get_extent, mirror_num);
  if (!ret && !verify_parent_transid(io_tree, eb,
         parent_transid, 0))
   break;






  if (test_bit(EXTENT_BUFFER_CORRUPT, &eb->bflags))
   break;

  num_copies = btrfs_num_copies(&root->fs_info->mapping_tree,
           eb->start, eb->len);
  if (num_copies == 1)
   break;

  if (!failed_mirror) {
   failed = 1;
   failed_mirror = eb->read_mirror;
  }

  mirror_num++;
  if (mirror_num == failed_mirror)
   mirror_num++;

  if (mirror_num > num_copies)
   break;
 }

 if (failed && !ret)
  repair_eb_io_failure(root, eb, failed_mirror);

 return ret;
}
