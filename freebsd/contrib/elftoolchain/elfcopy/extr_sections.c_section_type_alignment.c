
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ELFCLASS64 ;
__attribute__((used)) static int
section_type_alignment(int sht, int class)
{
 switch (sht)
 {
 case 150:
 case 149:
 case 148:
 case 147:
 case 143:
 case 140:
 case 138:
 case 137:
 case 129:
  return (class == ELFCLASS64 ? 8 : 4);
 case 134:
  return (8);
 case 146:
 case 145:
 case 144:
 case 141:
 case 132:
 case 131:
 case 128:
  return (4);
 case 133:
 case 130:
  return (2);
 case 142:
 case 139:
 case 136:
 case 135:
  return (1);
 }
 return (1);
}
