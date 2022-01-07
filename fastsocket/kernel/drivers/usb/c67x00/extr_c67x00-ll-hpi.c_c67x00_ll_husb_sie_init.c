
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct c67x00_sie {int sie_num; struct c67x00_device* dev; } ;
struct c67x00_lcp_int_data {int dummy; } ;
struct c67x00_device {int dummy; } ;


 int BUG_ON (int) ;
 int HUSB_SIE_INIT_INT (int ) ;
 int c67x00_comm_exec_int (struct c67x00_device*,int ,struct c67x00_lcp_int_data*) ;

__attribute__((used)) static inline void c67x00_ll_husb_sie_init(struct c67x00_sie *sie)
{
 struct c67x00_device *dev = sie->dev;
 struct c67x00_lcp_int_data data;
 int rc;

 rc = c67x00_comm_exec_int(dev, HUSB_SIE_INIT_INT(sie->sie_num), &data);
 BUG_ON(rc);
}
