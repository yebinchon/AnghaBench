
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG () ;





 int S_IFMT ;


 int UBIFS_ITYPE_BLK ;
 int UBIFS_ITYPE_CHR ;
 int UBIFS_ITYPE_DIR ;
 int UBIFS_ITYPE_FIFO ;
 int UBIFS_ITYPE_LNK ;
 int UBIFS_ITYPE_REG ;
 int UBIFS_ITYPE_SOCK ;

__attribute__((used)) static int get_dent_type(int mode)
{
 switch (mode & S_IFMT) {
 case 129:
  return UBIFS_ITYPE_REG;
 case 132:
  return UBIFS_ITYPE_DIR;
 case 130:
  return UBIFS_ITYPE_LNK;
 case 134:
  return UBIFS_ITYPE_BLK;
 case 133:
  return UBIFS_ITYPE_CHR;
 case 131:
  return UBIFS_ITYPE_FIFO;
 case 128:
  return UBIFS_ITYPE_SOCK;
 default:
  BUG();
 }
 return 0;
}
