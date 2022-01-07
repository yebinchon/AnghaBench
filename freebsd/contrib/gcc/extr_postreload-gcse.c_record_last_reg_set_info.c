
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int INSN_CUID (int ) ;
 int * reg_avail_info ;

__attribute__((used)) static inline void
record_last_reg_set_info (rtx insn, int regno)
{
  reg_avail_info[regno] = INSN_CUID (insn);
}
