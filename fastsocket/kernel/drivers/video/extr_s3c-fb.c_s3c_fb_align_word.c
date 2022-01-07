
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ALIGN (unsigned int,int) ;

__attribute__((used)) static int s3c_fb_align_word(unsigned int bpp, unsigned int pix)
{
 int pix_per_word;

 if (bpp > 16)
  return pix;

 pix_per_word = (8 * 32) / bpp;
 return ALIGN(pix, pix_per_word);
}
