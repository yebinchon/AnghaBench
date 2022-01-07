
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int TRUE ;
 int _ (char*) ;
 int warn (int ) ;

__attribute__((used)) static int
guess_is_rela (unsigned long e_machine)
{
  switch (e_machine)
    {

    case 207:
    case 206:
    case 199:
    case 196:
    case 181:
    case 190:
    case 179:
    case 165:
    case 164:
    case 186:
    case 153:
    case 152:
    case 146:
      return FALSE;


    case 201:
    case 200:
    case 198:
    case 197:
    case 195:
    case 194:
    case 193:
    case 192:
    case 191:
    case 180:
    case 189:
    case 178:
    case 188:
    case 187:
    case 176:
    case 175:
    case 174:
    case 173:
    case 172:
    case 171:
    case 170:
    case 169:
    case 168:
    case 167:
    case 185:
    case 162:
    case 161:
    case 184:
    case 160:
    case 183:
    case 159:
    case 158:
    case 157:
    case 154:
    case 149:
    case 150:
    case 148:
    case 147:
    case 145:
    case 144:
    case 143:
    case 142:
    case 141:
    case 133:
    case 182:
    case 132:
    case 131:
    case 130:
    case 129:
    case 128:
      return TRUE;

    case 205:
    case 204:
    case 203:
    case 202:
    case 177:
    case 166:
    case 163:
    case 156:
    case 155:
    case 151:
    case 140:
    case 139:
    case 138:
    case 137:
    case 136:
    case 135:
    case 134:
    default:
      warn (_("Don't know about relocations on this machine architecture\n"));
      return FALSE;
    }
}
