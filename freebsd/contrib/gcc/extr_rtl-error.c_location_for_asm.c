
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int * rtx ;
struct TYPE_5__ {int line; int file; } ;
typedef TYPE_1__ location_t ;


 scalar_t__ ASM_OPERANDS ;
 int ASM_OPERANDS_SOURCE_FILE (int *) ;
 int ASM_OPERANDS_SOURCE_LINE (int *) ;
 TYPE_1__ ASM_OPERANDS_SOURCE_LOCATION (int *) ;
 scalar_t__ GET_CODE (int *) ;
 scalar_t__ PARALLEL ;
 int * PATTERN (int *) ;
 scalar_t__ SET ;
 int * SET_SRC (int *) ;
 int * XVECEXP (int *,int ,int ) ;
 TYPE_1__ input_location ;

__attribute__((used)) static location_t
location_for_asm (rtx insn)
{
  rtx body = PATTERN (insn);
  rtx asmop;
  location_t loc;


  if (GET_CODE (body) == SET && GET_CODE (SET_SRC (body)) == ASM_OPERANDS)
    asmop = SET_SRC (body);
  else if (GET_CODE (body) == ASM_OPERANDS)
    asmop = body;
  else if (GET_CODE (body) == PARALLEL
    && GET_CODE (XVECEXP (body, 0, 0)) == SET)
    asmop = SET_SRC (XVECEXP (body, 0, 0));
  else if (GET_CODE (body) == PARALLEL
    && GET_CODE (XVECEXP (body, 0, 0)) == ASM_OPERANDS)
    asmop = XVECEXP (body, 0, 0);
  else
    asmop = ((void*)0);

  if (asmop)



    {
      loc.file = ASM_OPERANDS_SOURCE_FILE (asmop);
      loc.line = ASM_OPERANDS_SOURCE_LINE (asmop);
    }

  else
    loc = input_location;
  return loc;
}
