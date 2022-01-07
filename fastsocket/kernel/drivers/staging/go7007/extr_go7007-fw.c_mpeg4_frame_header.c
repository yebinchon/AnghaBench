
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct go7007 {int width; int height; } ;
typedef enum mpeg_frame_type { ____Placeholder_mpeg_frame_type } mpeg_frame_type ;






 int CODE_ADD (int ,int,int) ;
 int CODE_GEN (int ,unsigned char*) ;
 int CODE_LENGTH (int ) ;

 int c ;
 int vti_bitlen (struct go7007*) ;

__attribute__((used)) static int mpeg4_frame_header(struct go7007 *go, unsigned char *buf,
  int modulo, enum mpeg_frame_type frame)
{
 int i;
 CODE_GEN(c, buf + 6);
 int mb_count = (go->width >> 4) * (go->height >> 4);

 CODE_ADD(c, frame == 128 ? 0x1 : 0x2, 2);
 if (modulo)
  CODE_ADD(c, 0x1, 1);
 CODE_ADD(c, 0x1, 2);
 CODE_ADD(c, 0, vti_bitlen(go));
 CODE_ADD(c, 0x3, 2);
 if (frame == 128)
  CODE_ADD(c, 0, 1);
 CODE_ADD(c, 0xc, 11);
 if (frame != 128)
  CODE_ADD(c, 0x4, 3);
 if (frame != 131) {
  for (i = 0; i < mb_count; ++i) {
   switch (frame) {
   case 128:
    CODE_ADD(c, 0x1, 1);
    break;
   case 129:
    CODE_ADD(c, 0x47, 8);
    break;
   case 130:
    CODE_ADD(c, 0x27, 7);
    break;
   case 132:
    CODE_ADD(c, 0x5f, 8);
    break;
   case 131:
    break;
   }
  }
 }


 i = 8 - (CODE_LENGTH(c) % 8);
 CODE_ADD(c, 0, 1);
 CODE_ADD(c, (1 << (i - 1)) - 1, i - 1);

 i = CODE_LENGTH(c) + 4 * 8;
 buf[0] = i & 0xff;
 buf[1] = i >> 8;
 buf[2] = 0x00;
 buf[3] = 0x00;
 buf[4] = 0x01;
 buf[5] = 0xb6;
 return i;
}
