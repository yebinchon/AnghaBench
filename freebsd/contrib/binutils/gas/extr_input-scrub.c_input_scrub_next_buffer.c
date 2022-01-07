
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ len; char* ptr; } ;


 int AFTER_SIZE ;
 char* AFTER_STRING ;
 int BEFORE_SIZE ;
 int LISTING_EOF () ;
 scalar_t__ TC_EOL_IN_INSN (char*) ;
 int _ (char*) ;
 int as_warn (int ) ;
 int buffer_length ;
 char* buffer_start ;
 int cond_finish_check (int ) ;
 TYPE_1__ from_sb ;
 scalar_t__ from_sb_is_expansion ;
 scalar_t__ input_file_buffer_size () ;
 char* input_file_give_next_buffer (char*) ;
 char* input_scrub_pop (int *) ;
 int macro_nest ;
 int md_macro_end () ;
 int memcpy (char*,char*,int) ;
 int memmove (char*,char*,unsigned int) ;
 int * next_saved_file ;
 int partial_size ;
 char* partial_where ;
 char* save_source ;
 scalar_t__ sb_index ;
 int sb_kill (TYPE_1__*) ;
 char* xrealloc (char*,int) ;

char *
input_scrub_next_buffer (char **bufp)
{
  register char *limit;

  if (sb_index >= 0)
    {
      if (sb_index >= from_sb.len)
 {
   sb_kill (&from_sb);
   if (from_sb_is_expansion
       )
     {
       cond_finish_check (macro_nest);





     }
   --macro_nest;
   partial_where = ((void*)0);
   if (next_saved_file != ((void*)0))
     *bufp = input_scrub_pop (next_saved_file);
   return partial_where;
 }

      partial_where = from_sb.ptr + from_sb.len;
      partial_size = 0;
      *bufp = from_sb.ptr + sb_index;
      sb_index = from_sb.len;
      return partial_where;
    }

  *bufp = buffer_start + BEFORE_SIZE;

  if (partial_size)
    {
      memmove (buffer_start + BEFORE_SIZE, partial_where,
       (unsigned int) partial_size);
      memcpy (buffer_start + BEFORE_SIZE, save_source, AFTER_SIZE);
    }
  limit = input_file_give_next_buffer (buffer_start
           + BEFORE_SIZE
           + partial_size);
  if (limit)
    {
      register char *p;

      *limit = '\0';
      for (p = limit - 1; *p != '\n' || TC_EOL_IN_INSN (p); --p)
 ;
      ++p;

      while (p <= buffer_start + BEFORE_SIZE)
 {
   int limoff;

   limoff = limit - buffer_start;
   buffer_length += input_file_buffer_size ();
   buffer_start = xrealloc (buffer_start,
       (BEFORE_SIZE
        + 2 * buffer_length
        + AFTER_SIZE));
   *bufp = buffer_start + BEFORE_SIZE;
   limit = input_file_give_next_buffer (buffer_start + limoff);

   if (limit == ((void*)0))
     {
       as_warn (_("partial line at end of file ignored"));
       partial_where = ((void*)0);
       if (next_saved_file)
  *bufp = input_scrub_pop (next_saved_file);
       return ((void*)0);
     }


   *limit = '\0';
   for (p = limit - 1; *p != '\n' || TC_EOL_IN_INSN (p); --p)
     ;
   ++p;
 }

      partial_where = p;
      partial_size = limit - p;
      memcpy (save_source, partial_where, (int) AFTER_SIZE);
      memcpy (partial_where, AFTER_STRING, (int) AFTER_SIZE);
    }
  else
    {
      partial_where = 0;
      if (partial_size > 0)
 {
   as_warn (_("partial line at end of file ignored"));
 }


      LISTING_EOF ();


      if (next_saved_file)
 {
   *bufp = input_scrub_pop (next_saved_file);

 }
    }
  return (partial_where);
}
