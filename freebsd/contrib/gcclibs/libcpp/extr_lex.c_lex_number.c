
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef char uchar ;
struct normalize_state {int dummy; } ;
struct TYPE_9__ {int len; char* text; } ;
typedef TYPE_2__ cpp_string ;
struct TYPE_10__ {TYPE_1__* buffer; } ;
typedef TYPE_3__ cpp_reader ;
struct TYPE_8__ {char* cur; } ;


 scalar_t__ ISIDNUM (char const) ;
 int NORMALIZE_STATE_UPDATE_IDNUM (struct normalize_state*) ;
 scalar_t__ VALID_SIGN (char const,char const) ;
 char* _cpp_unaligned_alloc (TYPE_3__*,int) ;
 scalar_t__ forms_identifier_p (TYPE_3__*,int,struct normalize_state*) ;
 int memcpy (char*,char const*,int) ;

__attribute__((used)) static void
lex_number (cpp_reader *pfile, cpp_string *number,
     struct normalize_state *nst)
{
  const uchar *cur;
  const uchar *base;
  uchar *dest;

  base = pfile->buffer->cur - 1;
  do
    {
      cur = pfile->buffer->cur;


      while (ISIDNUM (*cur) || *cur == '.' || VALID_SIGN (*cur, cur[-1]))
 {
   cur++;
   NORMALIZE_STATE_UPDATE_IDNUM (nst);
 }

      pfile->buffer->cur = cur;
    }
  while (forms_identifier_p (pfile, 0, nst));

  number->len = cur - base;
  dest = _cpp_unaligned_alloc (pfile, number->len + 1);
  memcpy (dest, base, number->len);
  dest[number->len] = '\0';
  number->text = dest;
}
