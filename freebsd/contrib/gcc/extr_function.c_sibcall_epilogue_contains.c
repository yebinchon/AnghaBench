
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int contains (int ,scalar_t__*) ;
 scalar_t__ sibcall_epilogue ;

int
sibcall_epilogue_contains (rtx insn)
{
  if (sibcall_epilogue)
    return contains (insn, &sibcall_epilogue);
  return 0;
}
