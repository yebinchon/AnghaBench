
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int tree ;
typedef int conversion_rank ;
typedef int conversion_kind ;
struct TYPE_7__ {TYPE_2__* next; } ;
struct TYPE_8__ {int user_conv_p; int base_p; int bad_p; int rank; TYPE_1__ u; int type; } ;
typedef TYPE_2__ conversion ;


 int CONVERSION_RANK (TYPE_2__*) ;
 TYPE_2__* alloc_conversion (int) ;





 int ck_user ;
 int cr_exact ;
 int cr_std ;

__attribute__((used)) static conversion *
build_conv (conversion_kind code, tree type, conversion *from)
{
  conversion *t;
  conversion_rank rank = CONVERSION_RANK (from);




  t = alloc_conversion (code);
  t->type = type;
  t->u.next = from;

  switch (code)
    {
    case 130:
    case 131:
    case 132:
    case 128:
      if (rank < cr_std)
 rank = cr_std;
      break;

    case 129:
      if (rank < cr_exact)
 rank = cr_exact;
      break;

    default:
      break;
    }
  t->rank = rank;
  t->user_conv_p = (code == ck_user || from->user_conv_p);
  t->bad_p = from->bad_p;
  t->base_p = 0;
  return t;
}
