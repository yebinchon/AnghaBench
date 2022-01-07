
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_38__ TYPE_9__ ;
typedef struct TYPE_37__ TYPE_8__ ;
typedef struct TYPE_36__ TYPE_7__ ;
typedef struct TYPE_35__ TYPE_6__ ;
typedef struct TYPE_34__ TYPE_5__ ;
typedef struct TYPE_33__ TYPE_4__ ;
typedef struct TYPE_32__ TYPE_3__ ;
typedef struct TYPE_31__ TYPE_2__ ;
typedef struct TYPE_30__ TYPE_20__ ;
typedef struct TYPE_29__ TYPE_1__ ;
typedef struct TYPE_28__ TYPE_17__ ;
typedef struct TYPE_27__ TYPE_16__ ;
typedef struct TYPE_26__ TYPE_15__ ;
typedef struct TYPE_25__ TYPE_14__ ;
typedef struct TYPE_24__ TYPE_13__ ;
typedef struct TYPE_23__ TYPE_12__ ;
typedef struct TYPE_22__ TYPE_11__ ;
typedef struct TYPE_21__ TYPE_10__ ;


struct TYPE_33__ {char** _n_nptr; } ;
struct internal_syment {int n_sclass; int n_numaux; scalar_t__ n_value; scalar_t__ n_scnum; TYPE_4__ _n; } ;
struct coff_sfile {char* name; struct coff_sfile* next; TYPE_12__* scope; struct coff_isection* section; } ;
struct coff_ofile {scalar_t__ sections; scalar_t__ nsources; struct coff_sfile* source_tail; struct coff_sfile* source_head; scalar_t__ symbol_list_head; scalar_t__ symbol_list_tail; } ;
struct coff_isection {int dummy; } ;
struct TYPE_37__ {TYPE_12__* elements; } ;
struct TYPE_38__ {TYPE_8__ astructdef; } ;
struct TYPE_34__ {TYPE_12__* parameters; } ;
struct TYPE_35__ {TYPE_5__ function; } ;
struct TYPE_36__ {TYPE_6__ u; } ;
struct TYPE_31__ {TYPE_12__* code; } ;
struct TYPE_32__ {TYPE_2__ function; } ;
struct TYPE_30__ {int section_count; } ;
struct TYPE_29__ {struct internal_syment syment; } ;
struct TYPE_21__ {TYPE_12__* elements; } ;
struct TYPE_22__ {TYPE_10__ aenumdef; } ;
struct TYPE_28__ {TYPE_11__ u; } ;
struct TYPE_27__ {TYPE_7__* type; } ;
struct TYPE_26__ {TYPE_3__ u; } ;
struct TYPE_25__ {TYPE_9__ u; } ;
struct TYPE_24__ {TYPE_1__ u; } ;
struct TYPE_23__ {scalar_t__ offset; int size; scalar_t__ sec; } ;
 TYPE_20__* abfd ;
 int abort () ;
 struct coff_sfile* cur_sfile ;
 int do_define (int,TYPE_12__*) ;
 int do_sections_p1 (struct coff_ofile*) ;
 int do_sections_p2 (struct coff_ofile*) ;
 TYPE_12__* file_scope ;
 TYPE_17__* last_enum ;
 TYPE_16__* last_function_symbol ;
 TYPE_15__* last_function_type ;
 TYPE_14__* last_struct ;
 struct coff_ofile* ofile ;
 int pop_scope () ;
 int push_scope (int) ;
 int rawcount ;
 TYPE_13__* rawsyms ;
 TYPE_12__* top_scope ;
 scalar_t__ xcalloc (int,int ) ;
 scalar_t__ xmalloc (int) ;

__attribute__((used)) static
struct coff_ofile *
doit (void)
{
  int i;
  int infile = 0;
  struct coff_ofile *head =
    (struct coff_ofile *) xmalloc (sizeof (struct coff_ofile));
  ofile = head;
  head->source_head = 0;
  head->source_tail = 0;
  head->nsources = 0;
  head->symbol_list_tail = 0;
  head->symbol_list_head = 0;
  do_sections_p1 (head);
  push_scope (1);

  for (i = 0; i < rawcount;)
    {
      struct internal_syment *sym = &rawsyms[i].u.syment;
      switch (sym->n_sclass)
 {
 case 138:
   {

     struct coff_sfile *n =
       (struct coff_sfile *) xmalloc (sizeof (struct coff_sfile));
     n->section = (struct coff_isection *) xcalloc (sizeof (struct coff_isection), abfd->section_count + 1);
     cur_sfile = n;
     n->name = sym->_n._n_nptr[1];
     n->next = 0;

     if (infile)
       {
  pop_scope ();
       }
     infile = 1;
     push_scope (1);
     file_scope = n->scope = top_scope;

     if (head->source_tail)
       head->source_tail->next = n;
     else
       head->source_head = n;
     head->source_tail = n;
     head->nsources++;
     i += sym->n_numaux + 1;
   }
   break;
 case 140:
   {
     char *name = sym->_n._n_nptr[1];
     if (name[1] == 'b')
       {

  push_scope (0);
  last_function_type->u.function.code = top_scope;
  top_scope->sec = ofile->sections + sym->n_scnum;
  top_scope->offset = sym->n_value;
       }
     else
       {
  top_scope->size = sym->n_value - top_scope->offset + 1;
  pop_scope ();

       }
     i += sym->n_numaux + 1;
   }
   break;

 case 144:
   {
     char *name = sym->_n._n_nptr[1];
     if (name[1] == 'b')
       {

  push_scope (1);
  top_scope->sec = ofile->sections + sym->n_scnum;
  top_scope->offset = sym->n_value;

       }
     else
       {
  top_scope->size = sym->n_value - top_scope->offset + 1;
  pop_scope ();
       }
     i += sym->n_numaux + 1;
   }
   break;
 case 132:
 case 146:
   i = do_define (i, last_function_symbol->type->u.function.parameters);
   break;
 case 135:
 case 134:
 case 139:
   i = do_define (i, last_struct->u.astructdef.elements);
   break;
 case 136:
   i = do_define (i, last_enum->u.aenumdef.elements);
   break;
 case 130:
 case 143:
 case 128:

   i = do_define (i, top_scope);
   break;
 case 141:
 case 137:
   i = do_define (i, file_scope);
   break;
 case 131:
 case 129:
 case 145:
 case 133:
   i = do_define (i, top_scope);
   break;
 default:
   abort ();
 case 142:
   i += sym->n_numaux + 1;
   break;
 }
    }
  do_sections_p2 (head);
  return head;
}
