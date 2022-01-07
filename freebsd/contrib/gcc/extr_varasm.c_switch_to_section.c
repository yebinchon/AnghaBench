
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_10__ ;


struct TYPE_17__ {int flags; } ;
struct TYPE_16__ {int data; int (* callback ) (int ) ;} ;
struct TYPE_14__ {int flags; } ;
struct TYPE_15__ {int decl; TYPE_2__ common; int name; } ;
struct TYPE_18__ {TYPE_5__ common; TYPE_4__ unnamed; TYPE_3__ named; } ;
typedef TYPE_6__ section ;
struct TYPE_13__ {int (* named_section ) (int ,int ,int ) ;} ;
struct TYPE_19__ {TYPE_1__ asm_out; } ;
struct TYPE_12__ {int unlikely_text_section_name; } ;


 int SECTION_DECLARED ;
 int SECTION_FORGET ;


 int SECTION_STYLE (TYPE_6__*) ;

 int UNLIKELY_EXECUTED_TEXT_SECTION_NAME ;
 TYPE_10__* cfun ;
 int gcc_unreachable () ;
 TYPE_6__* in_section ;
 int strcmp (int ,int ) ;
 int stub1 (int ,int ,int ) ;
 int stub2 (int ) ;
 TYPE_7__ targetm ;

void
switch_to_section (section *new_section)
{
  if (in_section == new_section)
    return;

  if (new_section->common.flags & SECTION_FORGET)
    in_section = ((void*)0);
  else
    in_section = new_section;

  switch (SECTION_STYLE (new_section))
    {
    case 130:
      if (cfun
   && !cfun->unlikely_text_section_name
   && strcmp (new_section->named.name,
       UNLIKELY_EXECUTED_TEXT_SECTION_NAME) == 0)
 cfun->unlikely_text_section_name = UNLIKELY_EXECUTED_TEXT_SECTION_NAME;

      targetm.asm_out.named_section (new_section->named.name,
         new_section->named.common.flags,
         new_section->named.decl);
      break;

    case 128:
      new_section->unnamed.callback (new_section->unnamed.data);
      break;

    case 129:
      gcc_unreachable ();
      break;
    }

  new_section->common.flags |= SECTION_DECLARED;
}
