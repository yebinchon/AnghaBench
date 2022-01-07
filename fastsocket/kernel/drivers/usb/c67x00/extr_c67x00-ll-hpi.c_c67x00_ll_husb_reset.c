
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct c67x00_sie {int sie_num; struct c67x00_device* dev; } ;
struct c67x00_lcp_int_data {int* regs; } ;
struct c67x00_device {int dummy; } ;


 int BUG_ON (int) ;
 int HUSB_RESET_INT ;
 int c67x00_comm_exec_int (struct c67x00_device*,int ,struct c67x00_lcp_int_data*) ;

void c67x00_ll_husb_reset(struct c67x00_sie *sie, int port)
{
 struct c67x00_device *dev = sie->dev;
 struct c67x00_lcp_int_data data;
 int rc;

 data.regs[0] = 50;
 data.regs[1] = port | (sie->sie_num << 1);
 rc = c67x00_comm_exec_int(dev, HUSB_RESET_INT, &data);
 BUG_ON(rc);
}
