
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct isp1301 {TYPE_1__* client; int working; int work; int todo; } ;
struct TYPE_2__ {int dev; } ;


 int dev_vdbg (int *,char*,int) ;
 int get_device (int *) ;
 int schedule_work (int *) ;
 int test_and_set_bit (int,int *) ;

__attribute__((used)) static void isp1301_defer_work(struct isp1301 *isp, int work)
{
 int status;

 if (isp && !test_and_set_bit(work, &isp->todo)) {
  (void) get_device(&isp->client->dev);
  status = schedule_work(&isp->work);
  if (!status && !isp->working)
   dev_vdbg(&isp->client->dev,
    "work item %d may be lost\n", work);
 }
}
