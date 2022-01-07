
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct re_registers {int dummy; } ;
struct re_pattern_buffer {int dummy; } ;


 int re_search_2 (struct re_pattern_buffer*,int *,int ,char const*,int,int,int,struct re_registers*,int) ;

int
re_search (struct re_pattern_buffer *bufp, const char *string, int size,
           int startpos, int range, struct re_registers *regs)
{
  return re_search_2 (bufp, ((void*)0), 0, string, size, startpos, range,
        regs, size);
}
