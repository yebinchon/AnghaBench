
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int size; int type; } ;
typedef TYPE_2__ argument ;
typedef int a ;
struct TYPE_10__ {int nargs; int size; TYPE_2__* arg; } ;
struct TYPE_9__ {int size; TYPE_1__* operands; } ;
struct TYPE_7__ {unsigned int shift; int op_type; } ;


 TYPE_6__ currInsn ;
 int getargtype (int ) ;
 int getbits (int ) ;
 TYPE_5__* instruction ;
 int make_argument (TYPE_2__*,unsigned int) ;
 int memset (TYPE_2__*,int ,int) ;
 scalar_t__ size_changed ;

__attribute__((used)) static void
make_instruction (void)
{
  int i;
  unsigned int shift;

  for (i = 0; i < currInsn.nargs; i++)
    {
      argument a;

      memset (&a, 0, sizeof (a));
      a.type = getargtype (instruction->operands[i].op_type);
      a.size = getbits (instruction->operands[i].op_type);
      shift = instruction->operands[i].shift;

      make_argument (&a, shift);
      currInsn.arg[i] = a;
    }


  currInsn.size = instruction->size + (size_changed ? 1 : 0);

  currInsn.size *= 2;
}
