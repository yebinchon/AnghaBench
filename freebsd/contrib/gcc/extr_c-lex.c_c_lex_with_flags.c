
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int tree ;
typedef int location_t ;
typedef enum cpp_ttype { ____Placeholder_cpp_ttype } cpp_ttype ;
typedef char cppchar_t ;
struct TYPE_11__ {int len; char* text; } ;
struct TYPE_12__ {int pragma; TYPE_1__ str; int node; } ;
struct TYPE_13__ {int type; unsigned char flags; TYPE_2__ val; int src_loc; } ;
typedef TYPE_3__ cpp_token ;



 int CPP_AT_NAME ;







 unsigned int CPP_N_CATEGORY ;
 int HT_IDENT_TO_GCC_IDENT (int ) ;
 int HT_NODE (int ) ;
 int ISGRAPH (char) ;
 int NULL_TREE ;
 unsigned char PURE_ZERO ;
 int TV_CPP ;
 int build_int_cst (int *,int ) ;
 int build_string (int,char*) ;
 int c_common_no_more_pch () ;
 int c_dialect_objc () ;
 int c_lex_return_raw_strings ;
 unsigned int cpp_classify_number (int ,TYPE_3__ const*) ;
 TYPE_3__* cpp_get_token (int ) ;
 int * cpp_spell_token (int ,TYPE_3__ const*,unsigned char*,int) ;
 int error (char*,...) ;
 int error_mark_node ;
 int errorcount ;
 int gcc_unreachable () ;
 int input_location ;
 int interpret_float (TYPE_3__ const*,unsigned int) ;
 int interpret_integer (TYPE_3__ const*,unsigned int) ;
 int lex_charconst (TYPE_3__ const*) ;
 int lex_string (TYPE_3__ const*,int *,int) ;
 int objc_is_reserved_word (int ) ;
 int parse_in ;
 int timevar_pop (int ) ;
 int timevar_push (int ) ;

enum cpp_ttype
c_lex_with_flags (tree *value, location_t *loc, unsigned char *cpp_flags)
{
  static bool no_more_pch;
  const cpp_token *tok;
  enum cpp_ttype type;
  unsigned char add_flags = 0;

  timevar_push (TV_CPP);
 retry:
  tok = cpp_get_token (parse_in);
  type = tok->type;

 retry_after_at:



  *loc = input_location;

  switch (type)
    {
    case 133:
      goto retry;

    case 139:
      *value = HT_IDENT_TO_GCC_IDENT (HT_NODE (tok->val.node));
      break;

    case 138:
      {
 unsigned int flags = cpp_classify_number (parse_in, tok);

 switch (flags & CPP_N_CATEGORY)
   {
   case 135:

     *value = error_mark_node;
     errorcount++;
     break;

   case 136:


     if (tok->val.str.len == 1 && *tok->val.str.text == '0')
       add_flags = PURE_ZERO;
     *value = interpret_integer (tok, flags);
     break;

   case 137:
     *value = interpret_float (tok, flags);
     break;

   default:
     gcc_unreachable ();
   }
      }
      break;

    case 145:

      if (c_dialect_objc ())
 {
   location_t atloc = input_location;

 retry_at:
   tok = cpp_get_token (parse_in);
   type = tok->type;
   switch (type)
     {
     case 133:
       goto retry_at;

     case 130:
     case 128:
       type = lex_string (tok, value, 1);
       break;

     case 139:
       *value = HT_IDENT_TO_GCC_IDENT (HT_NODE (tok->val.node));
       if (objc_is_reserved_word (*value))
  {
    type = CPP_AT_NAME;
    break;
  }


     default:

       error ("%Hstray %<@%> in program", &atloc);
       goto retry_after_at;
     }
   break;
 }


    case 142:
    case 132:
      {
 unsigned char name[4];

 *cpp_spell_token (parse_in, tok, name, 1) = 0;

 error ("stray %qs in program", name);
      }

      goto retry;

    case 134:
      {
 cppchar_t c = tok->val.str.text[0];

 if (c == '"' || c == '\'')
   error ("missing terminating %c character", (int) c);
 else if (ISGRAPH (c))
   error ("stray %qc in program", (int) c);
 else
   error ("stray %<\\%o%> in program", (int) c);
      }
      goto retry;

    case 144:
    case 129:
      *value = lex_charconst (tok);
      break;

    case 130:
    case 128:
      if (!c_lex_return_raw_strings)
 {
   type = lex_string (tok, value, 0);
   break;
 }
      *value = build_string (tok->val.str.len, (char *) tok->val.str.text);
      break;

    case 131:
      *value = build_int_cst (((void*)0), tok->val.pragma);
      break;


    case 141:
    case 143:
    case 140:
      gcc_unreachable ();

    default:
      *value = NULL_TREE;
      break;
    }

  if (cpp_flags)
    *cpp_flags = tok->flags | add_flags;

  if (!no_more_pch)
    {
      no_more_pch = 1;
      c_common_no_more_pch ();
    }

  timevar_pop (TV_CPP);

  return type;
}
