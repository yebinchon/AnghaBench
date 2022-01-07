
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int type_p ;
typedef TYPE_1__* pair_p ;
struct TYPE_7__ {void* opt; } ;


 TYPE_1__* create_field (TYPE_1__*,int ,char const*) ;
 void* create_option (void*,char*,char const*) ;
 int lexer_line ;
 int new_structure (int ,int,int *,TYPE_1__*,int *) ;
 int xasprintf (char*,char*,int ) ;

__attribute__((used)) static pair_p
create_optional_field (pair_p next, type_p type, const char *name,
         const char *cond)
{
  static int id = 1;
  pair_p union_fields, field;
  type_p union_type;




  union_fields = create_field (((void*)0), type, "");
  union_fields->opt = create_option (union_fields->opt, "dot", "");
  union_fields->opt = create_option (union_fields->opt, "tag", "1");
  union_type = new_structure (xasprintf ("%s_%d", "fake_union", id++), 1,
         &lexer_line, union_fields, ((void*)0));



  field = create_field (next, union_type, name);
  field->opt = create_option (field->opt, "desc", cond);
  return field;
}
