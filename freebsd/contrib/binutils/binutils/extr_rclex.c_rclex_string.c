
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char rclex_peekch () ;
 char rclex_readch () ;

__attribute__((used)) static void
rclex_string (void)
{
  int c;

  while ((c = rclex_peekch ()) != -1)
    {
      if (c == '\n')
 break;
      if (c == '\\')
        {
   rclex_readch ();
   if ((c = rclex_peekch ()) == -1 || c == '\n')
     break;
   rclex_readch ();
        }
      else if (rclex_readch () == '"')
 {
   if (rclex_peekch () == '"')
     rclex_readch ();
   else
     break;
 }
    }
}
