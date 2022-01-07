
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct change {size_t line0; size_t line1; size_t deleted; size_t inserted; struct change* link; } ;
typedef size_t lin ;
typedef enum changes { ____Placeholder_changes } changes ;
struct TYPE_5__ {char** linbuf; } ;
struct TYPE_4__ {scalar_t__ fastmap; } ;


 scalar_t__ IGNORE_SPACE_CHANGE ;
 int NEW ;
 int OLD ;
 int UNCHANGED ;
 TYPE_3__* files ;
 int ignore_blank_lines ;
 TYPE_1__ ignore_regexp ;
 scalar_t__ ignore_white_space ;
 scalar_t__ isspace (unsigned char) ;
 scalar_t__ re_search (TYPE_1__*,char const*,size_t,int ,size_t,int ) ;

enum changes
analyze_hunk (struct change *hunk,
       lin *first0, lin *last0,
       lin *first1, lin *last1)
{
  struct change *next;
  lin l0, l1;
  lin show_from, show_to;
  lin i;
  bool trivial = ignore_blank_lines || ignore_regexp.fastmap;
  size_t trivial_length = ignore_blank_lines - 1;


  bool skip_leading_white_space =
    (ignore_blank_lines && IGNORE_SPACE_CHANGE <= ignore_white_space);

  char const * const *linbuf0 = files[0].linbuf;
  char const * const *linbuf1 = files[1].linbuf;

  show_from = show_to = 0;

  *first0 = hunk->line0;
  *first1 = hunk->line1;

  next = hunk;
  do
    {
      l0 = next->line0 + next->deleted - 1;
      l1 = next->line1 + next->inserted - 1;
      show_from += next->deleted;
      show_to += next->inserted;

      for (i = next->line0; i <= l0 && trivial; i++)
 {
   char const *line = linbuf0[i];
   char const *newline = linbuf0[i + 1] - 1;
   size_t len = newline - line;
   char const *p = line;
   if (skip_leading_white_space)
     while (isspace ((unsigned char) *p) && *p != '\n')
       p++;
   if (newline - p != trivial_length
       && (! ignore_regexp.fastmap
    || re_search (&ignore_regexp, line, len, 0, len, 0) < 0))
     trivial = 0;
 }

      for (i = next->line1; i <= l1 && trivial; i++)
 {
   char const *line = linbuf1[i];
   char const *newline = linbuf1[i + 1] - 1;
   size_t len = newline - line;
   char const *p = line;
   if (skip_leading_white_space)
     while (isspace ((unsigned char) *p) && *p != '\n')
       p++;
   if (newline - p != trivial_length
       && (! ignore_regexp.fastmap
    || re_search (&ignore_regexp, line, len, 0, len, 0) < 0))
     trivial = 0;
 }
    }
  while ((next = next->link) != 0);

  *last0 = l0;
  *last1 = l1;




  if (trivial)
    return UNCHANGED;

  return (show_from ? OLD : UNCHANGED) | (show_to ? NEW : UNCHANGED);
}
