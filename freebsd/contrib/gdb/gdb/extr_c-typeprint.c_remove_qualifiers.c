
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ alloca (int ) ;
 int strlen (char*) ;

__attribute__((used)) static char *
remove_qualifiers (char *qid)
{
  int quoted = 0;


  int depth = 0;
  char *parenstack = (char *) alloca (strlen (qid));
  char *scan;
  char *last = 0;


  for (scan = qid; *scan; scan++)
    {
      if (quoted)
 {
   if (*scan == quoted)
     quoted = 0;
   else if (*scan == '\\' && *(scan + 1))
     scan++;
 }
      else if (scan[0] == ':' && scan[1] == ':')
 {





   if (depth == 0)
     {
       last = scan + 2;
       scan++;
     }
 }
      else if (*scan == '"' || *scan == '\'')
 quoted = *scan;
      else if (*scan == '(')
 parenstack[depth++] = ')';
      else if (*scan == '[')
 parenstack[depth++] = ']';



      else if (*scan == '<')
 parenstack[depth++] = '>';
      else if (*scan == ')' || *scan == ']' || *scan == '>')
 {
   if (depth > 0 && parenstack[depth - 1] == *scan)
     depth--;
   else
     {




       int i;

       for (i = depth - 1; i >= 0; i--)
  if (parenstack[i] == *scan)
    {
      depth = i;
      break;
    }
     }
 }
    }

  if (last)
    return last;
  else


    return qid;
}
