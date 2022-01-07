
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct c67x00_sie {int sie_num; int dev; } ;


 int HPI_IRQ_ROUTING_REG ;
 int SOFEOP_TO_HPI_EN (int ) ;
 int hpi_set_bits (int ,int ,int ) ;

void c67x00_ll_hpi_enable_sofeop(struct c67x00_sie *sie)
{
 hpi_set_bits(sie->dev, HPI_IRQ_ROUTING_REG,
       SOFEOP_TO_HPI_EN(sie->sie_num));
}
