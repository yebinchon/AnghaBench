
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* prev; int alignment; } ;
typedef TYPE_1__ align_stack ;


 int error (char*) ;
 TYPE_1__* field_align_stack ;
 int free (TYPE_1__*) ;
 int maximum_field_alignment ;

__attribute__((used)) static void
pop_field_alignment (void)
{
  if (field_align_stack)
    {
      align_stack *entry = field_align_stack;

      maximum_field_alignment = entry->alignment;
      field_align_stack = entry->prev;
      free (entry);
    }
  else
    error ("too many #pragma options align=reset");
}
