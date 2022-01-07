
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdsp {int io_type; int firmware_rev; } ;







__attribute__((used)) static int hdsp_playback_to_output_key (struct hdsp *hdsp, int in, int out)
{
 switch (hdsp->io_type) {
 case 128:
 case 131:
 default:
  if (hdsp->firmware_rev == 0xa)
   return (64 * out) + (32 + (in));
  else
   return (52 * out) + (26 + (in));
 case 130:
  return (32 * out) + (16 + (in));
 case 129:
  return (52 * out) + (26 + (in));
 }
}
