
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t10_pr_registration {int pr_res_type; } ;
struct se_device {int dev_reservation_lock; struct t10_pr_registration* dev_pr_res_holder; } ;
typedef int ssize_t ;


 char* core_scsi3_pr_dump_type (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static ssize_t target_core_dev_pr_show_attr_res_pr_type(
  struct se_device *dev, char *page)
{
 struct t10_pr_registration *pr_reg;
 ssize_t len = 0;

 spin_lock(&dev->dev_reservation_lock);
 pr_reg = dev->dev_pr_res_holder;
 if (pr_reg) {
  len = sprintf(page, "SPC-3 Reservation Type: %s\n",
   core_scsi3_pr_dump_type(pr_reg->pr_res_type));
 } else {
  len = sprintf(page, "No SPC-3 Reservation holder\n");
 }

 spin_unlock(&dev->dev_reservation_lock);
 return len;
}
