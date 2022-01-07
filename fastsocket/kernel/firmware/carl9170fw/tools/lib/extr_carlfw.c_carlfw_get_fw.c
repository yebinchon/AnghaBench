
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t len; void* data; } ;
struct carlfw {TYPE_1__ fw; } ;



void *carlfw_get_fw(struct carlfw *fw, size_t *len)
{
 *len = fw->fw.len;
 return fw->fw.data;
}
