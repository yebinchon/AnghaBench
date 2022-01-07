
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned char* unit_serial; } ;
struct se_device {TYPE_1__ t10_wwn; } ;


 int my_hex_to_bin (unsigned char) ;

__attribute__((used)) static void spc_parse_naa_6h_vendor_specific(struct se_device *dev,
  unsigned char *buf)
{
 unsigned char *p = &dev->t10_wwn.unit_serial[0];
 int cnt;
 bool next = 1;
 for (cnt = 0; *p && cnt < 13; p++) {
  int val = my_hex_to_bin(*p);

  if (val < 0)
   continue;

  if (next) {
   next = 0;
   buf[cnt++] |= val;
  } else {
   next = 1;
   buf[cnt] = val << 4;
  }
 }
}
