
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct carlfw {unsigned int desc_list_len; } ;



unsigned int carlfw_get_descs_size(struct carlfw *fw)
{
 return fw->desc_list_len;
}
