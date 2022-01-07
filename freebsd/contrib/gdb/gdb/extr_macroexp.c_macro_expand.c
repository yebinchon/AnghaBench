
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
 int init_buffer (struct macro_buffer*,int ) ;
 int init_shared_buffer (struct macro_buffer*,char*,int ) ;
 struct cleanup* make_cleanup (int ,struct macro_buffer*) ;
 int scan (struct macro_buffer*,struct macro_buffer*,int ,int *,void*) ;
 int strlen (char const*) ;

char *
macro_expand (const char *source,
              macro_lookup_ftype *lookup_func,
              void *lookup_func_baton)
{
  struct macro_buffer src, dest;
  struct cleanup *back_to;

  init_shared_buffer (&src, (char *) source, strlen (source));

  init_buffer (&dest, 0);
  dest.last_token = 0;
  back_to = make_cleanup (cleanup_macro_buffer, &dest);

  scan (&dest, &src, 0, lookup_func, lookup_func_baton);

  appendc (&dest, '\0');

  discard_cleanups (back_to);
  return dest.text;
}
