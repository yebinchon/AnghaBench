
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct c67x00_sie {int sie_num; int dev; } ;


 int HUSB_SIE_pCurrentTDPtr (int ) ;
 int hpi_write_word (int ,int ,int ) ;

void c67x00_ll_husb_set_current_td(struct c67x00_sie *sie, u16 addr)
{
 hpi_write_word(sie->dev, HUSB_SIE_pCurrentTDPtr(sie->sie_num), addr);
}
