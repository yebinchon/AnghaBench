
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio {int dummy; } ;


 int bio_free (struct bio*,int ) ;
 int fs_bio_set ;

__attribute__((used)) static void bio_fs_destructor(struct bio *bio)
{
 bio_free(bio, fs_bio_set);
}
