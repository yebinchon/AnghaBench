
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct re_registers {int dummy; } ;
struct re_pattern_buffer {int dummy; } ;


 int MB_CUR_MAX ;
 int alloca (int ) ;
 int byte_re_match_2_internal (struct re_pattern_buffer*,int *,int ,char const*,int,int,struct re_registers*,int) ;
 int wcs_re_match_2_internal (struct re_pattern_buffer*,int *,int ,char const*,int,int,struct re_registers*,int,int *,int ,int *,int ,int *,int *) ;

int
re_match (struct re_pattern_buffer *bufp, const char *string,
          int size, int pos, struct re_registers *regs)
{
  int result;







    result = byte_re_match_2_internal (bufp, ((void*)0), 0, string, size,
      pos, regs, size);





  return result;
}
