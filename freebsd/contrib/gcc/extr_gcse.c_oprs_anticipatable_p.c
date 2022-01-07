
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int oprs_unchanged_p (int ,int ,int ) ;

__attribute__((used)) static int
oprs_anticipatable_p (rtx x, rtx insn)
{
  return oprs_unchanged_p (x, insn, 0);
}
