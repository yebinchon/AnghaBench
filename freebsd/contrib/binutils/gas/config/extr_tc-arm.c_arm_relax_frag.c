
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_15__ {int fr_var; int fr_subtype; } ;
typedef TYPE_1__ fragS ;
struct TYPE_16__ {int owner; } ;
typedef TYPE_2__ asection ;
 int abort () ;
 int frag_wane (TYPE_1__*) ;
 int md_convert_frag (int ,TYPE_2__*,TYPE_1__*) ;
 int relax_addsub (TYPE_1__*,TYPE_2__*) ;
 int relax_adr (TYPE_1__*,TYPE_2__*,long) ;
 int relax_branch (TYPE_1__*,TYPE_2__*,int,long) ;
 int relax_immediate (TYPE_1__*,int,int) ;

int
arm_relax_frag (asection *sec, fragS *fragp, long stretch)
{
  int oldsize;
  int newsize;

  oldsize = fragp->fr_var;
  switch (fragp->fr_subtype)
    {
    case 139:
      newsize = relax_adr(fragp, sec, stretch);
      break;
    case 140:
    case 138:
    case 132:
      newsize = relax_immediate(fragp, 8, 2);
      break;
    case 141:
    case 133:
      newsize = relax_immediate(fragp, 5, 2);
      break;
    case 136:
    case 130:
      newsize = relax_immediate(fragp, 5, 1);
      break;
    case 137:
    case 131:
      newsize = relax_immediate(fragp, 5, 0);
      break;
    case 148:
      newsize = relax_adr(fragp, sec, stretch);
      break;
    case 135:
    case 134:
    case 144:
    case 145:
      newsize = relax_immediate(fragp, 8, 0);
      break;
    case 147:
      newsize = relax_branch(fragp, sec, 11, stretch);
      break;
    case 146:
      newsize = relax_branch(fragp, sec, 8, stretch);
      break;
    case 151:
    case 152:
      newsize = relax_immediate (fragp, 8, 2);
      break;
    case 142:
    case 143:
      newsize = relax_immediate (fragp, 7, 2);
      break;
    case 150:
    case 149:
    case 129:
    case 128:
      newsize = relax_addsub (fragp, sec);
      break;
    default:
      abort();
    }

  fragp->fr_var = newsize;




  if (stretch <= 0 && newsize > 2)
    {
      md_convert_frag (sec->owner, sec, fragp);
      frag_wane(fragp);
    }

  return newsize - oldsize;
}
