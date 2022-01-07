
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int len; char* ptr; } ;
typedef TYPE_1__ sb ;


 scalar_t__ macro_alternate ;
 scalar_t__ macro_mri ;
 int sb_add_char (TYPE_1__*,char) ;

__attribute__((used)) static int
getstring (int idx, sb *in, sb *acc)
{
  while (idx < in->len
  && (in->ptr[idx] == '"'
      || (in->ptr[idx] == '<' && (macro_alternate || macro_mri))
      || (in->ptr[idx] == '\'' && macro_alternate)))
    {
      if (in->ptr[idx] == '<')
 {
   int nest = 0;
   idx++;
   while ((in->ptr[idx] != '>' || nest)
   && idx < in->len)
     {
       if (in->ptr[idx] == '!')
  {
    idx++;
    sb_add_char (acc, in->ptr[idx++]);
  }
       else
  {
    if (in->ptr[idx] == '>')
      nest--;
    if (in->ptr[idx] == '<')
      nest++;
    sb_add_char (acc, in->ptr[idx++]);
  }
     }
   idx++;
 }
      else if (in->ptr[idx] == '"' || in->ptr[idx] == '\'')
 {
   char tchar = in->ptr[idx];
   int escaped = 0;

   idx++;

   while (idx < in->len)
     {
       if (in->ptr[idx - 1] == '\\')
  escaped ^= 1;
       else
  escaped = 0;

       if (macro_alternate && in->ptr[idx] == '!')
  {
    idx ++;

    sb_add_char (acc, in->ptr[idx]);

    idx ++;
  }
       else if (escaped && in->ptr[idx] == tchar)
  {
    sb_add_char (acc, tchar);
    idx ++;
  }
       else
  {
    if (in->ptr[idx] == tchar)
      {
        idx ++;

        if (idx >= in->len || in->ptr[idx] != tchar)
   break;
      }

    sb_add_char (acc, in->ptr[idx]);
    idx ++;
  }
     }
 }
    }

  return idx;
}
