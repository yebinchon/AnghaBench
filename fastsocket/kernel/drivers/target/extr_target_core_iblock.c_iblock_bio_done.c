
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_cmd {struct iblock_req* priv; } ;
struct iblock_req {int ib_bio_err_cnt; } ;
struct bio {int bi_flags; struct se_cmd* bi_private; } ;


 int BIO_UPTODATE ;
 int EIO ;
 int atomic_inc (int *) ;
 int bio_put (struct bio*) ;
 int iblock_complete_cmd (struct se_cmd*) ;
 int pr_err (char*,struct bio*,int) ;
 int smp_mb__after_atomic_inc () ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void iblock_bio_done(struct bio *bio, int err)
{
 struct se_cmd *cmd = bio->bi_private;
 struct iblock_req *ibr = cmd->priv;




 if (!test_bit(BIO_UPTODATE, &bio->bi_flags) && !err)
  err = -EIO;

 if (err != 0) {
  pr_err("test_bit(BIO_UPTODATE) failed for bio: %p,"
   " err: %d\n", bio, err);



  atomic_inc(&ibr->ib_bio_err_cnt);
  smp_mb__after_atomic_inc();
 }

 bio_put(bio);

 iblock_complete_cmd(cmd);
}
