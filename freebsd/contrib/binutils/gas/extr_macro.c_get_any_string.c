
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int len; char* ptr; } ;
typedef TYPE_1__ sb ;


 scalar_t__ ISBASE (char) ;
 int ISSEP (char) ;
 int _ (char*) ;
 int free (char*) ;
 int getstring (int,TYPE_1__*,TYPE_1__*) ;
 scalar_t__ macro_alternate ;
 int macro_expr (int ,int,TYPE_1__*,int*) ;
 scalar_t__ macro_mri ;
 int macro_strip_at ;
 int sb_add_char (TYPE_1__*,char) ;
 int sb_add_string (TYPE_1__*,char*) ;
 int sb_reset (TYPE_1__*) ;
 int sb_skip_white (int,TYPE_1__*) ;
 int sprintf (char*,char*,int) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 int stub1 (int ,int,TYPE_1__*,int*) ;
 char* xmalloc (int) ;

__attribute__((used)) static int
get_any_string (int idx, sb *in, sb *out)
{
  sb_reset (out);
  idx = sb_skip_white (idx, in);

  if (idx < in->len)
    {
      if (in->len > idx + 2 && in->ptr[idx + 1] == '\'' && ISBASE (in->ptr[idx]))
 {
   while (!ISSEP (in->ptr[idx]))
     sb_add_char (out, in->ptr[idx++]);
 }
      else if (in->ptr[idx] == '%' && macro_alternate)
 {
   int val;
   char buf[20];



   idx = (*macro_expr) (_("% operator needs absolute expression"),
          idx + 1,
          in,
          &val);
   sprintf (buf, "%d", val);
   sb_add_string (out, buf);
 }
      else if (in->ptr[idx] == '"'
        || (in->ptr[idx] == '<' && (macro_alternate || macro_mri))
        || (macro_alternate && in->ptr[idx] == '\''))
 {
   if (macro_alternate && ! macro_strip_at && in->ptr[idx] != '<')
     {

       sb_add_char (out, '"');
       idx = getstring (idx, in, out);
       sb_add_char (out, '"');
     }
   else
     {
       idx = getstring (idx, in, out);
     }
 }
      else
 {
   char *br_buf = xmalloc(1);
   char *in_br = br_buf;

   *in_br = '\0';
   while (idx < in->len
   && (*in_br
       || (in->ptr[idx] != ' '
    && in->ptr[idx] != '\t'))
   && in->ptr[idx] != ','
   && (in->ptr[idx] != '<'
       || (! macro_alternate && ! macro_mri)))
     {
       char tchar = in->ptr[idx];

       switch (tchar)
  {
  case '"':
  case '\'':
    sb_add_char (out, in->ptr[idx++]);
    while (idx < in->len
    && in->ptr[idx] != tchar)
      sb_add_char (out, in->ptr[idx++]);
    if (idx == in->len)
      return idx;
    break;
  case '(':
  case '[':
    if (in_br > br_buf)
      --in_br;
    else
      {
        br_buf = xmalloc(strlen(in_br) + 2);
        strcpy(br_buf + 1, in_br);
        free(in_br);
        in_br = br_buf;
      }
    *in_br = tchar;
    break;
  case ')':
    if (*in_br == '(')
      ++in_br;
    break;
  case ']':
    if (*in_br == '[')
      ++in_br;
    break;
  }
       sb_add_char (out, tchar);
       ++idx;
     }
   free(br_buf);
 }
    }

  return idx;
}
