
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef char cppchar_t ;
struct TYPE_11__ {unsigned int len; unsigned char* text; } ;
struct TYPE_12__ {TYPE_2__ str; } ;
struct TYPE_14__ {TYPE_3__ val; int type; } ;
typedef TYPE_5__ cpp_token ;
struct TYPE_13__ {scalar_t__ in_directive; } ;
struct TYPE_15__ {TYPE_4__ state; TYPE_1__* buffer; } ;
typedef TYPE_6__ cpp_reader ;
struct TYPE_10__ {unsigned char const* cur; } ;


 int CPP_COMMENT ;
 unsigned char* _cpp_unaligned_alloc (TYPE_6__*,unsigned int) ;
 scalar_t__ is_vspace (unsigned char const) ;
 int memcpy (unsigned char*,unsigned char const*,unsigned int) ;

__attribute__((used)) static void
save_comment (cpp_reader *pfile, cpp_token *token, const unsigned char *from,
       cppchar_t type)
{
  unsigned char *buffer;
  unsigned int len, clen;

  len = pfile->buffer->cur - from + 1;



  if (is_vspace (pfile->buffer->cur[-1]))
    len--;







  clen = (pfile->state.in_directive && type == '/') ? len + 2 : len;

  buffer = _cpp_unaligned_alloc (pfile, clen);

  token->type = CPP_COMMENT;
  token->val.str.len = clen;
  token->val.str.text = buffer;

  buffer[0] = '/';
  memcpy (buffer + 1, from, len - 1);


  if (pfile->state.in_directive && type == '/')
    {
      buffer[1] = '*';
      buffer[clen - 2] = '*';
      buffer[clen - 1] = '/';
    }
}
