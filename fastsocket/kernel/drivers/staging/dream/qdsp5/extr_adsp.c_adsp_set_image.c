
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct adsp_info {int dummy; } ;


 int current_image ;

void adsp_set_image(struct adsp_info *info, uint32_t image)
{
 current_image = image;
}
