
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio {int dummy; } ;


 int BUG_ON (int) ;
 scalar_t__ WRITE ;
 scalar_t__ bio_data_dir (struct bio*) ;
 int bio_integrity_tag (struct bio*,void*,unsigned int,int) ;

int bio_integrity_set_tag(struct bio *bio, void *tag_buf, unsigned int len)
{
 BUG_ON(bio_data_dir(bio) != WRITE);

 return bio_integrity_tag(bio, tag_buf, len, 1);
}
