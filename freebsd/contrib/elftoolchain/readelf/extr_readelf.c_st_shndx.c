
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s_shndx ;




 unsigned int SHN_HIOS ;
 unsigned int SHN_HIPROC ;
 unsigned int SHN_LOOS ;
 unsigned int SHN_LOPROC ;

 int snprintf (char*,int,char*,unsigned int) ;

__attribute__((used)) static const char *
st_shndx(unsigned int shndx)
{
 static char s_shndx[32];

 switch (shndx) {
 case 128: return "UND";
 case 130: return "ABS";
 case 129: return "COM";
 default:
  if (shndx >= SHN_LOPROC && shndx <= SHN_HIPROC)
   return "PRC";
  else if (shndx >= SHN_LOOS && shndx <= SHN_HIOS)
   return "OS";
  else
   snprintf(s_shndx, sizeof(s_shndx), "%u", shndx);
  return (s_shndx);
 }
}
