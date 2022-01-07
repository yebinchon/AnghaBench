
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct io_ctl {int size; struct btrfs_free_space_entry* cur; int index; } ;
struct btrfs_free_space_entry {int type; int bytes; int offset; } ;
struct btrfs_free_space {void* bytes; void* offset; } ;


 int io_ctl_check_crc (struct io_ctl*,int ) ;
 int io_ctl_unmap_page (struct io_ctl*) ;
 void* le64_to_cpu (int ) ;

__attribute__((used)) static int io_ctl_read_entry(struct io_ctl *io_ctl,
       struct btrfs_free_space *entry, u8 *type)
{
 struct btrfs_free_space_entry *e;
 int ret;

 if (!io_ctl->cur) {
  ret = io_ctl_check_crc(io_ctl, io_ctl->index);
  if (ret)
   return ret;
 }

 e = io_ctl->cur;
 entry->offset = le64_to_cpu(e->offset);
 entry->bytes = le64_to_cpu(e->bytes);
 *type = e->type;
 io_ctl->cur += sizeof(struct btrfs_free_space_entry);
 io_ctl->size -= sizeof(struct btrfs_free_space_entry);

 if (io_ctl->size >= sizeof(struct btrfs_free_space_entry))
  return 0;

 io_ctl_unmap_page(io_ctl);

 return 0;
}
