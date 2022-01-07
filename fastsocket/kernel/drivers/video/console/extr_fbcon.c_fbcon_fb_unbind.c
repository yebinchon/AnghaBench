
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* con2fb_map ;
 int fbcon_has_console_bind ;
 int fbcon_unbind () ;
 int first_fb_vc ;
 int last_fb_vc ;
 int set_con2fb_map (int,int,int ) ;

__attribute__((used)) static int fbcon_fb_unbind(int idx)
{
 int i, new_idx = -1, ret = 0;

 if (!fbcon_has_console_bind)
  return 0;

 for (i = first_fb_vc; i <= last_fb_vc; i++) {
  if (con2fb_map[i] != idx &&
      con2fb_map[i] != -1) {
   new_idx = i;
   break;
  }
 }

 if (new_idx != -1) {
  for (i = first_fb_vc; i <= last_fb_vc; i++) {
   if (con2fb_map[i] == idx)
    set_con2fb_map(i, new_idx, 0);
  }
 } else
  ret = fbcon_unbind();

 return ret;
}
