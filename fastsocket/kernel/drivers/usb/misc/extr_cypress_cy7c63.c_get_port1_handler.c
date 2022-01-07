
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int CYPRESS_READ_PORT_ID1 ;
 int read_port (struct device*,struct device_attribute*,char*,int,int ) ;

__attribute__((used)) static ssize_t get_port1_handler(struct device *dev,
     struct device_attribute *attr, char *buf)
{
 return read_port(dev, attr, buf, 1, CYPRESS_READ_PORT_ID1);
}
