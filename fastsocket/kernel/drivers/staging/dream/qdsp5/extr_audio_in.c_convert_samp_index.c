
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned convert_samp_index(unsigned index)
{
 switch (index) {
 case 129: return 48000;
 case 130: return 44100;
 case 131: return 32000;
 case 132: return 24000;
 case 133: return 22050;
 case 134: return 16000;
 case 135: return 12000;
 case 136: return 11025;
 case 128: return 8000;
 default: return 11025;
 }
}
