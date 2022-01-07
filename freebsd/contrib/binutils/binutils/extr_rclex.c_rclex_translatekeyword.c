
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rclex_keywords {int tok; int * name; } ;


 scalar_t__ ISUPPER (char const) ;
 int STRING ;
 struct rclex_keywords* keywds ;
 int strcmp (int *,char const*) ;

__attribute__((used)) static int
rclex_translatekeyword (const char *key)
{
  if (key && ISUPPER (key[0]))
    {
      const struct rclex_keywords *kw = &keywds[0];

      do
        {
   if (! strcmp (kw->name, key))
     return kw->tok;
   ++kw;
        }
      while (kw->name != ((void*)0));
    }
  return STRING;
}
