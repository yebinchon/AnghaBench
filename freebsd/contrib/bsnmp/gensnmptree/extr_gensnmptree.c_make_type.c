
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct type {int enums; int from_lno; void* from_fname; int syntax; scalar_t__ is_enum; void* name; } ;
struct TYPE_2__ {char const* fname; int lno; } ;


 int LIST_INSERT_HEAD (int *,struct type*,int ) ;
 int SNMP_SYNTAX_NULL ;
 int TAILQ_INIT (int *) ;
 TYPE_1__* input ;
 int link ;
 void* savestr (char const*) ;
 int types ;
 struct type* xalloc (int) ;

__attribute__((used)) static struct type *
make_type(const char *s)
{
 struct type *t;

 t = xalloc(sizeof(*t));
 t->name = savestr(s);
 t->is_enum = 0;
 t->syntax = SNMP_SYNTAX_NULL;
 t->from_fname = savestr(input->fname);
 t->from_lno = input->lno;
 TAILQ_INIT(&t->enums);
 LIST_INSERT_HEAD(&types, t, link);

 return (t);
}
