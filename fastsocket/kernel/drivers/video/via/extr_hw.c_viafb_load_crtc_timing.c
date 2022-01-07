
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_56__ TYPE_9__ ;
typedef struct TYPE_55__ TYPE_8__ ;
typedef struct TYPE_54__ TYPE_7__ ;
typedef struct TYPE_53__ TYPE_6__ ;
typedef struct TYPE_52__ TYPE_5__ ;
typedef struct TYPE_51__ TYPE_4__ ;
typedef struct TYPE_50__ TYPE_3__ ;
typedef struct TYPE_49__ TYPE_2__ ;
typedef struct TYPE_48__ TYPE_28__ ;
typedef struct TYPE_47__ TYPE_27__ ;
typedef struct TYPE_46__ TYPE_26__ ;
typedef struct TYPE_45__ TYPE_25__ ;
typedef struct TYPE_44__ TYPE_24__ ;
typedef struct TYPE_43__ TYPE_23__ ;
typedef struct TYPE_42__ TYPE_22__ ;
typedef struct TYPE_41__ TYPE_21__ ;
typedef struct TYPE_40__ TYPE_20__ ;
typedef struct TYPE_39__ TYPE_1__ ;
typedef struct TYPE_38__ TYPE_19__ ;
typedef struct TYPE_37__ TYPE_18__ ;
typedef struct TYPE_36__ TYPE_17__ ;
typedef struct TYPE_35__ TYPE_16__ ;
typedef struct TYPE_34__ TYPE_15__ ;
typedef struct TYPE_33__ TYPE_14__ ;
typedef struct TYPE_32__ TYPE_13__ ;
typedef struct TYPE_31__ TYPE_12__ ;
typedef struct TYPE_30__ TYPE_11__ ;
typedef struct TYPE_29__ TYPE_10__ ;


