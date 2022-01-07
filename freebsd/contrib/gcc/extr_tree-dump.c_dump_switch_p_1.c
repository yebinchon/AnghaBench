
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dump_option_value_info {char const* name; int value; } ;
struct dump_file_info {int state; int flags; int * suffix; int swtch; int glob; } ;


 int dump_enable_all (int,int ) ;
 struct dump_option_value_info* dump_options ;
 int memcmp (char const*,char const*,unsigned int) ;
 char* skip_leading_substring (char const*,int ) ;
 char* strchr (char const*,char) ;
 unsigned int strlen (char const*) ;
 int warning (int ,char*,unsigned int,char const*,int ) ;

__attribute__((used)) static int
dump_switch_p_1 (const char *arg, struct dump_file_info *dfi, bool doglob)
{
  const char *option_value;
  const char *ptr;
  int flags;

  if (doglob && !dfi->glob)
    return 0;

  option_value = skip_leading_substring (arg, doglob ? dfi->glob : dfi->swtch);
  if (!option_value)
    return 0;

  ptr = option_value;
  flags = 0;

  while (*ptr)
    {
      const struct dump_option_value_info *option_ptr;
      const char *end_ptr;
      unsigned length;

      while (*ptr == '-')
 ptr++;
      end_ptr = strchr (ptr, '-');
      if (!end_ptr)
 end_ptr = ptr + strlen (ptr);
      length = end_ptr - ptr;

      for (option_ptr = dump_options; option_ptr->name; option_ptr++)
 if (strlen (option_ptr->name) == length
     && !memcmp (option_ptr->name, ptr, length))
   {
     flags |= option_ptr->value;
     goto found;
   }
      warning (0, "ignoring unknown option %q.*s in %<-fdump-%s%>",
        length, ptr, dfi->swtch);
    found:;
      ptr = end_ptr;
    }

  dfi->state = -1;
  dfi->flags |= flags;



  if (dfi->suffix == ((void*)0))
    dump_enable_all (dfi->flags, 0);

  return 1;
}
