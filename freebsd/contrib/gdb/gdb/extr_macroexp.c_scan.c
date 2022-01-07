
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macro_name_list {int dummy; } ;
struct macro_buffer {int shared; char* text; int last_token; int len; } ;
typedef int macro_lookup_ftype ;


 int append_tokens_without_splicing (struct macro_buffer*,struct macro_buffer*) ;
 int appendmem (struct macro_buffer*,char*,int) ;
 int gdb_assert (int) ;
 int get_token (struct macro_buffer*,struct macro_buffer*) ;
 int maybe_expand (struct macro_buffer*,struct macro_buffer*,struct macro_buffer*,struct macro_name_list*,int *,void*) ;

__attribute__((used)) static void
scan (struct macro_buffer *dest,
      struct macro_buffer *src,
      struct macro_name_list *no_loop,
      macro_lookup_ftype *lookup_func,
      void *lookup_baton)
{
  gdb_assert (src->shared);
  gdb_assert (! dest->shared);

  for (;;)
    {
      struct macro_buffer tok;
      char *original_src_start = src->text;


      if (! get_token (&tok, src))
        break;



      if (tok.text > original_src_start)
        {
          appendmem (dest, original_src_start, tok.text - original_src_start);
          dest->last_token = dest->len;
        }

      if (! maybe_expand (dest, &tok, src, no_loop, lookup_func, lookup_baton))


        append_tokens_without_splicing (dest, &tok);
    }



  if (src->len)
    {
      appendmem (dest, src->text, src->len);
      dest->last_token = dest->len;
    }
}
