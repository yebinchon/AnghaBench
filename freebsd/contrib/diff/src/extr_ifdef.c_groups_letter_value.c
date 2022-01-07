
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct group {int from; int upto; int file; } ;
typedef int lin ;


 int translate_line_number (int ,int) ;

__attribute__((used)) static lin
groups_letter_value (struct group const *g, char letter)
{
  switch (letter)
    {
    case 'E': letter = 'e'; g++; break;
    case 'F': letter = 'f'; g++; break;
    case 'L': letter = 'l'; g++; break;
    case 'M': letter = 'm'; g++; break;
    case 'N': letter = 'n'; g++; break;
    }

  switch (letter)
    {
      case 'e': return translate_line_number (g->file, g->from) - 1;
      case 'f': return translate_line_number (g->file, g->from);
      case 'l': return translate_line_number (g->file, g->upto) - 1;
      case 'm': return translate_line_number (g->file, g->upto);
      case 'n': return g->upto - g->from;
      default: return -1;
    }
}
