
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uintmax_t ;
struct TYPE_5__ {int e_machine; } ;
struct readelf {TYPE_1__ ehdr; } ;
struct TYPE_6__ {int d_val; } ;
struct TYPE_7__ {TYPE_2__ d_un; int d_tag; } ;
typedef TYPE_3__ GElf_Dyn ;
 int printf (char*,...) ;
 char* timestamp (int ) ;

__attribute__((used)) static void
dump_arch_dyn_val(struct readelf *re, GElf_Dyn *dyn)
{
 switch (re->ehdr.e_machine) {
 case 129:
 case 128:
  switch (dyn->d_tag) {
  case 135:
  case 144:
  case 170:
  case 147:
  case 132:
  case 130:
  case 156:
  case 153:
  case 165:
  case 163:
  case 161:
  case 159:
  case 166:
  case 146:
  case 145:
  case 154:
  case 139:
   printf(" %ju\n", (uintmax_t) dyn->d_un.d_val);
   break;
  case 152:
  case 157:
  case 173:
  case 171:
  case 148:
  case 138:
  case 168:
  case 164:
  case 162:
  case 160:
  case 167:
  case 169:
  case 141:
  case 133:
  case 143:
  case 151:
  case 158:
  case 150:
  case 136:
  case 172:
  case 155:
  case 174:
  case 140:
  case 137:
  case 134:
   printf(" 0x%jx\n", (uintmax_t) dyn->d_un.d_val);
   break;
  case 149:
  case 142:
  case 131:
   printf(" %s\n", timestamp(dyn->d_un.d_val));
   break;
  default:
   printf("\n");
   break;
  }
  break;
 default:
  printf("\n");
  break;
 }
}
