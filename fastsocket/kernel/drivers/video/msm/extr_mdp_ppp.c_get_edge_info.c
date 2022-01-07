
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static void get_edge_info(uint32_t src, uint32_t src_coord, uint32_t dst,
     uint32_t *interp1, uint32_t *interp2,
     uint32_t *repeat1, uint32_t *repeat2) {
 if (src > 3 * dst) {
  *interp1 = 0;
  *interp2 = src - 1;
  *repeat1 = 0;
  *repeat2 = 0;
 } else if (src == 3 * dst) {
  *interp1 = 0;
  *interp2 = src;
  *repeat1 = 0;
  *repeat2 = 1;
 } else if (src > dst && src < 3 * dst) {
  *interp1 = -1;
  *interp2 = src;
  *repeat1 = 1;
  *repeat2 = 1;
 } else if (src == dst) {
  *interp1 = -1;
  *interp2 = src + 1;
  *repeat1 = 1;
  *repeat2 = 2;
 } else {
  *interp1 = -2;
  *interp2 = src + 1;
  *repeat1 = 2;
  *repeat2 = 2;
 }
 *interp1 += src_coord;
 *interp2 += src_coord;
}
