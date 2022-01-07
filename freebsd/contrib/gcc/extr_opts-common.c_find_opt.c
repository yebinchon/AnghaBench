
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cl_option {size_t opt_len; int flags; size_t back_chain; scalar_t__ opt_text; } ;


 int CL_JOINED ;
 struct cl_option* cl_options ;
 size_t cl_options_count ;
 int strncmp (char const*,scalar_t__,size_t) ;

size_t
find_opt (const char *input, int lang_mask)
{
  size_t mn, mx, md, opt_len;
  size_t match_wrong_lang;
  int comp;

  mn = 0;
  mx = cl_options_count;



  while (mx - mn > 1)
    {
      md = (mn + mx) / 2;
      opt_len = cl_options[md].opt_len;
      comp = strncmp (input, cl_options[md].opt_text + 1, opt_len);

      if (comp < 0)
 mx = md;
      else
 mn = md;
    }



  match_wrong_lang = cl_options_count;




  do
    {
      const struct cl_option *opt = &cl_options[mn];



      if (!strncmp (input, opt->opt_text + 1, opt->opt_len)
   && (input[opt->opt_len] == '\0' || (opt->flags & CL_JOINED)))
 {

   if (opt->flags & lang_mask)
     return mn;



   if (match_wrong_lang == cl_options_count)
     match_wrong_lang = mn;
 }



      mn = opt->back_chain;
    }
  while (mn != cl_options_count);


  return match_wrong_lang;
}
