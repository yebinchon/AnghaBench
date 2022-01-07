
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef char uchar ;
typedef enum cpp_ttype { ____Placeholder_cpp_ttype } cpp_ttype ;
typedef char cppchar_t ;
typedef int cpp_token ;
struct TYPE_8__ {int skipping; int in_diagnostic; int angled_headers; } ;
struct TYPE_10__ {TYPE_2__* buffer; TYPE_1__ state; } ;
typedef TYPE_3__ cpp_reader ;
struct TYPE_9__ {char const* cur; } ;


 scalar_t__ CLK_ASM ;
 int CPP_CHAR ;
 int CPP_DL_PEDWARN ;
 int CPP_DL_WARNING ;
 int CPP_HEADER_NAME ;
 scalar_t__ CPP_OPTION (TYPE_3__*,int ) ;
 int CPP_OTHER ;
 int CPP_STRING ;
 int CPP_WCHAR ;
 int CPP_WSTRING ;
 int cpp_error (TYPE_3__*,int ,char*,...) ;
 int create_literal (TYPE_3__*,int *,char const*,int,int) ;
 int lang ;

__attribute__((used)) static void
lex_string (cpp_reader *pfile, cpp_token *token, const uchar *base)
{
  bool saw_NUL = 0;
  const uchar *cur;
  cppchar_t terminator;
  enum cpp_ttype type;

  cur = base;
  terminator = *cur++;
  if (terminator == 'L')
    terminator = *cur++;
  if (terminator == '\"')
    type = *base == 'L' ? CPP_WSTRING: CPP_STRING;
  else if (terminator == '\'')
    type = *base == 'L' ? CPP_WCHAR: CPP_CHAR;
  else
    terminator = '>', type = CPP_HEADER_NAME;

  for (;;)
    {
      cppchar_t c = *cur++;


      if (c == '\\' && !pfile->state.angled_headers && *cur != '\n')
 cur++;
      else if (c == terminator)
 break;
      else if (c == '\n')
 {
   cur--;
   type = CPP_OTHER;
   break;
 }
      else if (c == '\0')
 saw_NUL = 1;
    }

  if (saw_NUL && !pfile->state.skipping)
    cpp_error (pfile, CPP_DL_WARNING,
        "null character(s) preserved in literal");


  if (type == CPP_OTHER
      && CPP_OPTION (pfile, lang) != CLK_ASM
      && !pfile->state.in_diagnostic
      && !pfile->state.skipping)

    cpp_error (pfile, CPP_DL_PEDWARN, "missing terminating %c character",
        (int) terminator);

  pfile->buffer->cur = cur;
  create_literal (pfile, token, base, cur - base, type);
}
