
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_conn {int* features; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct hci_conn* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int,int,int,int,int,int,int,int) ;

__attribute__((used)) static ssize_t show_link_features(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct hci_conn *conn = dev_get_drvdata(dev);

 return sprintf(buf, "0x%02x%02x%02x%02x%02x%02x%02x%02x\n",
    conn->features[0], conn->features[1],
    conn->features[2], conn->features[3],
    conn->features[4], conn->features[5],
    conn->features[6], conn->features[7]);
}
