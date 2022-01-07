
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int fx_r_type; } ;
typedef TYPE_1__ fixS ;
 scalar_t__ alpha_flag_relax ;
 int generic_force_reloc (TYPE_1__*) ;

int
alpha_force_relocation (fixS *f)
{
  if (alpha_flag_relax)
    return 1;

  switch (f->fx_r_type)
    {
    case 141:
    case 140:
    case 142:
    case 136:
    case 145:
    case 135:
    case 129:
    case 128:
    case 139:
    case 138:
    case 137:
    case 149:
    case 150:
    case 134:
    case 133:
    case 144:
    case 147:
    case 146:
    case 148:
    case 143:
    case 131:
    case 130:
    case 132:
      return 1;

    default:
      break;
    }

  return generic_force_reloc (f);
}
