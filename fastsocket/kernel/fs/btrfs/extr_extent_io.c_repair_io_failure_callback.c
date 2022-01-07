
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio {int bi_private; } ;


 int complete (int ) ;

__attribute__((used)) static void repair_io_failure_callback(struct bio *bio, int err)
{
 complete(bio->bi_private);
}
