
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned char* control; } ;
struct usb_line6_variax {int dumpreq; TYPE_1__ model_data; } ;
struct usb_interface {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int line6_wait_dump (int *,int ) ;
 scalar_t__ sprintf (char*,char*,char*,unsigned int,unsigned int) ;
 struct usb_interface* to_usb_interface (struct device*) ;
 struct usb_line6_variax* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static ssize_t variax_get_param_float(struct device *dev, char *buf, int param)
{
 static const int BIAS = 0x7f;
 static const int OFFSET = 0xf;
 static const int PRECISION = 1000;

 int len = 0;
 unsigned part_int, part_frac;
 struct usb_interface *interface = to_usb_interface(dev);
 struct usb_line6_variax *variax = usb_get_intfdata(interface);
 const unsigned char *p = variax->model_data.control + param;
 int retval = line6_wait_dump(&variax->dumpreq, 0);
 if (retval < 0)
  return retval;

 if ((p[0] == 0) && (p[1] == 0) && (p[2] == 0))
  part_int = part_frac = 0;
 else {
  int exponent = (((p[0] & 0x7f) << 1) | (p[1] >> 7)) - BIAS;
  unsigned mantissa = (p[1] << 8) | p[2] | 0x8000;
  exponent -= OFFSET;

  if (exponent >= 0) {
   part_int = mantissa << exponent;
   part_frac = 0;
  } else {
   part_int = mantissa >> -exponent;
   part_frac = (mantissa << (32 + exponent)) & 0xffffffff;
  }

  part_frac = (part_frac / ((1UL << 31) / (PRECISION / 2 * 10)) + 5) / 10;
 }

 len += sprintf(buf + len, "%s%d.%03d\n", ((p[0] & 0x80) ? "-" : ""), part_int, part_frac);
 return len;
}
