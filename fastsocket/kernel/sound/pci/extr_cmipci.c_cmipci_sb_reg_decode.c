
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmipci_sb_reg {unsigned long left_reg; unsigned long right_reg; unsigned long left_shift; unsigned long right_shift; unsigned long invert; unsigned long stereo; unsigned long mask; } ;



__attribute__((used)) static void cmipci_sb_reg_decode(struct cmipci_sb_reg *r, unsigned long val)
{
 r->left_reg = val & 0xff;
 r->right_reg = (val >> 8) & 0xff;
 r->left_shift = (val >> 16) & 0x07;
 r->right_shift = (val >> 19) & 0x07;
 r->invert = (val >> 22) & 1;
 r->stereo = (val >> 23) & 1;
 r->mask = (val >> 24) & 0xff;
}
