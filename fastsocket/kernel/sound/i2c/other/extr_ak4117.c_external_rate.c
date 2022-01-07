
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char AK4117_FS0 ;
 unsigned char AK4117_FS1 ;
 unsigned char AK4117_FS2 ;
 unsigned char AK4117_FS3 ;
__attribute__((used)) static unsigned int external_rate(unsigned char rcs1)
{
 switch (rcs1 & (AK4117_FS0|AK4117_FS1|AK4117_FS2|AK4117_FS3)) {
 case 132: return 32000;
 case 131: return 44100;
 case 130: return 48000;
 case 129: return 88200;
 case 128: return 96000;
 case 134: return 176400;
 case 133: return 192000;
 default: return 0;
 }
}
