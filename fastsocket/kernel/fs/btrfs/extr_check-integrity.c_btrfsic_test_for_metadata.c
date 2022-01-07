
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef char u8 ;
typedef int u32 ;
struct btrfsic_state {unsigned int metablock_size; int csum_size; TYPE_2__* root; } ;
struct btrfs_header {char* fsid; int csum; } ;
struct TYPE_4__ {TYPE_1__* fs_info; } ;
struct TYPE_3__ {int fsid; } ;


 int BTRFS_CSUM_SIZE ;
 int BTRFS_UUID_SIZE ;
 unsigned int PAGE_CACHE_SHIFT ;
 unsigned int PAGE_CACHE_SIZE ;
 int btrfs_csum_final (int ,char*) ;
 int crc32c (int ,char*,size_t) ;
 scalar_t__ memcmp (char*,int ,int ) ;

__attribute__((used)) static int btrfsic_test_for_metadata(struct btrfsic_state *state,
         char **datav, unsigned int num_pages)
{
 struct btrfs_header *h;
 u8 csum[BTRFS_CSUM_SIZE];
 u32 crc = ~(u32)0;
 unsigned int i;

 if (num_pages * PAGE_CACHE_SIZE < state->metablock_size)
  return 1;
 num_pages = state->metablock_size >> PAGE_CACHE_SHIFT;
 h = (struct btrfs_header *)datav[0];

 if (memcmp(h->fsid, state->root->fs_info->fsid, BTRFS_UUID_SIZE))
  return 1;

 for (i = 0; i < num_pages; i++) {
  u8 *data = i ? datav[i] : (datav[i] + BTRFS_CSUM_SIZE);
  size_t sublen = i ? PAGE_CACHE_SIZE :
        (PAGE_CACHE_SIZE - BTRFS_CSUM_SIZE);

  crc = crc32c(crc, data, sublen);
 }
 btrfs_csum_final(crc, csum);
 if (memcmp(csum, h->csum, state->csum_size))
  return 1;

 return 0;
}
