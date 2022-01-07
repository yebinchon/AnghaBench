
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct inode {int dummy; } ;
struct bio {int dummy; } ;


 int btree_csum_one_bio (struct bio*) ;

__attribute__((used)) static int __btree_submit_bio_start(struct inode *inode, int rw,
        struct bio *bio, int mirror_num,
        unsigned long bio_flags,
        u64 bio_offset)
{




 return btree_csum_one_bio(bio);
}
