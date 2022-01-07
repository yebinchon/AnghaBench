
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int rtx ;
struct TYPE_3__ {int (* globalize_label ) (int *,char const*) ;} ;
struct TYPE_4__ {TYPE_1__ asm_out; } ;
typedef int FILE ;


 int ASM_OUTPUT_LABEL (int *,char const*) ;
 int ASM_OUTPUT_TYPE_DIRECTIVE (int *,char const*,char*) ;
 int ASM_WEAKEN_LABEL (int *,char const*) ;

 int LABEL_KIND (int ) ;
 char* LABEL_NAME (int ) ;



 int gcc_unreachable () ;
 int stub1 (int *,char const*) ;
 TYPE_2__ targetm ;

__attribute__((used)) static void
output_alternate_entry_point (FILE *file, rtx insn)
{
  const char *name = LABEL_NAME (insn);

  switch (LABEL_KIND (insn))
    {
    case 128:



    case 131:
      targetm.asm_out.globalize_label (file, name);
    case 129:



      ASM_OUTPUT_LABEL (file, name);
      break;

    case 130:
    default:
      gcc_unreachable ();
    }
}
