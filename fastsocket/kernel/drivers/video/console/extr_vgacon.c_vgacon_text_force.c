
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ vgacon_text_mode_force ;

bool vgacon_text_force(void)
{
 return vgacon_text_mode_force ? 1 : 0;
}
