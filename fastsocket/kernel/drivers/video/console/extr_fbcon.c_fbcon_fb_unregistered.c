
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {int node; } ;


 int FB_MAX ;
 int* con2fb_map ;
 int fb_con ;
 int first_fb_vc ;
 int info_idx ;
 int last_fb_vc ;
 int num_registered_fb ;
 int primary_device ;
 int ** registered_fb ;
 int unregister_con_driver (int *) ;

__attribute__((used)) static int fbcon_fb_unregistered(struct fb_info *info)
{
 int i, idx;

 idx = info->node;
 for (i = first_fb_vc; i <= last_fb_vc; i++) {
  if (con2fb_map[i] == idx)
   con2fb_map[i] = -1;
 }

 if (idx == info_idx) {
  info_idx = -1;

  for (i = 0; i < FB_MAX; i++) {
   if (registered_fb[i] != ((void*)0)) {
    info_idx = i;
    break;
   }
  }
 }

 if (info_idx != -1) {
  for (i = first_fb_vc; i <= last_fb_vc; i++) {
   if (con2fb_map[i] == -1)
    con2fb_map[i] = info_idx;
  }
 }

 if (primary_device == idx)
  primary_device = -1;

 if (!num_registered_fb)
  unregister_con_driver(&fb_con);

 return 0;
}
