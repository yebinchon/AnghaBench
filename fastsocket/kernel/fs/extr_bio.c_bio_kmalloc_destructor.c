
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio {int dummy; } ;


 scalar_t__ bio_integrity (struct bio*) ;
 int bio_integrity_free (struct bio*,int ) ;
 int fs_bio_set ;
 int kfree (struct bio*) ;

__attribute__((used)) static void bio_kmalloc_destructor(struct bio *bio)
{
 if (bio_integrity(bio))
  bio_integrity_free(bio, fs_bio_set);
 kfree(bio);
}
