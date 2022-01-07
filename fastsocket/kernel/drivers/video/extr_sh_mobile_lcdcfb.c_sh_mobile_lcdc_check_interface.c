
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int interface_type; } ;
struct sh_mobile_lcdc_chan {int ldmt1r_value; TYPE_1__ cfg; } ;


 int EINVAL ;
 scalar_t__ lcdc_chan_is_sublcd (struct sh_mobile_lcdc_chan*) ;

__attribute__((used)) static int sh_mobile_lcdc_check_interface(struct sh_mobile_lcdc_chan *ch)
{
 int ifm, miftyp;

 switch (ch->cfg.interface_type) {
 case 140: ifm = 0; miftyp = 0; break;
 case 139: ifm = 0; miftyp = 4; break;
 case 145: ifm = 0; miftyp = 5; break;
 case 144: ifm = 0; miftyp = 6; break;
 case 143: ifm = 0; miftyp = 7; break;
 case 142: ifm = 0; miftyp = 10; break;
 case 141: ifm = 0; miftyp = 11; break;
 case 132: ifm = 1; miftyp = 0; break;
 case 131: ifm = 1; miftyp = 1; break;
 case 130: ifm = 1; miftyp = 2; break;
 case 129: ifm = 1; miftyp = 3; break;
 case 128: ifm = 1; miftyp = 4; break;
 case 138: ifm = 1; miftyp = 5; break;
 case 137: ifm = 1; miftyp = 7; break;
 case 136: ifm = 1; miftyp = 8; break;
 case 135: ifm = 1; miftyp = 9; break;
 case 134: ifm = 1; miftyp = 10; break;
 case 133: ifm = 1; miftyp = 11; break;
 default: goto bad;
 }


 if (lcdc_chan_is_sublcd(ch)) {
  if (ifm == 0)
   goto bad;
  else
   ifm = 0;
 }

 ch->ldmt1r_value = (ifm << 12) | miftyp;
 return 0;
 bad:
 return -EINVAL;
}
