
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio_integrity_payload {int dummy; } ;
struct bio {int dummy; } ;
typedef int gfp_t ;


 struct bio_integrity_payload* bio_integrity_alloc_bioset (struct bio*,int ,unsigned int,int ) ;
 int fs_bio_set ;

struct bio_integrity_payload *bio_integrity_alloc(struct bio *bio,
        gfp_t gfp_mask,
        unsigned int nr_vecs)
{
 return bio_integrity_alloc_bioset(bio, gfp_mask, nr_vecs, fs_bio_set);
}
