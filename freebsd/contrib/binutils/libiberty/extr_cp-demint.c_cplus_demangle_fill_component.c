
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct demangle_component* right; struct demangle_component* left; } ;
struct TYPE_4__ {TYPE_1__ s_binary; } ;
struct demangle_component {int type; TYPE_2__ u; } ;
typedef enum demangle_component_type { ____Placeholder_demangle_component_type } demangle_component_type ;
int
cplus_demangle_fill_component (struct demangle_component *p,
                               enum demangle_component_type type,
                               struct demangle_component *left,
                                struct demangle_component *right)
{
  if (p == ((void*)0))
    return 0;
  switch (type)
    {
    case 150:
    case 153:
    case 139:
    case 145:
    case 162:
    case 133:
    case 159:
    case 168:
    case 151:
    case 169:
    case 144:
    case 135:
    case 167:
    case 166:
    case 142:
    case 141:
    case 140:
    case 155:
    case 154:
      break;


    case 129:
    case 128:
    case 138:
    case 136:
    case 137:
    case 143:
    case 132:
    case 160:
    case 156:
    case 158:
    case 148:
    case 147:
    case 131:
    case 163:
    case 146:
    case 130:
    case 161:
    case 152:
    case 149:
    case 164:
    case 157:
    case 134:
    case 165:
      if (right != ((void*)0))
 return 0;
      break;

    default:

      return 0;
    }

  p->type = type;
  p->u.s_binary.left = left;
  p->u.s_binary.right = right;

  return 1;
}
