
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct internal_syment {int n_value; int n_scnum; int n_sclass; } ;
struct coff_where {int offset; int bitoffset; void* where; int * section; int bitsize; } ;
struct TYPE_14__ {int * sections; } ;
struct TYPE_8__ {int x_size; } ;
struct TYPE_9__ {TYPE_1__ x_lnsz; } ;
struct TYPE_10__ {TYPE_2__ x_misc; } ;
struct TYPE_11__ {TYPE_3__ x_sym; } ;
struct TYPE_12__ {TYPE_4__ auxent; struct internal_syment syment; } ;
struct TYPE_13__ {TYPE_5__ u; } ;
 int abort () ;
 void* coff_where_entag ;
 void* coff_where_member_of_enum ;
 void* coff_where_member_of_struct ;
 void* coff_where_memory ;
 void* coff_where_register ;
 void* coff_where_stack ;
 void* coff_where_strtag ;
 void* coff_where_typedef ;
 TYPE_7__* ofile ;
 TYPE_6__* rawsyms ;
 scalar_t__ xmalloc (int) ;

__attribute__((used)) static struct coff_where *
do_where (int i)
{
  struct internal_syment *sym = &rawsyms[i].u.syment;
  struct coff_where *where =
    (struct coff_where *) (xmalloc (sizeof (struct coff_where)));
  where->offset = sym->n_value;

  if (sym->n_scnum == -1)
    sym->n_scnum = 0;

  switch (sym->n_sclass)
    {
    case 138:
      where->where = coff_where_member_of_struct;
      where->offset = sym->n_value / 8;
      where->bitoffset = sym->n_value % 8;
      where->bitsize = rawsyms[i + 1].u.auxent.x_sym.x_misc.x_lnsz.x_size;
      break;
    case 136:
      where->where = coff_where_member_of_enum;
      break;
    case 135:
    case 134:
      where->where = coff_where_member_of_struct;
      break;
    case 142:
    case 143:
      where->where = coff_where_stack;
      break;
    case 140:
    case 131:
    case 139:
    case 137:
      where->where = coff_where_memory;
      where->section = &ofile->sections[sym->n_scnum];
      break;
    case 133:
    case 132:
      where->where = coff_where_register;
      break;
    case 141:
      where->where = coff_where_entag;
      break;
    case 130:
    case 128:
      where->where = coff_where_strtag;
      break;
    case 129:
      where->where = coff_where_typedef;
      break;
    default:
      abort ();
      break;
    }
  return where;
}
