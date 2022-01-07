
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvidia_par {int dummy; } ;
struct fb_info {struct nvidia_par* par; } ;







 int NVReadCrtc (struct nvidia_par*,int) ;
 int NVReadSeq (struct nvidia_par*,int) ;
 int NVTRACE_ENTER () ;
 int NVTRACE_LEAVE () ;
 int NVWriteCrtc (struct nvidia_par*,int,unsigned char) ;
 int NVWriteSeq (struct nvidia_par*,int,unsigned char) ;

__attribute__((used)) static int nvidiafb_blank(int blank, struct fb_info *info)
{
 struct nvidia_par *par = info->par;
 unsigned char tmp, vesa;

 tmp = NVReadSeq(par, 0x01) & ~0x20;
 vesa = NVReadCrtc(par, 0x1a) & ~0xc0;

 NVTRACE_ENTER();

 if (blank)
  tmp |= 0x20;

 switch (blank) {
 case 129:
 case 131:
  break;
 case 128:
  vesa |= 0x80;
  break;
 case 132:
  vesa |= 0x40;
  break;
 case 130:
  vesa |= 0xc0;
  break;
 }

 NVWriteSeq(par, 0x01, tmp);
 NVWriteCrtc(par, 0x1a, vesa);

 NVTRACE_LEAVE();

 return 0;
}
