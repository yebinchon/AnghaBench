
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* message; } ;
typedef TYPE_1__ list_info_type ;


 int LISTING_WORD_SIZE ;
 char* data_buffer ;
 int fprintf (int ,char*,...) ;
 scalar_t__ had_errors () ;
 int list_file ;
 scalar_t__ listing_lhs_cont_lines ;
 int listing_lhs_width ;
 int listing_lhs_width_second ;
 int listing_page (TYPE_1__*) ;
 int on_page ;

__attribute__((used)) static void
print_lines (list_info_type *list, unsigned int lineno,
      char *string, unsigned int address)
{
  unsigned int idx;
  unsigned int nchars;
  unsigned int lines;
  unsigned int octet_in_word = 0;
  char *src = data_buffer;
  int cur;


  listing_page (list);
  nchars = (LISTING_WORD_SIZE * 2 + 1) * listing_lhs_width;


  if (address == ~(unsigned int) 0)
    {
      fprintf (list_file, "% 4d     ", lineno);
      for (idx = 0; idx < nchars; idx++)
 fprintf (list_file, " ");

      fprintf (list_file, "\t%s\n", string ? string : "");

      on_page++;

      listing_page (0);

      return;
    }

  if (had_errors ())
    fprintf (list_file, "% 4d ???? ", lineno);
  else
    fprintf (list_file, "% 4d %04x ", lineno, address);


  idx = 0;
  cur = 0;
  while (src[cur] && idx < nchars)
    {
      int offset;
      offset = cur;
      fprintf (list_file, "%c%c", src[offset], src[offset + 1]);
      cur += 2;
      octet_in_word++;

      if (octet_in_word == LISTING_WORD_SIZE)
 {
   fprintf (list_file, " ");
   idx++;
   octet_in_word = 0;
 }

      idx += 2;
    }

  for (; idx < nchars; idx++)
    fprintf (list_file, " ");

  fprintf (list_file, "\t%s\n", string ? string : "");
  on_page++;
  listing_page (list);

  if (list->message)
    {
      fprintf (list_file, "****  %s\n", list->message);
      listing_page (list);
      on_page++;
    }

  for (lines = 0;
       lines < (unsigned int) listing_lhs_cont_lines
  && src[cur];
       lines++)
    {
      nchars = ((LISTING_WORD_SIZE * 2) + 1) * listing_lhs_width_second - 1;
      idx = 0;


      fprintf (list_file, "% 4d      ", lineno);

      while (src[cur] && idx < nchars)
 {
   int offset;
   offset = cur;
   fprintf (list_file, "%c%c", src[offset], src[offset + 1]);
   cur += 2;
   idx += 2;
   octet_in_word++;

   if (octet_in_word == LISTING_WORD_SIZE)
     {
       fprintf (list_file, " ");
       idx++;
       octet_in_word = 0;
     }
 }

      fprintf (list_file, "\n");
      on_page++;
      listing_page (list);
    }
}
