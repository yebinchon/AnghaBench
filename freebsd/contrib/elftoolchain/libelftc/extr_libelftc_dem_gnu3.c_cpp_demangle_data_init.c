
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * container; } ;
struct cpp_demangle_data {int mem_rst; int mem_vat; int mem_cst; int mem_ref; int mem_rref; int is_tmpl; int is_functype; int ref_qualifier; char const* cur; TYPE_1__ output; TYPE_1__ subst; TYPE_1__ tmpl; TYPE_1__ class_type; int * last_sname; TYPE_1__* cur_output; scalar_t__ func_type; int push_qualifier; int cmd; } ;


 int PUSH_ALL_QUALIFIER ;
 int assert (int ) ;
 int vector_read_cmd_init (int *) ;
 int vector_str_dest (TYPE_1__*) ;
 int vector_str_init (TYPE_1__*) ;

__attribute__((used)) static int
cpp_demangle_data_init(struct cpp_demangle_data *d, const char *cur)
{

 if (d == ((void*)0) || cur == ((void*)0))
  return (0);

 if (!vector_str_init(&d->output))
  return (0);
 if (!vector_str_init(&d->subst))
  goto clean1;
 if (!vector_str_init(&d->tmpl))
  goto clean2;
 if (!vector_str_init(&d->class_type))
  goto clean3;
 if (!vector_read_cmd_init(&d->cmd))
  goto clean4;

 assert(d->output.container != ((void*)0));
 assert(d->subst.container != ((void*)0));
 assert(d->tmpl.container != ((void*)0));
 assert(d->class_type.container != ((void*)0));

 d->mem_rst = 0;
 d->mem_vat = 0;
 d->mem_cst = 0;
 d->mem_ref = 0;
 d->mem_rref = 0;
 d->is_tmpl = 0;
 d->is_functype = 0;
 d->ref_qualifier = 0;
 d->push_qualifier = PUSH_ALL_QUALIFIER;
 d->func_type = 0;
 d->cur = cur;
 d->cur_output = &d->output;
 d->last_sname = ((void*)0);

 return (1);

clean4:
 vector_str_dest(&d->class_type);
clean3:
 vector_str_dest(&d->tmpl);
clean2:
 vector_str_dest(&d->subst);
clean1:
 vector_str_dest(&d->output);

 return (0);
}
