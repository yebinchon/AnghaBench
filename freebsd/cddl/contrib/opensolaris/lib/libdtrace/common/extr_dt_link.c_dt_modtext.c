
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
typedef int u_longlong_t ;
struct TYPE_5__ {int dt_oflags; } ;
typedef TYPE_1__ dtrace_hdl_t ;
struct TYPE_6__ {int r_offset; int r_info; } ;
typedef TYPE_2__ GElf_Rela ;


 int DTRACE_O_LP64 ;
 scalar_t__ DT_OP_CALL ;
 scalar_t__ DT_OP_JMP32 ;
 scalar_t__ DT_OP_NOP ;
 scalar_t__ DT_OP_RET ;
 scalar_t__ DT_OP_REX_RAX ;
 scalar_t__ DT_OP_XOR_EAX_0 ;
 scalar_t__ DT_OP_XOR_EAX_1 ;
 scalar_t__ GELF_R_TYPE (int ) ;
 scalar_t__ R_386_PC32 ;
 scalar_t__ R_386_PLT32 ;
 int dt_dprintf (char*,scalar_t__,int ) ;

__attribute__((used)) static int
dt_modtext(dtrace_hdl_t *dtp, char *p, int isenabled, GElf_Rela *rela,
    uint32_t *off)
{
 uint8_t *ip = (uint8_t *)(p + rela->r_offset - 1);
 uint8_t ret;
 (*off) -= 1;






 if (GELF_R_TYPE(rela->r_info) != R_386_PC32 &&
     GELF_R_TYPE(rela->r_info) != R_386_PLT32)
  return (-1);
 if (!isenabled) {
  if ((ip[0] == DT_OP_NOP || ip[0] == DT_OP_RET) &&
      ip[1] == DT_OP_NOP && ip[2] == DT_OP_NOP &&
      ip[3] == DT_OP_NOP && ip[4] == DT_OP_NOP)
   return (0);
 } else if (dtp->dt_oflags & DTRACE_O_LP64) {
  if (ip[0] == DT_OP_REX_RAX &&
      ip[1] == DT_OP_XOR_EAX_0 && ip[2] == DT_OP_XOR_EAX_1 &&
      (ip[3] == DT_OP_NOP || ip[3] == DT_OP_RET) &&
      ip[4] == DT_OP_NOP) {
   (*off) += 3;
   return (0);
  }
 } else {
  if (ip[0] == DT_OP_XOR_EAX_0 && ip[1] == DT_OP_XOR_EAX_1 &&
      (ip[2] == DT_OP_NOP || ip[2] == DT_OP_RET) &&
      ip[3] == DT_OP_NOP && ip[4] == DT_OP_NOP) {
   (*off) += 2;
   return (0);
  }
 }





 if (ip[0] != DT_OP_CALL && ip[0] != DT_OP_JMP32) {
  dt_dprintf("found %x instead of a call or jmp instruction at "
      "%llx\n", ip[0], (u_longlong_t)rela->r_offset);
  return (-1);
 }

 ret = (ip[0] == DT_OP_JMP32) ? DT_OP_RET : DT_OP_NOP;
 if (!isenabled) {
  ip[0] = ret;
  ip[1] = DT_OP_NOP;
  ip[2] = DT_OP_NOP;
  ip[3] = DT_OP_NOP;
  ip[4] = DT_OP_NOP;
 } else if (dtp->dt_oflags & DTRACE_O_LP64) {
  ip[0] = DT_OP_REX_RAX;
  ip[1] = DT_OP_XOR_EAX_0;
  ip[2] = DT_OP_XOR_EAX_1;
  ip[3] = ret;
  ip[4] = DT_OP_NOP;
  (*off) += 3;
 } else {
  ip[0] = DT_OP_XOR_EAX_0;
  ip[1] = DT_OP_XOR_EAX_1;
  ip[2] = ret;
  ip[3] = DT_OP_NOP;
  ip[4] = DT_OP_NOP;
  (*off) += 2;
 }

 return (0);
}
