
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scrub_dev {int curr; int in_flight; struct scrub_bio** bios; } ;
struct scrub_bio {int bio; } ;


 int READ ;
 int atomic_inc (int *) ;
 int btrfsic_submit_bio (int ,int ) ;

__attribute__((used)) static void scrub_submit(struct scrub_dev *sdev)
{
 struct scrub_bio *sbio;

 if (sdev->curr == -1)
  return;

 sbio = sdev->bios[sdev->curr];
 sdev->curr = -1;
 atomic_inc(&sdev->in_flight);

 btrfsic_submit_bio(READ, sbio->bio);
}
