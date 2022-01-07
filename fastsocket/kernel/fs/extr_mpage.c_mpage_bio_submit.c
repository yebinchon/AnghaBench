
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio {int bi_end_io; } ;


 int WRITE ;
 int mpage_end_io_read ;
 int mpage_end_io_write ;
 int submit_bio (int,struct bio*) ;

__attribute__((used)) static struct bio *mpage_bio_submit(int rw, struct bio *bio)
{
 bio->bi_end_io = mpage_end_io_read;
 if (rw == WRITE)
  bio->bi_end_io = mpage_end_io_write;
 submit_bio(rw, bio);
 return ((void*)0);
}
