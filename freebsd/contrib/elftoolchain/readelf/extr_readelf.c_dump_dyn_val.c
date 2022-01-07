
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uintmax_t ;
typedef int uint32_t ;
struct TYPE_6__ {int e_machine; } ;
struct readelf {TYPE_1__ ehdr; } ;
struct TYPE_7__ {int d_val; } ;
struct TYPE_8__ {int d_tag; TYPE_2__ d_un; } ;
typedef TYPE_3__ GElf_Dyn ;
 int DT_HIPROC ;



 int DT_LOPROC ;
 int dt_flags ;
 int dt_flags_1 ;
 char* dt_type (int ,int ) ;
 int dump_arch_dyn_val (struct readelf*,TYPE_3__*) ;
 int dump_flags (int ,int ) ;
 char* dyn_str (struct readelf*,int ,int ) ;
 int printf (char*,...) ;
 char* timestamp (int ) ;

__attribute__((used)) static void
dump_dyn_val(struct readelf *re, GElf_Dyn *dyn, uint32_t stab)
{
 const char *name;

 if (dyn->d_tag >= DT_LOPROC && dyn->d_tag <= DT_HIPROC &&
     dyn->d_tag != 172 && dyn->d_tag != 170) {
  dump_arch_dyn_val(re, dyn);
  return;
 }


 name = ((void*)0);
 if (dyn->d_tag == 172 || dyn->d_tag == 170 ||
     dyn->d_tag == 155 || dyn->d_tag == 139 ||
     dyn->d_tag == 141 || dyn->d_tag == 140)
  name = dyn_str(re, stab, dyn->d_un.d_val);

 switch(dyn->d_tag) {
 case 154:
 case 153:
 case 159:
 case 137:
 case 134:
 case 148:
 case 158:
 case 136:
 case 149:
 case 171:
 case 133:
 case 156:
 case 169:
 case 132:
 case 130:
 case 128:
 case 163:
 case 162:
 case 165:
  printf(" 0x%jx\n", (uintmax_t) dyn->d_un.d_val);
  break;
 case 151:
 case 145:
 case 146:
 case 138:
 case 135:
 case 142:
 case 143:
 case 150:
 case 157:
 case 168:
 case 164:
 case 161:
  printf(" %ju (bytes)\n", (uintmax_t) dyn->d_un.d_val);
  break;
  case 147:
 case 144:
 case 131:
 case 129:
  printf(" %ju\n", (uintmax_t) dyn->d_un.d_val);
  break;
 case 172:
  printf(" Auxiliary library: [%s]\n", name);
  break;
 case 170:
  printf(" Filter library: [%s]\n", name);
  break;
 case 155:
  printf(" Shared library: [%s]\n", name);
  break;
 case 139:
  printf(" Library soname: [%s]\n", name);
  break;
 case 141:
  printf(" Library rpath: [%s]\n", name);
  break;
 case 140:
  printf(" Library runpath: [%s]\n", name);
  break;
 case 152:
  printf(" %s\n", dt_type(re->ehdr.e_machine, dyn->d_un.d_val));
  break;
 case 160:
  printf(" %s\n", timestamp(dyn->d_un.d_val));
  break;
 case 167:
  dump_flags(dt_flags, dyn->d_un.d_val);
  break;
 case 166:
  dump_flags(dt_flags_1, dyn->d_un.d_val);
  break;
 default:
  printf("\n");
 }
}
