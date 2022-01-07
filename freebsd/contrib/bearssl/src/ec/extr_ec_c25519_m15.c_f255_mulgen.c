
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int MM1 (int) ;
 int MM2 (int) ;
 int MUL15 (int,int) ;
 int mul20 (int*,int const*,int const*) ;
 int square20 (int*,int const*) ;

__attribute__((used)) static void
f255_mulgen(uint32_t *d, const uint32_t *a, const uint32_t *b, int square)
{
 uint32_t t[40], cc, w;






 if (square) {
  square20(t, a);
 } else {
  mul20(t, a, b);
 }
 cc = MUL15(t[19] >> 8, 19);
 t[19] &= 0xFF;







 do { w = t[0] + cc + MUL15(t[(0) + 20], 608); t[0] = w & 0x1FFF; cc = w >> 13; } while (0);
 do { w = t[1] + cc + MUL15(t[(1) + 20], 608); t[1] = w & 0x1FFF; cc = w >> 13; } while (0);
 do { w = t[2] + cc + MUL15(t[(2) + 20], 608); t[2] = w & 0x1FFF; cc = w >> 13; } while (0);
 do { w = t[3] + cc + MUL15(t[(3) + 20], 608); t[3] = w & 0x1FFF; cc = w >> 13; } while (0);
 do { w = t[4] + cc + MUL15(t[(4) + 20], 608); t[4] = w & 0x1FFF; cc = w >> 13; } while (0);
 do { w = t[5] + cc + MUL15(t[(5) + 20], 608); t[5] = w & 0x1FFF; cc = w >> 13; } while (0);
 do { w = t[6] + cc + MUL15(t[(6) + 20], 608); t[6] = w & 0x1FFF; cc = w >> 13; } while (0);
 do { w = t[7] + cc + MUL15(t[(7) + 20], 608); t[7] = w & 0x1FFF; cc = w >> 13; } while (0);
 do { w = t[8] + cc + MUL15(t[(8) + 20], 608); t[8] = w & 0x1FFF; cc = w >> 13; } while (0);
 do { w = t[9] + cc + MUL15(t[(9) + 20], 608); t[9] = w & 0x1FFF; cc = w >> 13; } while (0);
 do { w = t[10] + cc + MUL15(t[(10) + 20], 608); t[10] = w & 0x1FFF; cc = w >> 13; } while (0);
 do { w = t[11] + cc + MUL15(t[(11) + 20], 608); t[11] = w & 0x1FFF; cc = w >> 13; } while (0);
 do { w = t[12] + cc + MUL15(t[(12) + 20], 608); t[12] = w & 0x1FFF; cc = w >> 13; } while (0);
 do { w = t[13] + cc + MUL15(t[(13) + 20], 608); t[13] = w & 0x1FFF; cc = w >> 13; } while (0);
 do { w = t[14] + cc + MUL15(t[(14) + 20], 608); t[14] = w & 0x1FFF; cc = w >> 13; } while (0);
 do { w = t[15] + cc + MUL15(t[(15) + 20], 608); t[15] = w & 0x1FFF; cc = w >> 13; } while (0);
 do { w = t[16] + cc + MUL15(t[(16) + 20], 608); t[16] = w & 0x1FFF; cc = w >> 13; } while (0);
 do { w = t[17] + cc + MUL15(t[(17) + 20], 608); t[17] = w & 0x1FFF; cc = w >> 13; } while (0);
 do { w = t[18] + cc + MUL15(t[(18) + 20], 608); t[18] = w & 0x1FFF; cc = w >> 13; } while (0);
 do { w = t[19] + cc + MUL15(t[(19) + 20], 608); t[19] = w & 0x1FFF; cc = w >> 13; } while (0);



 cc = MUL15(w >> 8, 19);
 t[19] &= 0xFF;







 do { w = t[0] + cc; d[0] = w & 0x1FFF; cc = w >> 13; } while (0);
 do { w = t[1] + cc; d[1] = w & 0x1FFF; cc = w >> 13; } while (0);
 do { w = t[2] + cc; d[2] = w & 0x1FFF; cc = w >> 13; } while (0);
 do { w = t[3] + cc; d[3] = w & 0x1FFF; cc = w >> 13; } while (0);
 do { w = t[4] + cc; d[4] = w & 0x1FFF; cc = w >> 13; } while (0);
 do { w = t[5] + cc; d[5] = w & 0x1FFF; cc = w >> 13; } while (0);
 do { w = t[6] + cc; d[6] = w & 0x1FFF; cc = w >> 13; } while (0);
 do { w = t[7] + cc; d[7] = w & 0x1FFF; cc = w >> 13; } while (0);
 do { w = t[8] + cc; d[8] = w & 0x1FFF; cc = w >> 13; } while (0);
 do { w = t[9] + cc; d[9] = w & 0x1FFF; cc = w >> 13; } while (0);
 do { w = t[10] + cc; d[10] = w & 0x1FFF; cc = w >> 13; } while (0);
 do { w = t[11] + cc; d[11] = w & 0x1FFF; cc = w >> 13; } while (0);
 do { w = t[12] + cc; d[12] = w & 0x1FFF; cc = w >> 13; } while (0);
 do { w = t[13] + cc; d[13] = w & 0x1FFF; cc = w >> 13; } while (0);
 do { w = t[14] + cc; d[14] = w & 0x1FFF; cc = w >> 13; } while (0);
 do { w = t[15] + cc; d[15] = w & 0x1FFF; cc = w >> 13; } while (0);
 do { w = t[16] + cc; d[16] = w & 0x1FFF; cc = w >> 13; } while (0);
 do { w = t[17] + cc; d[17] = w & 0x1FFF; cc = w >> 13; } while (0);
 do { w = t[18] + cc; d[18] = w & 0x1FFF; cc = w >> 13; } while (0);
 do { w = t[19] + cc; d[19] = w & 0x1FFF; cc = w >> 13; } while (0);


}
