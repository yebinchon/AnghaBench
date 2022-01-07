
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macro_buffer {char* text; scalar_t__ last_token; } ;
struct cleanup {int dummy; } ;
typedef int macro_lookup_ftype ;


 int appendc (struct macro_buffer*,char) ;
 int cleanup_macro_buffer ;
 int discard_cleanups (struct cleanup*) ;
 int do_cleanups (struct cleanup*) ;
 int get_token (struct macro_buffer*,struct macro_buffer*) ;
 int init_buffer (struct macro_buffer*,int ) ;
 int init_shared_buffer (struct macro_buffer*,char*,int ) ;
 struct cleanup* make_cleanup (int ,struct macro_buffer*) ;
 scalar_t__ maybe_expand (struct macro_buffer*,struct macro_buffer*,struct macro_buffer*,int ,int *,void*) ;
 int strlen (char*) ;

char *
macro_expand_next (char **lexptr,
                   macro_lookup_ftype *lookup_func,
                   void *lookup_baton)
{
  struct macro_buffer src, dest, tok;
  struct cleanup *back_to;


  init_shared_buffer (&src, *lexptr, strlen (*lexptr));


  init_buffer (&dest, 0);
  dest.last_token = 0;
  back_to = make_cleanup (cleanup_macro_buffer, &dest);


  if (! get_token (&tok, &src))
    {
      do_cleanups (back_to);
      return 0;
    }


  if (maybe_expand (&dest, &tok, &src, 0, lookup_func, lookup_baton))
    {



      appendc (&dest, '\0');
      discard_cleanups (back_to);
      *lexptr = src.text;
      return dest.text;
    }
  else
    {

      do_cleanups (back_to);
      return 0;
    }
}
