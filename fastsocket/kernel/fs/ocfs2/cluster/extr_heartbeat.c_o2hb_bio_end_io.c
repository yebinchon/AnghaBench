
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct o2hb_bio_wait_ctxt {int wc_error; } ;
struct bio {struct o2hb_bio_wait_ctxt* bi_private; } ;


 int ML_ERROR ;
 int bio_put (struct bio*) ;
 int mlog (int ,char*,int) ;
 int o2hb_bio_wait_dec (struct o2hb_bio_wait_ctxt*,int) ;

__attribute__((used)) static void o2hb_bio_end_io(struct bio *bio,
      int error)
{
 struct o2hb_bio_wait_ctxt *wc = bio->bi_private;

 if (error) {
  mlog(ML_ERROR, "IO Error %d\n", error);
  wc->wc_error = error;
 }

 o2hb_bio_wait_dec(wc, 1);
 bio_put(bio);
}
