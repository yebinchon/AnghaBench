
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_cmd {int se_dev; } ;
struct iblock_dev {int ibd_bio_set; } ;
struct bio {struct se_cmd* bi_private; } ;


 struct iblock_dev* IBLOCK_DEV (int ) ;
 int bio_free (struct bio*,int ) ;

__attribute__((used)) static void iblock_bio_destructor(struct bio *bio)
{
 struct se_cmd *cmd = bio->bi_private;
 struct iblock_dev *ib_dev = IBLOCK_DEV(cmd->se_dev);

 bio_free(bio, ib_dev->ibd_bio_set);
}
