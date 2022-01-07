
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct carlfw {int dummy; } ;
struct carl9170fw_desc_head {int dummy; } ;


 int carlfw_desc_to_entry (struct carl9170fw_desc_head*) ;
 int carlfw_entry_del (struct carlfw*,int ) ;

void carlfw_desc_del(struct carlfw *fw,
 struct carl9170fw_desc_head *desc)
{
 carlfw_entry_del(fw, carlfw_desc_to_entry(desc));
}
