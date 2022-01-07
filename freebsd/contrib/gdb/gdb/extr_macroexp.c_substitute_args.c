
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macro_name_list {int dummy; } ;
struct macro_definition {char* replacement; int argc; char** argv; } ;
struct macro_buffer {scalar_t__ len; scalar_t__ last_token; char* text; scalar_t__ is_identifier; } ;
typedef int macro_lookup_ftype ;


 int append_tokens_without_splicing (struct macro_buffer*,struct macro_buffer*) ;
 int appendmem (struct macro_buffer*,char*,int) ;
 int error (char*) ;
 int gdb_assert (int) ;
 int get_token (struct macro_buffer*,struct macro_buffer*) ;
 int init_shared_buffer (struct macro_buffer*,char*,int) ;
 int memcmp (char*,char*,int) ;
 int scan (struct macro_buffer*,struct macro_buffer*,struct macro_name_list*,int *,void*) ;
 int strlen (char*) ;

__attribute__((used)) static void
substitute_args (struct macro_buffer *dest,
                 struct macro_definition *def,
                 int argc, struct macro_buffer *argv,
                 struct macro_name_list *no_loop,
                 macro_lookup_ftype *lookup_func,
                 void *lookup_baton)
{

  struct macro_buffer replacement_list;

  init_shared_buffer (&replacement_list, (char *) def->replacement,
                      strlen (def->replacement));

  gdb_assert (dest->len == 0);
  dest->last_token = 0;

  for (;;)
    {
      struct macro_buffer tok;
      char *original_rl_start = replacement_list.text;
      int substituted = 0;


      if (! get_token (&tok, &replacement_list))
        break;



      if (tok.text > original_rl_start)
        {
          appendmem (dest, original_rl_start, tok.text - original_rl_start);
          dest->last_token = dest->len;
        }


      if (tok.len == 1
          && tok.text[0] == '#')
        error ("Stringification is not implemented yet.");


      if (tok.len == 2
          && tok.text[0] == '#'
          && tok.text[1] == '#')
        error ("Token splicing is not implemented yet.");


      if (tok.is_identifier)
        {
          int i;


          if (tok.len == 11
              && ! memcmp (tok.text, "__VA_ARGS__", 11))
            error ("Variable-arity macros not implemented yet.");


          for (i = 0; i < def->argc; i++)
            if (tok.len == strlen (def->argv[i])
                && ! memcmp (tok.text, def->argv[i], tok.len))
              {
                struct macro_buffer arg_src;






                init_shared_buffer (&arg_src, argv[i].text, argv[i].len);
                scan (dest, &arg_src, no_loop, lookup_func, lookup_baton);
                substituted = 1;
                break;
              }
        }


      if (! substituted)
        append_tokens_without_splicing (dest, &tok);
    }
}
