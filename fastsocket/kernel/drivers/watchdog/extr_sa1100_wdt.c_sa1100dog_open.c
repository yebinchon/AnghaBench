
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int EBUSY ;
 int OIER ;
 int OIER_E3 ;
 scalar_t__ OSCR ;
 scalar_t__ OSMR3 ;
 int OSSR ;
 int OSSR_M3 ;
 int OWER ;
 int OWER_WME ;
 int nonseekable_open (struct inode*,struct file*) ;
 scalar_t__ pre_margin ;
 int sa1100wdt_users ;
 scalar_t__ test_and_set_bit (int,int *) ;

__attribute__((used)) static int sa1100dog_open(struct inode *inode, struct file *file)
{
 if (test_and_set_bit(1, &sa1100wdt_users))
  return -EBUSY;


 OSMR3 = OSCR + pre_margin;
 OSSR = OSSR_M3;
 OWER = OWER_WME;
 OIER |= OIER_E3;
 return nonseekable_open(inode, file);
}
