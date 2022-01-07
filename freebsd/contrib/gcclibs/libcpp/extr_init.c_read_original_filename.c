
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ type; int flags; } ;
typedef TYPE_2__ cpp_token ;
struct TYPE_10__ {int in_directive; } ;
struct TYPE_12__ {TYPE_1__ state; } ;
typedef TYPE_3__ cpp_reader ;


 scalar_t__ CPP_HASH ;
 scalar_t__ CPP_NUMBER ;
 int PREV_WHITE ;
 int _cpp_backup_tokens (TYPE_3__*,int) ;
 int _cpp_handle_directive (TYPE_3__*,int) ;
 TYPE_2__* _cpp_lex_direct (TYPE_3__*) ;
 int read_original_directory (TYPE_3__*) ;

__attribute__((used)) static void
read_original_filename (cpp_reader *pfile)
{
  const cpp_token *token, *token1;



  token = _cpp_lex_direct (pfile);
  if (token->type == CPP_HASH)
    {
      pfile->state.in_directive = 1;
      token1 = _cpp_lex_direct (pfile);
      _cpp_backup_tokens (pfile, 1);
      pfile->state.in_directive = 0;


      if (token1->type == CPP_NUMBER)
 {
   _cpp_handle_directive (pfile, token->flags & PREV_WHITE);
   read_original_directory (pfile);
   return;
 }
    }


  _cpp_backup_tokens (pfile, 1);
}
