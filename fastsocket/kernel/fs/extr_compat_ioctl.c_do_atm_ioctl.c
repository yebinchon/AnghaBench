
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int cmd32; unsigned int cmd; } ;
 int EINVAL ;
 int NR_ATM_IOCTL ;
 TYPE_1__* atm_ioctl_map ;
 int do_atm_iobuf (unsigned int,unsigned int,unsigned long) ;
 int do_atmif_sioc (unsigned int,unsigned int,unsigned long) ;

__attribute__((used)) static int do_atm_ioctl(unsigned int fd, unsigned int cmd32, unsigned long arg)
{
        int i;
        unsigned int cmd = 0;

 switch (cmd32) {
 case 131:
 case 130:
 case 134:
 case 129:
 case 135:
 case 128:
 case 133:
 case 132:
  return do_atmif_sioc(fd, cmd32, arg);
 }

 for (i = 0; i < NR_ATM_IOCTL; i++) {
  if (cmd32 == atm_ioctl_map[i].cmd32) {
   cmd = atm_ioctl_map[i].cmd;
   break;
  }
 }
 if (i == NR_ATM_IOCTL)
         return -EINVAL;

        switch (cmd) {
 case 145:
  return do_atm_iobuf(fd, cmd, arg);

 case 147:
        case 142:
        case 148:
        case 150:
        case 140:
        case 152:
        case 151:
        case 149:
 case 139:
 case 138:
 case 137:
 case 144:
 case 143:
 case 146:
 case 136:
 case 141:
                return do_atmif_sioc(fd, cmd, arg);
        }

        return -EINVAL;
}
