
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsg_dev {int ref; } ;
struct device {int dummy; } ;


 struct fsg_dev* dev_get_drvdata (struct device*) ;
 int fsg_release ;
 int kref_put (int *,int ) ;

__attribute__((used)) static void lun_release(struct device *dev)
{
 struct fsg_dev *fsg = dev_get_drvdata(dev);

 kref_put(&fsg->ref, fsg_release);
}
