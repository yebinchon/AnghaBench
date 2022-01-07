
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int flags; char* opt_text; char* help; } ;


 unsigned int CL_COMMON ;
 unsigned int CL_TARGET ;
 int CL_UNDOCUMENTED ;
 char* _ (char const*) ;
 TYPE_1__* cl_options ;
 unsigned int cl_options_count ;
 int memset (char*,int ,unsigned int) ;
 unsigned int print_switch (char*,unsigned int) ;
 int putchar (char) ;
 char* strchr (char const*,char) ;
 unsigned int strlen (char const*) ;
 char* undocumented_msg ;
 int wrap_help (char const*,char const*,unsigned int) ;
 char* xmalloc (unsigned int) ;

__attribute__((used)) static void
print_filtered_help (unsigned int flag)
{
  unsigned int i, len, filter, indent = 0;
  bool duplicates = 0;
  const char *help, *opt, *tab;
  static char *printed;

  if (flag == CL_COMMON || flag == CL_TARGET)
    {
      filter = flag;
      if (!printed)
 printed = xmalloc (cl_options_count);
      memset (printed, 0, cl_options_count);
    }
  else
    {

      filter = flag | CL_COMMON;

      for (i = 0; i < cl_options_count; i++)
 {
   if ((cl_options[i].flags & filter) != flag)
     continue;


   if (cl_options[i].flags & CL_UNDOCUMENTED)
     continue;



   if (printed[i])
     {
       duplicates = 1;
       indent = print_switch (cl_options[i].opt_text, indent);
     }
 }

      if (duplicates)
 {
   putchar ('\n');
   putchar ('\n');
 }
    }

  for (i = 0; i < cl_options_count; i++)
    {
      if ((cl_options[i].flags & filter) != flag)
 continue;


      if (cl_options[i].flags & CL_UNDOCUMENTED)
 continue;


      if (printed[i])
 continue;

      printed[i] = 1;

      help = cl_options[i].help;
      if (!help)
 help = undocumented_msg;


      help = _(help);

      tab = strchr (help, '\t');
      if (tab)
 {
   len = tab - help;
   opt = help;
   help = tab + 1;
 }
      else
 {
   opt = cl_options[i].opt_text;
   len = strlen (opt);
 }

      wrap_help (help, opt, len);
    }

  putchar ('\n');
}
