
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef int uchar ;
struct TYPE_20__ {scalar_t__ in_directive; } ;
struct TYPE_22__ {TYPE_3__* buffer; int cur_token; TYPE_2__ state; } ;
typedef TYPE_4__ cpp_reader ;
struct TYPE_19__ {scalar_t__ builtin; } ;
struct TYPE_23__ {TYPE_1__ value; } ;
typedef TYPE_5__ cpp_hashnode ;
struct TYPE_21__ {scalar_t__ cur; scalar_t__ rlimit; } ;


 scalar_t__ BT_PRAGMA ;
 int CPP_DL_ICE ;
 int NODE_NAME (TYPE_5__*) ;
 int * _cpp_builtin_macro_text (TYPE_4__*,TYPE_5__*) ;
 int _cpp_clean_line (TYPE_4__*) ;
 int _cpp_do__Pragma (TYPE_4__*) ;
 int _cpp_lex_direct (TYPE_4__*) ;
 int _cpp_pop_buffer (TYPE_4__*) ;
 int _cpp_push_token_context (TYPE_4__*,int *,int ,int) ;
 int _cpp_temp_token (TYPE_4__*) ;
 scalar_t__ alloca (size_t) ;
 int cpp_error (TYPE_4__*,int ,char*,int ) ;
 int cpp_push_buffer (TYPE_4__*,int *,size_t,int) ;
 int memcpy (char*,int const*,size_t) ;
 size_t ustrlen (int const*) ;

__attribute__((used)) static int
builtin_macro (cpp_reader *pfile, cpp_hashnode *node)
{
  const uchar *buf;
  size_t len;
  char *nbuf;

  if (node->value.builtin == BT_PRAGMA)
    {


      if (pfile->state.in_directive)
 return 0;

      _cpp_do__Pragma (pfile);
      return 1;
    }

  buf = _cpp_builtin_macro_text (pfile, node);
  len = ustrlen (buf);
  nbuf = (char *) alloca (len + 1);
  memcpy (nbuf, buf, len);
  nbuf[len]='\n';

  cpp_push_buffer (pfile, (uchar *) nbuf, len, 1);
  _cpp_clean_line (pfile);


  pfile->cur_token = _cpp_temp_token (pfile);
  _cpp_push_token_context (pfile, ((void*)0), _cpp_lex_direct (pfile), 1);
  if (pfile->buffer->cur != pfile->buffer->rlimit)
    cpp_error (pfile, CPP_DL_ICE, "invalid built-in macro \"%s\"",
        NODE_NAME (node));
  _cpp_pop_buffer (pfile);

  return 1;
}
