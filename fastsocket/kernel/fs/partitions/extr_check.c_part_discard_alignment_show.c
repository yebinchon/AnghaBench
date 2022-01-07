
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hd_struct {int discard_alignment; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct hd_struct* dev_to_part (struct device*) ;
 int sprintf (char*,char*,int) ;

ssize_t part_discard_alignment_show(struct device *dev,
       struct device_attribute *attr, char *buf)
{
 struct hd_struct *p = dev_to_part(dev);
 return sprintf(buf, "%u\n", p->discard_alignment);
}
