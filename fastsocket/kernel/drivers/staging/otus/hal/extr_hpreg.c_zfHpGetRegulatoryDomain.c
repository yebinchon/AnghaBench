
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u8_t ;
struct TYPE_3__ {int regionCode; } ;
struct TYPE_4__ {TYPE_1__ regulationTable; } ;
 TYPE_2__* wd ;
 int zmw_get_wlan_dev (int *) ;

u8_t zfHpGetRegulatoryDomain(zdev_t* dev)
{
    zmw_get_wlan_dev(dev);

    switch (wd->regulationTable.regionCode)
    {
        case 128:
            return 0;
            break;
        case 211:
        case 210:
        case 201:
        case 199:
        case 206:
        case 208:
        case 204:
        case 203:
        case 212:
        case 209:
        case 205:
        case 202:
        case 200:
        case 198:
            return 0x10;
            break;

        case 207:
            return 0x20;
            break;

        case 229:
        case 225:
        case 227:
        case 224:
        case 221:
        case 222:
        case 219:
        case 217:
        case 213:
        case 230:
        case 228:
        case 226:
        case 223:
        case 220:
        case 218:
        case 216:
        case 215:
        case 214:
            return 0x30;
            break;

        case 177:
        case 174:
        case 171:
        case 178:
        case 176:
        case 175:
        case 173:
        case 165:
        case 166:
        case 164:
        case 158:
        case 159:
        case 157:
        case 154:
        case 155:
        case 153:
        case 148:
        case 149:
        case 147:
        case 142:
        case 144:
        case 141:
        case 138:
        case 139:
        case 137:
        case 150:
        case 151:
        case 143:
        case 145:
        case 135:
        case 133:
        case 131:
        case 132:
        case 195:
        case 193:
        case 191:
        case 192:
        case 188:
        case 189:
        case 187:
        case 185:
        case 186:
        case 182:
        case 183:
        case 181:
        case 179:
        case 180:
        case 168:
        case 167:
        case 169:
        case 161:
        case 160:
        case 162:
        case 134:
        case 194:
        case 197:
        case 172:
        case 170:
        case 163:
        case 156:
        case 152:
        case 146:
        case 140:
        case 136:
        case 196:
        case 190:
        case 184:
        case 130:
        case 129:
            return 0x40;
            break;

        default:
            break;
    }
    return 0xFF;

}
