
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline void pscsi_clear_cdb_lun(unsigned char *cdb)
{
 switch (cdb[0]) {
 case 135:
 case 134:
 case 133:
 case 132:
 case 131:
 case 130:
 case 129:
 case 128:
 case 136:
  break;
 default:
  cdb[1] &= 0x1f;
  break;
 }
}
