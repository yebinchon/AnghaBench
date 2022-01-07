
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int DST_15BPP ;
 int DST_16BPP ;
 int DST_32BPP ;
 int DST_8BPP ;

__attribute__((used)) static inline u32 radeon_get_dstbpp(u16 depth)
{
 switch (depth) {
        case 8:
         return DST_8BPP;
        case 15:
         return DST_15BPP;
        case 16:
         return DST_16BPP;
        case 32:
         return DST_32BPP;
        default:
         return 0;
 }
}
