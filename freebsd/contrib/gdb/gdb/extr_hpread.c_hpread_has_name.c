
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum dntt_entry_type { ____Placeholder_dntt_entry_type } dntt_entry_type ;
__attribute__((used)) static int
hpread_has_name (enum dntt_entry_type kind)
{
  switch (kind)
    {
    case 140:
    case 148:
    case 161:
    case 172:
    case 168:
    case 157:
    case 155:
    case 164:
    case 137:
    case 170:
    case 173:
    case 133:
    case 136:
    case 151:
    case 166:
    case 142:
    case 178:
    case 150:
    case 171:
      return 1;

    case 179:
    case 169:
    case 146:
    case 167:
    case 141:
    case 180:
    case 139:
    case 132:
    case 131:
    case 165:
    case 160:
    case 138:
    case 129:
    case 174:
    case 175:
    case 128:
    case 153:
    case 176:
    case 143:
    case 145:
    case 144:
    case 177:
    case 158:
    case 130:
    case 152:
    case 156:
    case 163:
    case 162:
    case 149:
    case 147:
    case 135:
    case 134:
    case 159:
    case 154:






    default:
      return 0;
    }
}
