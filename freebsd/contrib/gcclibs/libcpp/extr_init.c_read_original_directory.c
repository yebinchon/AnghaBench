
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int len; char* text; } ;
struct TYPE_12__ {TYPE_1__ str; } ;
struct TYPE_14__ {scalar_t__ type; TYPE_2__ val; } ;
typedef TYPE_4__ cpp_token ;
struct TYPE_13__ {int (* dir_change ) (TYPE_5__*,char*) ;} ;
struct TYPE_15__ {TYPE_3__ cb; } ;
typedef TYPE_5__ cpp_reader ;


 scalar_t__ CPP_HASH ;
 scalar_t__ CPP_NUMBER ;
 scalar_t__ CPP_STRING ;
 int _cpp_backup_tokens (TYPE_5__*,int) ;
 TYPE_4__* _cpp_lex_direct (TYPE_5__*) ;
 scalar_t__ alloca (int) ;
 int memcpy (char*,char const*,int) ;
 int stub1 (TYPE_5__*,char*) ;

__attribute__((used)) static void
read_original_directory (cpp_reader *pfile)
{
  const cpp_token *hash, *token;



  hash = _cpp_lex_direct (pfile);
  if (hash->type != CPP_HASH)
    {
      _cpp_backup_tokens (pfile, 1);
      return;
    }

  token = _cpp_lex_direct (pfile);

  if (token->type != CPP_NUMBER)
    {
      _cpp_backup_tokens (pfile, 2);
      return;
    }

  token = _cpp_lex_direct (pfile);

  if (token->type != CPP_STRING
      || ! (token->val.str.len >= 5
     && token->val.str.text[token->val.str.len-2] == '/'
     && token->val.str.text[token->val.str.len-3] == '/'))
    {
      _cpp_backup_tokens (pfile, 3);
      return;
    }

  if (pfile->cb.dir_change)
    {
      char *debugdir = (char *) alloca (token->val.str.len - 3);

      memcpy (debugdir, (const char *) token->val.str.text + 1,
       token->val.str.len - 4);
      debugdir[token->val.str.len - 4] = '\0';

      pfile->cb.dir_change (pfile, debugdir);
    }
}
