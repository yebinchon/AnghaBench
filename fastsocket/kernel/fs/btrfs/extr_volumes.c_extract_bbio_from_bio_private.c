
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_bio {int dummy; } ;



__attribute__((used)) static struct btrfs_bio *extract_bbio_from_bio_private(void *bi_private)
{
 return (struct btrfs_bio *)(((uintptr_t)bi_private) & ~((uintptr_t)3));
}
