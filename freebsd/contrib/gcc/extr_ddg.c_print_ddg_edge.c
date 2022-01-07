
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_3__* ddg_edge_ptr ;
struct TYPE_7__ {int type; int latency; int distance; TYPE_1__* dest; TYPE_2__* src; } ;
struct TYPE_6__ {int insn; } ;
struct TYPE_5__ {int insn; } ;
typedef int FILE ;



 int INSN_UID (int ) ;

 int fprintf (int *,char*,int,char,int,int,int) ;

void
print_ddg_edge (FILE *file, ddg_edge_ptr e)
{
  char dep_c;

  switch (e->type) {
    case 128 :
      dep_c = 'O';
      break;
    case 129 :
      dep_c = 'A';
      break;
    default:
      dep_c = 'T';
  }

  fprintf (file, " [%d -(%c,%d,%d)-> %d] ", INSN_UID (e->src->insn),
    dep_c, e->latency, e->distance, INSN_UID (e->dest->insn));
}
