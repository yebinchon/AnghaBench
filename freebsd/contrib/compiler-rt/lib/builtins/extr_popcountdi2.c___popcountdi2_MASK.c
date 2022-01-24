#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int su_int ;
typedef  int si_int ;
typedef  int du_int ;
typedef  int /*<<< orphan*/  di_int ;

/* Variables and functions */

si_int FUNC0(di_int a) {
  du_int x2 = (du_int)a;
  x2 = x2 - ((x2 >> 1) & 0x5555555555555555uLL);
  // Every 2 bits holds the sum of every pair of bits (32)
  x2 = ((x2 >> 2) & 0x3333333333333333uLL) + (x2 & 0x3333333333333333uLL);
  // Every 4 bits holds the sum of every 4-set of bits (3 significant bits) (16)
  x2 = (x2 + (x2 >> 4)) & 0x0F0F0F0F0F0F0F0FuLL;
  // Every 8 bits holds the sum of every 8-set of bits (4 significant bits) (8)
  su_int x = (su_int)(x2 + (x2 >> 32));
  // The lower 32 bits hold four 16 bit sums (5 significant bits).
  //   Upper 32 bits are garbage
  x = x + (x >> 16);
  // The lower 16 bits hold two 32 bit sums (6 significant bits).
  //   Upper 16 bits are garbage
  return (x + (x >> 8)) & 0x0000007F; // (7 significant bits)
}