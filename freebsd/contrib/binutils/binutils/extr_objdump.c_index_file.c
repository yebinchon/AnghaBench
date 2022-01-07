
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ line_map_decrease ;
 char** xrealloc (char const**,unsigned long) ;

__attribute__((used)) static const char **
index_file (const char *map, size_t size, unsigned int *maxline)
{
  const char *p, *lstart, *end;
  int chars_per_line = 45;
  unsigned int lineno;
  const char **linemap = ((void*)0);
  unsigned long line_map_size = 0;

  lineno = 0;
  lstart = map;
  end = map + size;

  for (p = map; p < end; p++)
    {
      if (*p == '\n')
 {
   if (p + 1 < end && p[1] == '\r')
     p++;
 }
      else if (*p == '\r')
 {
   if (p + 1 < end && p[1] == '\n')
     p++;
 }
      else
 continue;



      if (linemap == ((void*)0) || line_map_size < lineno + 1)
 {
   unsigned long newsize;

   chars_per_line -= line_map_decrease;
   if (chars_per_line <= 1)
     chars_per_line = 1;
   line_map_size = size / chars_per_line + 1;
   if (line_map_size < lineno + 1)
     line_map_size = lineno + 1;
   newsize = line_map_size * sizeof (char *);
   linemap = xrealloc (linemap, newsize);
 }

      linemap[lineno++] = lstart;
      lstart = p + 1;
    }

  *maxline = lineno;
  return linemap;
}
