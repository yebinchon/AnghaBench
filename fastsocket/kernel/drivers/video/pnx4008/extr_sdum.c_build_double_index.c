
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static u32 build_double_index(int disp_no, u32 val)
{
 return ((disp_no << 26) | (val << 16) | (disp_no << 10) | (val << 0));
}
