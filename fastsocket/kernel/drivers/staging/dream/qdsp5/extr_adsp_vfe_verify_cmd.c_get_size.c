
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static uint32_t get_size(uint32_t hw)
{
 uint32_t height, width;
 uint32_t height_mask = 0x3ffc;
 uint32_t width_mask = 0x3ffc000;

 height = (hw & height_mask) >> 2;
 width = (hw & width_mask) >> 14 ;
 return height * width;
}
