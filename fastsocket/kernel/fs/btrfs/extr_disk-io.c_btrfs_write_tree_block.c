
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct extent_buffer {scalar_t__ len; scalar_t__ start; TYPE_1__** pages; } ;
struct TYPE_2__ {int mapping; } ;


 int filemap_fdatawrite_range (int ,scalar_t__,scalar_t__) ;

int btrfs_write_tree_block(struct extent_buffer *buf)
{
 return filemap_fdatawrite_range(buf->pages[0]->mapping, buf->start,
     buf->start + buf->len - 1);
}
