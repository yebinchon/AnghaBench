
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int ELF_T_ADDR ;
 int ELF_T_BYTE ;
 int ELF_T_DYN ;
 int ELF_T_GNUHASH ;
 int ELF_T_HALF ;
 int ELF_T_MOVE ;
 int ELF_T_NOTE ;
 int ELF_T_REL ;
 int ELF_T_RELA ;
 int ELF_T_SYM ;
 int ELF_T_SYMINFO ;
 int ELF_T_VDEF ;
 int ELF_T_VNEED ;
 int ELF_T_WORD ;







 int SHT_HIUSER ;

 int SHT_LOOS ;
int
_libelf_xlate_shtype(uint32_t sht)
{



 switch (sht) {
 case 150:
  return (ELF_T_DYN);
 case 149:
  return (ELF_T_SYM);
 case 148:
  return (ELF_T_ADDR);
 case 147:
  return (ELF_T_GNUHASH);
 case 146:
  return (ELF_T_WORD);
 case 145:
  return (ELF_T_WORD);
 case 144:
  return (ELF_T_WORD);
 case 143:
  return (ELF_T_ADDR);
 case 142:
  return (ELF_T_BYTE);
 case 141:
  return (ELF_T_NOTE);
 case 140:
  return (ELF_T_ADDR);
 case 139:
  return (ELF_T_BYTE);
 case 138:
  return (ELF_T_REL);
 case 137:
  return (ELF_T_RELA);
 case 136:
  return (ELF_T_BYTE);
 case 129:
  return (ELF_T_SYM);
 case 128:
  return (ELF_T_WORD);
 case 135:
  return (ELF_T_BYTE);
 case 134:
  return (ELF_T_MOVE);
 case 133:
  return (ELF_T_SYMINFO);
 case 132:
  return (ELF_T_VDEF);
 case 131:
  return (ELF_T_VNEED);
 case 130:
  return (ELF_T_HALF);
 default:






  if (sht >= SHT_LOOS && sht <= SHT_HIUSER)
   return (ELF_T_BYTE);




  return (-1);
 }
}
