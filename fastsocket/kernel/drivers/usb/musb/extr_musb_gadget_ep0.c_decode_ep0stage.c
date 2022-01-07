
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
__attribute__((used)) static char *decode_ep0stage(u8 stage)
{
 switch (stage) {
 case 133: return "idle";
 case 131: return "setup";
 case 128: return "in";
 case 132: return "out";
 case 134: return "wait";
 case 130: return "in/status";
 case 129: return "out/status";
 default: return "?";
 }
}
