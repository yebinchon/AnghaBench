
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct re_registers {int dummy; } ;
struct re_pattern_buffer {int dummy; } ;


 int MB_CUR_MAX ;
 int alloca (int ) ;
 int byte_re_match_2_internal (struct re_pattern_buffer*,char const*,int,char const*,int,int,struct re_registers*,int) ;
 int wcs_re_match_2_internal (struct re_pattern_buffer*,char const*,int,char const*,int,int,struct re_registers*,int,int *,int ,int *,int ,int *,int *) ;

int
re_match_2 (struct re_pattern_buffer *bufp, const char *string1, int size1,
            const char *string2, int size2, int pos,
            struct re_registers *regs, int stop)
{
  int result;







    result = byte_re_match_2_internal (bufp, string1, size1, string2, size2,
      pos, regs, stop);






  return result;
}
