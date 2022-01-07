
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mdp_rect {int w; int h; } ;
struct mdp_img {int format; int width; } ;


 int IMG_LEN (int ,int ,int ,int) ;
 scalar_t__ IS_PSEUDOPLNR (int ) ;
 int Y_TO_CRCB_RATIO (int ) ;

__attribute__((used)) static void get_len(struct mdp_img *img, struct mdp_rect *rect, uint32_t bpp,
      uint32_t *len0, uint32_t *len1)
{
 *len0 = IMG_LEN(rect->h, img->width, rect->w, bpp);
 if (IS_PSEUDOPLNR(img->format))
  *len1 = *len0/Y_TO_CRCB_RATIO(img->format);
 else
  *len1 = 0;
}