struct io_register {int dummy; } ;
struct display_timing {int ver_sync_end; int ver_sync_start; int ver_blank_end; int ver_blank_start; int ver_addr; int ver_total; int hor_sync_end; int hor_sync_start; int hor_blank_end; int hor_blank_start; int hor_addr; int hor_total; } ;
struct TYPE_56__ {int reg_num; struct io_register* reg; } ;
struct TYPE_55__ {int reg_num; struct io_register* reg; } ;
struct TYPE_54__ {int reg_num; struct io_register* reg; } ;
struct TYPE_53__ {int reg_num; struct io_register* reg; } ;
struct TYPE_52__ {int reg_num; struct io_register* reg; } ;
struct TYPE_51__ {int reg_num; struct io_register* reg; } ;
struct TYPE_50__ {int reg_num; struct io_register* reg; } ;
struct TYPE_49__ {int reg_num; struct io_register* reg; } ;
struct TYPE_35__ {int reg_num; struct io_register* reg; } ;
struct TYPE_34__ {int reg_num; struct io_register* reg; } ;
struct TYPE_33__ {int reg_num; struct io_register* reg; } ;
struct TYPE_32__ {int reg_num; struct io_register* reg; } ;
struct TYPE_31__ {int reg_num; struct io_register* reg; } ;
struct TYPE_30__ {int reg_num; struct io_register* reg; } ;
struct TYPE_29__ {int reg_num; struct io_register* reg; } ;
struct TYPE_48__ {TYPE_16__ ver_sync_end; TYPE_15__ ver_sync_start; TYPE_14__ ver_blank_end; TYPE_13__ ver_blank_start; TYPE_12__ ver_addr; TYPE_11__ ver_total; TYPE_10__ hor_sync_end; TYPE_9__ hor_sync_start; TYPE_8__ hor_blank_end; TYPE_7__ hor_blank_start; TYPE_6__ hor_addr; TYPE_5__ hor_total; } ;
struct TYPE_39__ {int reg_num; struct io_register* reg; } ;
struct TYPE_45__ {int reg_num; struct io_register* reg; } ;
struct TYPE_44__ {int reg_num; struct io_register* reg; } ;
struct TYPE_43__ {int reg_num; struct io_register* reg; } ;
struct TYPE_42__ {int reg_num; struct io_register* reg; } ;
struct TYPE_40__ {int reg_num; struct io_register* reg; } ;
struct TYPE_38__ {int reg_num; struct io_register* reg; } ;
struct TYPE_37__ {int reg_num; struct io_register* reg; } ;
struct TYPE_36__ {int reg_num; struct io_register* reg; } ;
struct TYPE_47__ {TYPE_4__ ver_sync_end; TYPE_3__ ver_sync_start; TYPE_2__ ver_blank_end; TYPE_1__ ver_blank_start; TYPE_25__ ver_addr; TYPE_24__ ver_total; TYPE_23__ hor_sync_end; TYPE_22__ hor_sync_start; TYPE_20__ hor_blank_end; TYPE_19__ hor_blank_start; TYPE_18__ hor_addr; TYPE_17__ hor_total; } ;
struct TYPE_46__ {TYPE_21__* chip_info; } ;
struct TYPE_41__ {int gfx_chip_name; } ;
 int IGA1 ;
 int IGA1_HOR_ADDR_FORMULA (int ) ;
 int IGA1_HOR_BLANK_END_FORMULA (int ,int ) ;
 int IGA1_HOR_BLANK_START_FORMULA (int ) ;
 int IGA1_HOR_SYNC_END_FORMULA (int ,int ) ;
 int IGA1_HOR_SYNC_START_FORMULA (int ) ;
 int IGA1_HOR_TOTAL_FORMULA (int ) ;
 int IGA1_VER_ADDR_FORMULA (int ) ;
 int IGA1_VER_BLANK_END_FORMULA (int ,int ) ;
 int IGA1_VER_BLANK_START_FORMULA (int ) ;
 int IGA1_VER_SYNC_END_FORMULA (int ,int ) ;
 int IGA1_VER_SYNC_START_FORMULA (int ) ;
 int IGA1_VER_TOTAL_FORMULA (int ) ;
 int IGA2 ;
 int IGA2_HOR_ADDR_FORMULA (int ) ;
 int IGA2_HOR_BLANK_END_FORMULA (int ,int ) ;
 int IGA2_HOR_BLANK_START_FORMULA (int ) ;
 int IGA2_HOR_SYNC_END_FORMULA (int ,int ) ;
 int IGA2_HOR_SYNC_START_FORMULA (int ) ;
 int IGA2_HOR_TOTAL_FORMULA (int ) ;
 int IGA2_VER_ADDR_FORMULA (int ) ;
 int IGA2_VER_BLANK_END_FORMULA (int ,int ) ;
 int IGA2_VER_BLANK_START_FORMULA (int ) ;
 int IGA2_VER_SYNC_END_FORMULA (int ,int ) ;
 int IGA2_VER_SYNC_START_FORMULA (int ) ;
 int IGA2_VER_TOTAL_FORMULA (int ) ;
 int UNICHROME_CN700 ;
 int VIACR ;






 TYPE_28__ iga1_crtc_reg ;
 TYPE_27__ iga2_crtc_reg ;
 int viafb_load_reg (int,int,struct io_register*,int ) ;
 int viafb_lock_crt () ;
 int viafb_unlock_crt () ;
 TYPE_26__* viaparinfo ;

