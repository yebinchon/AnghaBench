
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EOF ;
 int INF_GET () ;
 int INF_UNGET (int) ;
 int lineno ;
 int source_lineno ;

__attribute__((used)) static int
inf_skip_spaces (int c)
{
  for (;;)
    {
      if (c == ' ' || c == '\t')
 c = INF_GET ();
      else if (c == '/')
 {
   c = INF_GET ();
   if (c != '*')
     {
       (void) INF_UNGET (c);
       return '/';
     }
   c = INF_GET ();
   for (;;)
     {
       if (c == EOF)
  return EOF;
       else if (c != '*')
  {
    if (c == '\n')
      source_lineno++, lineno++;
    c = INF_GET ();
  }
       else if ((c = INF_GET ()) == '/')
  return INF_GET ();
     }
 }
      else
 break;
    }
  return c;
}
