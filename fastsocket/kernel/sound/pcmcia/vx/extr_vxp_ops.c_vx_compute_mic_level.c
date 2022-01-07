
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int vx_compute_mic_level(int level)
{
 switch (level) {
 case 5: level = 6 ; break;
 case 6: level = 8 ; break;
 case 7: level = 11; break;
 case 8: level = 15; break;
 default: break ;
 }
 return level;
}
