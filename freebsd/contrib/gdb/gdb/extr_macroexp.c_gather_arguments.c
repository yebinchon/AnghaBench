
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macro_buffer {char* text; int len; int last_token; } ;
struct cleanup {int dummy; } ;


 int discard_cleanups (struct cleanup*) ;
 int error (char*,char const*) ;
 int free_current_contents ;
 int get_token (struct macro_buffer*,struct macro_buffer*) ;
 int init_shared_buffer (struct macro_buffer*,char*,int) ;
 struct cleanup* make_cleanup (int ,struct macro_buffer**) ;
 int set_token (struct macro_buffer*,char*,char*) ;
 scalar_t__ xmalloc (int) ;
 struct macro_buffer* xrealloc (struct macro_buffer*,int) ;

__attribute__((used)) static struct macro_buffer *
gather_arguments (const char *name, struct macro_buffer *src, int *argc_p)
{
  struct macro_buffer tok;
  int args_len, args_size;
  struct macro_buffer *args = ((void*)0);
  struct cleanup *back_to = make_cleanup (free_current_contents, &args);




  {
    struct macro_buffer temp;
    init_shared_buffer (&temp, src->text, src->len);

    if (! get_token (&tok, &temp)
        || tok.len != 1
        || tok.text[0] != '(')
      {
        discard_cleanups (back_to);
        return 0;
      }
  }


  get_token (&tok, src);

  args_len = 0;
  args_size = 1;
  args = (struct macro_buffer *) xmalloc (sizeof (*args) * args_size);

  for (;;)
    {
      struct macro_buffer *arg;
      int depth;


      if (args_len >= args_size)
        {
          args_size *= 2;
          args = xrealloc (args, sizeof (*args) * args_size);
        }


      arg = &args[args_len++];
      set_token (arg, src->text, src->text);


      depth = 0;
      for (;;)
        {
          char *start = src->text;

          if (! get_token (&tok, src))
            error ("Malformed argument list for macro `%s'.", name);


          if (tok.len == 1 && tok.text[0] == '(')
            depth++;


          else if (tok.len == 1 && tok.text[0] == ')')
            {


              if (depth == 0)
                {
                  discard_cleanups (back_to);
                  *argc_p = args_len;
                  return args;
                }

              depth--;
            }



          else if (tok.len == 1 && tok.text[0] == ',' && depth == 0)
            break;




          if (arg->len == 0)
            {
              arg->text = tok.text;
              arg->len = tok.len;
              arg->last_token = 0;
            }
          else
            {
              arg->len = (tok.text + tok.len) - arg->text;
              arg->last_token = tok.text - arg->text;
            }
        }
    }
}
