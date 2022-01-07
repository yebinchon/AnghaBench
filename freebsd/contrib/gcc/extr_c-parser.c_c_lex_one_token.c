
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int * tree ;
typedef enum rid { ____Placeholder_rid } rid ;
struct TYPE_4__ {int type; int keyword; int * value; int pragma_kind; int id_kind; int in_system_header; int location; } ;
typedef TYPE_1__ c_token ;
typedef int c_parser ;






 void* CPP_KEYWORD ;
 int const CPP_MINUS ;
 int const CPP_MINUS_MINUS ;
 int const CPP_MULT ;

 int const CPP_OPEN_PAREN ;
 int const CPP_OPEN_SQUARE ;
 int const CPP_PLUS ;
 int const CPP_PLUS_PLUS ;


 int C_ID_CLASSNAME ;
 int C_ID_ID ;
 int C_ID_NONE ;
 int C_ID_TYPENAME ;
 int C_IS_RESERVED_WORD (int *) ;
 void* C_RID_CODE (int *) ;
 int OBJC_IS_AT_KEYWORD (int) ;
 int OBJC_IS_PQ_KEYWORD (int) ;
 int OBJC_NEED_RAW_IDENTIFIER (int ) ;
 int PRAGMA_NONE ;
 int RID_IN ;
 int RID_MAX ;
 int TREE_CODE (int *) ;
 int TREE_INT_CST_LOW (int *) ;
 int TV_LEX ;
 int TYPE_DECL ;
 int c_dialect_objc () ;
 int c_lex_with_flags (int **,int *,int *) ;
 TYPE_1__* c_parser_peek_2nd_token (int *) ;
 int global_bindings_p () ;
 int in_system_header ;
 int * lookup_name (int *) ;
 int objc_foreach_context ;
 int * objc_is_class_name (int *) ;
 int objc_need_raw_identifier ;
 int objc_pq_context ;
 void** ridpointers ;
 int timevar_pop (int ) ;
 int timevar_push (int ) ;

__attribute__((used)) static void
c_lex_one_token (c_token *token, c_parser *parser)
{
  timevar_push (TV_LEX);

  token->type = c_lex_with_flags (&token->value, &token->location, ((void*)0));
  token->id_kind = C_ID_NONE;
  token->keyword = RID_MAX;
  token->pragma_kind = PRAGMA_NONE;
  token->in_system_header = in_system_header;

  switch (token->type)
    {
    case 130:
      {
 tree decl;

 int objc_force_identifier = objc_need_raw_identifier;
 OBJC_NEED_RAW_IDENTIFIER (0);

 if (C_IS_RESERVED_WORD (token->value))
   {
     enum rid rid_code = C_RID_CODE (token->value);

     if (c_dialect_objc ())
       {
  if (!OBJC_IS_AT_KEYWORD (rid_code)
      && (!OBJC_IS_PQ_KEYWORD (rid_code) || objc_pq_context))
    {

      token->value = ridpointers[(int) rid_code];
      token->type = CPP_KEYWORD;
      token->keyword = rid_code;
      break;
    }

  else if (objc_foreach_context && rid_code == RID_IN)
    {

      c_token *tk = c_parser_peek_2nd_token (parser);
      if (tk->type == 130
   || tk->type == CPP_OPEN_PAREN
   || tk->type == CPP_MULT
   || tk->type == CPP_PLUS
   || tk->type == CPP_PLUS_PLUS
   || tk->type == CPP_MINUS
   || tk->type == CPP_MINUS_MINUS

   || tk->type == CPP_OPEN_SQUARE)
        {
   token->type = CPP_KEYWORD;
   token->keyword = rid_code;
   break;
        }
    }

       }
     else
       {

  token->value = ridpointers[(int) rid_code];
  token->type = CPP_KEYWORD;
  token->keyword = rid_code;
  break;
       }
   }

 decl = lookup_name (token->value);
 if (decl)
   {
     if (TREE_CODE (decl) == TYPE_DECL)
       {
  token->id_kind = C_ID_TYPENAME;
  break;
       }
   }
 else if (c_dialect_objc ())
   {
     tree objc_interface_decl = objc_is_class_name (token->value);



     if (objc_interface_decl
  && (global_bindings_p ()
      || (!objc_force_identifier && !decl)))
       {
  token->value = objc_interface_decl;
  token->id_kind = C_ID_CLASSNAME;
  break;
       }
   }
        token->id_kind = C_ID_ID;
      }
      break;
    case 134:

      token->type = CPP_KEYWORD;
      token->keyword = C_RID_CODE (token->value);
      break;
    case 132:
    case 131:
    case 133:
    case 128:


      OBJC_NEED_RAW_IDENTIFIER (0);
      break;
    case 129:

      token->pragma_kind = TREE_INT_CST_LOW (token->value);
      token->value = ((void*)0);
      break;
    default:
      break;
    }
  timevar_pop (TV_LEX);
}
