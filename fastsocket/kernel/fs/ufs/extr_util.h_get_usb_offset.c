
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__** bh; } ;
struct ufs_sb_private_info {unsigned int s_fshift; unsigned int s_fmask; TYPE_2__ s_ubh; } ;
struct TYPE_3__ {void* b_data; } ;



__attribute__((used)) static inline void *get_usb_offset(struct ufs_sb_private_info *uspi,
       unsigned int offset)
{
 unsigned int index;

 index = offset >> uspi->s_fshift;
 offset &= ~uspi->s_fmask;
 return uspi->s_ubh.bh[index]->b_data + offset;
}
