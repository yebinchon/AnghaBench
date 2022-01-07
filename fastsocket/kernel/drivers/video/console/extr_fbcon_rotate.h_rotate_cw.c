
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int pattern_set_bit (int,int,int,char*) ;
 scalar_t__ pattern_test_bit (int,int,int,char const*) ;

__attribute__((used)) static inline void rotate_cw(const char *in, char *out, u32 width, u32 height)
{
 int i, j, h = height, w = width;
 int shift = (8 - (height % 8)) & 7;

 width = (width + 7) & ~7;
 height = (height + 7) & ~7;

 for (i = 0; i < h; i++) {
  for (j = 0; j < w; j++) {
   if (pattern_test_bit(j, i, width, in))
    pattern_set_bit(height - 1 - i - shift, j,
      height, out);

  }
 }
}
