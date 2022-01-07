
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uchar ;
struct TYPE_5__ {int len; int * text; } ;
typedef TYPE_1__ cpp_string ;
typedef int cpp_reader ;
struct TYPE_6__ {unsigned int paramc; int ** params; } ;
typedef TYPE_2__ cpp_macro ;
typedef int cpp_hashnode ;


 int CPP_DL_WARNING ;
 unsigned int NODE_LEN (int const*) ;
 int NODE_NAME (int const*) ;
 int cpp_error (int *,int ,char*,int ) ;
 scalar_t__ is_idchar (int const) ;
 int is_idstart (int const) ;
 int memcmp (int const*,int ,unsigned int) ;

__attribute__((used)) static void
check_trad_stringification (cpp_reader *pfile, const cpp_macro *macro,
       const cpp_string *string)
{
  unsigned int i, len;
  const uchar *p, *q, *limit;


  limit = string->text + string->len - 1;
  for (p = string->text + 1; p < limit; p = q)
    {

      while (p < limit && !is_idstart (*p))
 p++;


      q = p;
      while (q < limit && is_idchar (*q))
 q++;

      len = q - p;



      for (i = 0; i < macro->paramc; i++)
 {
   const cpp_hashnode *node = macro->params[i];

   if (NODE_LEN (node) == len
       && !memcmp (p, NODE_NAME (node), len))
     {
       cpp_error (pfile, CPP_DL_WARNING,
    "macro argument \"%s\" would be stringified in traditional C",
    NODE_NAME (node));
       break;
     }
 }
    }
}