void viafb_load_crtc_timing(struct display_timing device_timing,
 int set_iga)
{
 int i;
 int viafb_load_reg_num = 0;
 int reg_value = 0;
 struct io_register *reg = ((void*)0);

 viafb_unlock_crt();

 for (i = 0; i < 12; i++) {
  if (set_iga == IGA1) {
   switch (i) {
   case 134:
    reg_value =
        IGA1_HOR_TOTAL_FORMULA(device_timing.
          hor_total);
    viafb_load_reg_num =
     iga1_crtc_reg.hor_total.reg_num;
    reg = iga1_crtc_reg.hor_total.reg;
    break;
   case 139:
    reg_value =
        IGA1_HOR_ADDR_FORMULA(device_timing.
         hor_addr);
    viafb_load_reg_num =
     iga1_crtc_reg.hor_addr.reg_num;
    reg = iga1_crtc_reg.hor_addr.reg;
    break;
   case 137:
    reg_value =
        IGA1_HOR_BLANK_START_FORMULA
        (device_timing.hor_blank_start);
    viafb_load_reg_num =
        iga1_crtc_reg.hor_blank_start.reg_num;
    reg = iga1_crtc_reg.hor_blank_start.reg;
    break;
   case 138:
    reg_value =
        IGA1_HOR_BLANK_END_FORMULA
        (device_timing.hor_blank_start,
         device_timing.hor_blank_end);
    viafb_load_reg_num =
        iga1_crtc_reg.hor_blank_end.reg_num;
    reg = iga1_crtc_reg.hor_blank_end.reg;
    break;
   case 135:
    reg_value =
        IGA1_HOR_SYNC_START_FORMULA
        (device_timing.hor_sync_start);
    viafb_load_reg_num =
        iga1_crtc_reg.hor_sync_start.reg_num;
    reg = iga1_crtc_reg.hor_sync_start.reg;
    break;
   case 136:
    reg_value =
        IGA1_HOR_SYNC_END_FORMULA
        (device_timing.hor_sync_start,
         device_timing.hor_sync_end);
    viafb_load_reg_num =
        iga1_crtc_reg.hor_sync_end.reg_num;
    reg = iga1_crtc_reg.hor_sync_end.reg;
    break;
   case 128:
    reg_value =
        IGA1_VER_TOTAL_FORMULA(device_timing.
          ver_total);
    viafb_load_reg_num =
     iga1_crtc_reg.ver_total.reg_num;
    reg = iga1_crtc_reg.ver_total.reg;
    break;
   case 133:
    reg_value =
        IGA1_VER_ADDR_FORMULA(device_timing.
         ver_addr);
    viafb_load_reg_num =
     iga1_crtc_reg.ver_addr.reg_num;
    reg = iga1_crtc_reg.ver_addr.reg;
    break;
   case 131:
    reg_value =
        IGA1_VER_BLANK_START_FORMULA
        (device_timing.ver_blank_start);
    viafb_load_reg_num =
        iga1_crtc_reg.ver_blank_start.reg_num;
    reg = iga1_crtc_reg.ver_blank_start.reg;
    break;
   case 132:
    reg_value =
        IGA1_VER_BLANK_END_FORMULA
        (device_timing.ver_blank_start,
         device_timing.ver_blank_end);
    viafb_load_reg_num =
        iga1_crtc_reg.ver_blank_end.reg_num;
    reg = iga1_crtc_reg.ver_blank_end.reg;
    break;
   case 129:
    reg_value =
        IGA1_VER_SYNC_START_FORMULA
        (device_timing.ver_sync_start);
    viafb_load_reg_num =
        iga1_crtc_reg.ver_sync_start.reg_num;
    reg = iga1_crtc_reg.ver_sync_start.reg;
    break;
   case 130:
    reg_value =
        IGA1_VER_SYNC_END_FORMULA
        (device_timing.ver_sync_start,
         device_timing.ver_sync_end);
    viafb_load_reg_num =
        iga1_crtc_reg.ver_sync_end.reg_num;
    reg = iga1_crtc_reg.ver_sync_end.reg;
    break;

   }
  }

  if (set_iga == IGA2) {
   switch (i) {
   case 134:
    reg_value =
        IGA2_HOR_TOTAL_FORMULA(device_timing.
          hor_total);
    viafb_load_reg_num =
     iga2_crtc_reg.hor_total.reg_num;
    reg = iga2_crtc_reg.hor_total.reg;
    break;
   case 139:
    reg_value =
        IGA2_HOR_ADDR_FORMULA(device_timing.
         hor_addr);
    viafb_load_reg_num =
     iga2_crtc_reg.hor_addr.reg_num;
    reg = iga2_crtc_reg.hor_addr.reg;
    break;
   case 137:
    reg_value =
        IGA2_HOR_BLANK_START_FORMULA
        (device_timing.hor_blank_start);
    viafb_load_reg_num =
        iga2_crtc_reg.hor_blank_start.reg_num;
    reg = iga2_crtc_reg.hor_blank_start.reg;
    break;
   case 138:
    reg_value =
        IGA2_HOR_BLANK_END_FORMULA
        (device_timing.hor_blank_start,
         device_timing.hor_blank_end);
    viafb_load_reg_num =
        iga2_crtc_reg.hor_blank_end.reg_num;
    reg = iga2_crtc_reg.hor_blank_end.reg;
    break;
   case 135:
    reg_value =
        IGA2_HOR_SYNC_START_FORMULA
        (device_timing.hor_sync_start);
    if (UNICHROME_CN700 <=
     viaparinfo->chip_info->gfx_chip_name)
     viafb_load_reg_num =
         iga2_crtc_reg.hor_sync_start.
         reg_num;
    else
     viafb_load_reg_num = 3;
    reg = iga2_crtc_reg.hor_sync_start.reg;
    break;
   case 136:
    reg_value =
        IGA2_HOR_SYNC_END_FORMULA
        (device_timing.hor_sync_start,
         device_timing.hor_sync_end);
    viafb_load_reg_num =
        iga2_crtc_reg.hor_sync_end.reg_num;
    reg = iga2_crtc_reg.hor_sync_end.reg;
    break;
   case 128:
    reg_value =
        IGA2_VER_TOTAL_FORMULA(device_timing.
          ver_total);
    viafb_load_reg_num =
     iga2_crtc_reg.ver_total.reg_num;
    reg = iga2_crtc_reg.ver_total.reg;
    break;
   case 133:
    reg_value =
        IGA2_VER_ADDR_FORMULA(device_timing.
         ver_addr);
    viafb_load_reg_num =
     iga2_crtc_reg.ver_addr.reg_num;
    reg = iga2_crtc_reg.ver_addr.reg;
    break;
   case 131:
    reg_value =
        IGA2_VER_BLANK_START_FORMULA
        (device_timing.ver_blank_start);
    viafb_load_reg_num =
        iga2_crtc_reg.ver_blank_start.reg_num;
    reg = iga2_crtc_reg.ver_blank_start.reg;
    break;
   case 132:
    reg_value =
        IGA2_VER_BLANK_END_FORMULA
        (device_timing.ver_blank_start,
         device_timing.ver_blank_end);
    viafb_load_reg_num =
        iga2_crtc_reg.ver_blank_end.reg_num;
    reg = iga2_crtc_reg.ver_blank_end.reg;
    break;
   case 129:
    reg_value =
        IGA2_VER_SYNC_START_FORMULA
        (device_timing.ver_sync_start);
    viafb_load_reg_num =
        iga2_crtc_reg.ver_sync_start.reg_num;
    reg = iga2_crtc_reg.ver_sync_start.reg;
    break;
   case 130:
    reg_value =
        IGA2_VER_SYNC_END_FORMULA
        (device_timing.ver_sync_start,
         device_timing.ver_sync_end);
    viafb_load_reg_num =
        iga2_crtc_reg.ver_sync_end.reg_num;
    reg = iga2_crtc_reg.ver_sync_end.reg;
    break;

   }
  }
  viafb_load_reg(reg_value, viafb_load_reg_num, reg, VIACR);
 }

 viafb_lock_crt();
}
