
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_conn {int type; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct hci_conn* dev_get_drvdata (struct device*) ;
 char* link_typetostr (int ) ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t show_link_type(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct hci_conn *conn = dev_get_drvdata(dev);
 return sprintf(buf, "%s\n", link_typetostr(conn->type));
}
