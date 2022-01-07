
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ lin ;


 int INT_MAX ;
 size_t LIN_MAX ;
 int MIN (size_t,int ) ;
 size_t find_function_last_match ;
 scalar_t__ find_function_last_search ;
 int function_regexp ;
 scalar_t__ re_search (int *,char const*,int,int ,int,int ) ;

__attribute__((used)) static char const *
find_function (char const * const *linbuf, lin linenum)
{
  lin i = linenum;
  lin last = find_function_last_search;
  find_function_last_search = i;

  while (last <= --i)
    {

      char const *line = linbuf[i];
      size_t linelen = linbuf[i + 1] - line - 1;


      int len = MIN (linelen, INT_MAX);

      if (0 <= re_search (&function_regexp, line, len, 0, len, 0))
 {
   find_function_last_match = i;
   return line;
 }
    }


  if (find_function_last_match != LIN_MAX)
    return linbuf[find_function_last_match];

  return 0;
}
