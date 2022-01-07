
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* edict_arg; int edict; } ;


 int EDICT_SBTTL ;
 int EDICT_TITLE ;
 int SKIP_WHITESPACE () ;
 int _ (char*) ;
 int as_bad (int ) ;
 int demand_empty_rest_of_line () ;
 char* input_line_pointer ;
 int* is_end_of_line ;
 scalar_t__ listing ;
 TYPE_1__* listing_tail ;
 int memcpy (char*,char*,unsigned int) ;
 char* xmalloc (unsigned int) ;

void
listing_title (int depth)
{
  int quoted;
  char *start;
  char *ttl;
  unsigned int length;

  SKIP_WHITESPACE ();
  if (*input_line_pointer != '\"')
    quoted = 0;
  else
    {
      quoted = 1;
      ++input_line_pointer;
    }

  start = input_line_pointer;

  while (*input_line_pointer)
    {
      if (quoted
   ? *input_line_pointer == '\"'
   : is_end_of_line[(unsigned char) *input_line_pointer])
 {
   if (listing)
     {
       length = input_line_pointer - start;
       ttl = xmalloc (length + 1);
       memcpy (ttl, start, length);
       ttl[length] = 0;
       listing_tail->edict = depth ? EDICT_SBTTL : EDICT_TITLE;
       listing_tail->edict_arg = ttl;
     }
   if (quoted)
     input_line_pointer++;
   demand_empty_rest_of_line ();
   return;
 }
      else if (*input_line_pointer == '\n')
 {
   as_bad (_("new line in title"));
   demand_empty_rest_of_line ();
   return;
 }
      else
 {
   input_line_pointer++;
 }
    }
}
