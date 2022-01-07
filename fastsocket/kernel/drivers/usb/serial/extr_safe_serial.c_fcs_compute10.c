
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u16 ;


 int CRC10_FCS (int ,int ) ;

__attribute__((used)) static __u16 __inline__ fcs_compute10(unsigned char *sp, int len, __u16 fcs)
{
 for (; len-- > 0; fcs = CRC10_FCS(fcs, *sp++));
 return fcs;
}
