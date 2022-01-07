
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct c67x00_device {int dummy; } ;


 int SIEMSG_REG (int) ;
 int hpi_read_word (struct c67x00_device*,int ) ;
 int hpi_write_word (struct c67x00_device*,int ,int ) ;

u16 c67x00_ll_fetch_siemsg(struct c67x00_device *dev, int sie_num)
{
 u16 val;

 val = hpi_read_word(dev, SIEMSG_REG(sie_num));

 hpi_write_word(dev, SIEMSG_REG(sie_num), 0);

 return val;
}
