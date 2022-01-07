
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int key_len(int type)
{
 switch(type) {
 case 135: return 8;
 case 132: return 4;
 case 133: return 12;
 case 134: return 8;
 case 129: return 8;
 case 128: return 8;
 case 131: return 16;
 case 130: return 24;
 default: return 0;
 }
}
