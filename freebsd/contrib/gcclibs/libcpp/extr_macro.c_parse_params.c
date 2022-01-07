
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_17__ {int node; } ;
struct TYPE_20__ {int type; TYPE_1__ val; } ;
typedef TYPE_4__ cpp_token ;
struct TYPE_19__ {int va_args_ok; } ;
struct TYPE_18__ {int n__VA_ARGS__; } ;
struct TYPE_21__ {TYPE_3__ state; TYPE_2__ spec_nodes; } ;
typedef TYPE_5__ cpp_reader ;
struct TYPE_22__ {int variadic; int paramc; } ;
typedef TYPE_6__ cpp_macro ;




 int CPP_COMMENT ;
 int CPP_DL_ERROR ;
 int CPP_DL_PEDWARN ;



 int CPP_OPTION (TYPE_5__*,int ) ;
 TYPE_4__* _cpp_lex_token (TYPE_5__*) ;
 int _cpp_save_parameter (TYPE_5__*,TYPE_6__*,int ) ;
 int c99 ;
 int cpp_error (TYPE_5__*,int ,char*,...) ;
 int cpp_token_as_text (TYPE_5__*,TYPE_4__ const*) ;
 int discard_comments_in_macro_exp ;
 int pedantic ;
 int warn_variadic_macros ;

__attribute__((used)) static bool
parse_params (cpp_reader *pfile, cpp_macro *macro)
{
  unsigned int prev_ident = 0;

  for (;;)
    {
      const cpp_token *token = _cpp_lex_token (pfile);

      switch (token->type)
 {
 default:


   if (token->type == CPP_COMMENT
       && ! CPP_OPTION (pfile, discard_comments_in_macro_exp))
     continue;

   cpp_error (pfile, CPP_DL_ERROR,
       "\"%s\" may not appear in macro parameter list",
       cpp_token_as_text (pfile, token));
   return 0;

 case 128:
   if (prev_ident)
     {
       cpp_error (pfile, CPP_DL_ERROR,
    "macro parameters must be comma-separated");
       return 0;
     }
   prev_ident = 1;

   if (_cpp_save_parameter (pfile, macro, token->val.node))
     return 0;
   continue;

 case 132:
   if (prev_ident || macro->paramc == 0)
     return 1;


 case 131:
   if (!prev_ident)
     {
       cpp_error (pfile, CPP_DL_ERROR, "parameter name missing");
       return 0;
     }
   prev_ident = 0;
   continue;

 case 130:
   macro->variadic = 1;
   if (!prev_ident)
     {
       _cpp_save_parameter (pfile, macro,
       pfile->spec_nodes.n__VA_ARGS__);
       pfile->state.va_args_ok = 1;
       if (! CPP_OPTION (pfile, c99)
    && CPP_OPTION (pfile, pedantic)
    && CPP_OPTION (pfile, warn_variadic_macros))
  cpp_error (pfile, CPP_DL_PEDWARN,
      "anonymous variadic macros were introduced in C99");
     }
   else if (CPP_OPTION (pfile, pedantic)
     && CPP_OPTION (pfile, warn_variadic_macros))
     cpp_error (pfile, CPP_DL_PEDWARN,
         "ISO C does not permit named variadic macros");


   token = _cpp_lex_token (pfile);
   if (token->type == 132)
     return 1;


 case 129:
   cpp_error (pfile, CPP_DL_ERROR, "missing ')' in macro parameter list");
   return 0;
 }
    }
}
