
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hd_struct {int dummy; } ;
struct device {int dummy; } ;


 struct hd_struct* dev_to_part (struct device*) ;
 int free_part_stats (struct hd_struct*) ;
 int kfree (struct hd_struct*) ;

__attribute__((used)) static void part_release(struct device *dev)
{
 struct hd_struct *p = dev_to_part(dev);
 free_part_stats(p);
 kfree(p);
}
