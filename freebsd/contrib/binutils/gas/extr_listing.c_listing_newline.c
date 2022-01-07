
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int debugging; char* line_contents; unsigned int line; char* message; scalar_t__ hll_line; int * hll_file; int edict; struct TYPE_4__* next; int file; int frag; } ;
typedef TYPE_1__ list_info_type ;
typedef int file_info_type ;


 int EDICT_NONE ;
 int ISCNTRL (unsigned char) ;
 int LISTING_NODEBUG ;
 char* _ (char*) ;
 scalar_t__ absolute_section ;
 int as_where (char**,unsigned int*) ;
 int file_info (char*) ;
 int frag_now ;
 TYPE_1__* head ;
 char* input_line_pointer ;
 int * is_end_of_line ;
 int listing ;
 TYPE_1__* listing_tail ;
 int new_frag () ;
 scalar_t__ now_seg ;
 char* segment_name (scalar_t__) ;
 scalar_t__ strcmp (char*,char*) ;
 scalar_t__ strncmp (char const*,char*,int) ;
 void* xmalloc (int) ;

void
listing_newline (char *ps)
{
  char *file;
  unsigned int line;
  static unsigned int last_line = 0xffff;
  static char *last_file = ((void*)0);
  list_info_type *new = ((void*)0);

  if (listing == 0)
    return;

  if (now_seg == absolute_section)
    return;
  as_where (&file, &line);
  if (ps == ((void*)0))
    {
      if (line == last_line
   && !(last_file && file && strcmp (file, last_file)))
 return;

      new = (list_info_type *) xmalloc (sizeof (list_info_type));
      if (strcmp (file, _("{standard input}")) == 0
   && input_line_pointer != ((void*)0))
 {
   char *copy;
   int len;
   int seen_quote = 0;

   for (copy = input_line_pointer - 1;
        *copy && (seen_quote
    || (! is_end_of_line [(unsigned char) *copy]));
        copy++)
     if (*copy == '"' && copy[-1] != '\\')
       seen_quote = ! seen_quote;

   len = (copy - input_line_pointer) + 2;

   copy = xmalloc (len);

   if (copy != ((void*)0))
     {
       char *src = input_line_pointer - 1;
       char *dest = copy;

       while (--len)
  {
    unsigned char c = *src++;


    if (!ISCNTRL (c))
      *dest++ = c;
  }

       *dest = 0;
     }

   new->line_contents = copy;
 }
      else
 new->line_contents = ((void*)0);
    }
  else
    {
      new = xmalloc (sizeof (list_info_type));
      new->line_contents = ps;
    }

  last_line = line;
  last_file = file;

  new_frag ();

  if (listing_tail)
    listing_tail->next = new;
  else
    head = new;

  listing_tail = new;

  new->frag = frag_now;
  new->line = line;
  new->file = file_info (file);
  new->next = (list_info_type *) ((void*)0);
  new->message = (char *) ((void*)0);
  new->edict = EDICT_NONE;
  new->hll_file = (file_info_type *) ((void*)0);
  new->hll_line = 0;
  new->debugging = 0;

  new_frag ();
}
