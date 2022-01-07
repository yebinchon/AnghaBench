
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* tree ;
struct c_typespec {void* spec; void* kind; } ;
struct c_declspecs {int type_seen_p; } ;
typedef int c_parser ;
typedef scalar_t__ c_id_kind ;
struct TYPE_2__ {scalar_t__ id_kind; int keyword; void* value; } ;


 int CPP_KEYWORD ;
 int CPP_LESS ;
 int CPP_NAME ;
 scalar_t__ C_ID_CLASSNAME ;
 scalar_t__ C_ID_TYPENAME ;
 void* NULL_TREE ;
 int OBJC_NEED_RAW_IDENTIFIER (int) ;
 scalar_t__ c_dialect_objc () ;
 void* c_parser_attributes (int *) ;
 int c_parser_consume_token (int *) ;
 struct c_typespec c_parser_enum_specifier (int *) ;
 scalar_t__ c_parser_next_token_is (int *,int ) ;
 scalar_t__ c_parser_next_token_is_not (int *,int ) ;
 void* c_parser_objc_protocol_refs (int *) ;
 TYPE_1__* c_parser_peek_token (int *) ;
 struct c_typespec c_parser_struct_or_union_specifier (int *) ;
 struct c_typespec c_parser_typeof_specifier (int *) ;
 void* ctsk_objc ;
 void* ctsk_resword ;
 void* ctsk_typedef ;
 int declspecs_add_attrs (struct c_declspecs*,void*) ;
 int declspecs_add_qual (struct c_declspecs*,void*) ;
 int declspecs_add_scspec (struct c_declspecs*,void*) ;
 int declspecs_add_type (struct c_declspecs*,struct c_typespec) ;
 int gcc_assert (scalar_t__) ;
 void* lookup_name (void*) ;
 void* objc_get_protocol_qualified_type (void*,void*) ;

__attribute__((used)) static void
c_parser_declspecs (c_parser *parser, struct c_declspecs *specs,
      bool scspec_ok, bool typespec_ok, bool start_attr_ok)
{
  bool attrs_ok = start_attr_ok;
  bool seen_type = specs->type_seen_p;
  while (c_parser_next_token_is (parser, CPP_NAME)
  || c_parser_next_token_is (parser, CPP_KEYWORD)
  || (c_dialect_objc () && c_parser_next_token_is (parser, CPP_LESS)))
    {
      struct c_typespec t;
      tree attrs;
      if (c_parser_next_token_is (parser, CPP_NAME))
 {
   tree value = c_parser_peek_token (parser)->value;
   c_id_kind kind = c_parser_peek_token (parser)->id_kind;



   if (!typespec_ok || seen_type
       || (kind != C_ID_TYPENAME && kind != C_ID_CLASSNAME))
     break;
   c_parser_consume_token (parser);
   seen_type = 1;
   attrs_ok = 1;
   if (kind == C_ID_TYPENAME
       && (!c_dialect_objc ()
    || c_parser_next_token_is_not (parser, CPP_LESS)))
     {
       t.kind = ctsk_typedef;


       t.spec = lookup_name (value);
     }
   else
     {
       tree proto = NULL_TREE;
       gcc_assert (c_dialect_objc ());
       t.kind = ctsk_objc;
       if (c_parser_next_token_is (parser, CPP_LESS))
  proto = c_parser_objc_protocol_refs (parser);
       t.spec = objc_get_protocol_qualified_type (value, proto);
     }
   declspecs_add_type (specs, t);
   continue;
 }
      if (c_parser_next_token_is (parser, CPP_LESS))
 {


   tree proto;
   gcc_assert (c_dialect_objc ());
   if (!typespec_ok || seen_type)
     break;
   proto = c_parser_objc_protocol_refs (parser);
   t.kind = ctsk_objc;
   t.spec = objc_get_protocol_qualified_type (NULL_TREE, proto);
   declspecs_add_type (specs, t);
   continue;
 }
      gcc_assert (c_parser_next_token_is (parser, CPP_KEYWORD));
      switch (c_parser_peek_token (parser)->keyword)
 {
 case 136:
 case 145:
 case 140:
 case 133:
 case 143:
 case 155:
 case 134:
   if (!scspec_ok)
     goto out;
   attrs_ok = 1;



   declspecs_add_scspec (specs, c_parser_peek_token (parser)->value);
   c_parser_consume_token (parser);
   break;
 case 130:
 case 141:
 case 138:
 case 137:
 case 152:
 case 142:
 case 153:
 case 144:
 case 147:
 case 129:
 case 149:
 case 148:
 case 150:
 case 154:
   if (!typespec_ok)
     goto out;
   attrs_ok = 1;
   seen_type = 1;
   OBJC_NEED_RAW_IDENTIFIER (1);
   t.kind = ctsk_resword;
   t.spec = c_parser_peek_token (parser)->value;
   declspecs_add_type (specs, t);
   c_parser_consume_token (parser);
   break;
 case 146:
   if (!typespec_ok)
     goto out;
   attrs_ok = 1;
   seen_type = 1;
   t = c_parser_enum_specifier (parser);
   declspecs_add_type (specs, t);
   break;
 case 135:
 case 131:
   if (!typespec_ok)
     goto out;
   attrs_ok = 1;
   seen_type = 1;
   t = c_parser_struct_or_union_specifier (parser);
   declspecs_add_type (specs, t);
   break;
 case 132:



   if (!typespec_ok || seen_type)
     goto out;
   attrs_ok = 1;
   seen_type = 1;
   t = c_parser_typeof_specifier (parser);
   declspecs_add_type (specs, t);
   break;
 case 151:
 case 128:
 case 139:
   attrs_ok = 1;
   declspecs_add_qual (specs, c_parser_peek_token (parser)->value);
   c_parser_consume_token (parser);
   break;
 case 156:
   if (!attrs_ok)
     goto out;
   attrs = c_parser_attributes (parser);
   declspecs_add_attrs (specs, attrs);
   break;
 default:
   goto out;
 }
    }
 out: ;
}
