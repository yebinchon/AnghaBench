
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_1__ ;


struct work_stuff {int temp_start; int options; } ;
struct TYPE_13__ {int p; int b; } ;
typedef TYPE_1__ string ;


 int DMGL_PARAMS ;
 scalar_t__ HP_DEMANGLING ;
 scalar_t__ arm_pt (struct work_stuff*,char const*,int,char const**,char const**) ;
 char const* cplus_markers ;
 int do_hpacc_template_const_value (struct work_stuff*,char const**,TYPE_1__*) ;
 int do_hpacc_template_literal (struct work_stuff*,char const**,TYPE_1__*) ;
 int do_type (struct work_stuff*,char const**,TYPE_1__*) ;
 int snarf_numeric_literal (char const**,TYPE_1__*) ;
 char* strchr (char const*,char const) ;
 int string_append (TYPE_1__*,char*) ;
 int string_appendn (TYPE_1__*,char const*,int) ;
 int string_appends (TYPE_1__*,TYPE_1__*) ;
 int string_delete (TYPE_1__*) ;
 int string_init (TYPE_1__*) ;
 scalar_t__ strncmp (char const*,char*,int) ;

__attribute__((used)) static void
demangle_arm_hp_template (struct work_stuff *work, const char **mangled,
                          int n, string *declp)
{
  const char *p;
  const char *args;
  const char *e = *mangled + n;
  string arg;



  if (HP_DEMANGLING && ((*mangled)[n] == 'X'))
    {
      char *start_spec_args = ((void*)0);
      int hold_options;



      start_spec_args = strchr (*mangled, '<');
      if (start_spec_args && (start_spec_args - *mangled < n))
        string_appendn (declp, *mangled, start_spec_args - *mangled);
      else
        string_appendn (declp, *mangled, n);
      (*mangled) += n + 1;
      string_init (&arg);
      if (work->temp_start == -1)
        work->temp_start = declp->p - declp->b;



      hold_options = work->options;
      work->options |= DMGL_PARAMS;

      string_append (declp, "<");
      while (1)
        {
          string_delete (&arg);
          switch (**mangled)
            {
              case 'T':

                (*mangled)++;
                if (!do_type (work, mangled, &arg))
                  goto hpacc_template_args_done;
                break;

              case 'U':
              case 'S':

                if (!do_hpacc_template_const_value (work, mangled, &arg))
                  goto hpacc_template_args_done;
                break;

              case 'A':

                if (!do_hpacc_template_literal (work, mangled, &arg))
                  goto hpacc_template_args_done;
                break;

              default:



                goto hpacc_template_args_done;
            }
          string_appends (declp, &arg);



          if ((**mangled == '\000') || (**mangled == '_'))
            break;
          else
            string_append (declp, ",");
        }
    hpacc_template_args_done:
      string_append (declp, ">");
      string_delete (&arg);
      if (**mangled == '_')
        (*mangled)++;
      work->options = hold_options;
      return;
    }

  else if (arm_pt (work, *mangled, n, &p, &args))
    {
      int hold_options;
      string type_str;

      string_init (&arg);
      string_appendn (declp, *mangled, p - *mangled);
      if (work->temp_start == -1)
 work->temp_start = declp->p - declp->b;



      hold_options = work->options;
      work->options |= DMGL_PARAMS;

      string_append (declp, "<");

      while (args < e) {
 string_delete (&arg);


 switch (*args)
   {



          case 'X':

            args++;
            if (!do_type (work, &args, &type_str))
       goto cfront_template_args_done;
            string_append (&arg, "(");
            string_appends (&arg, &type_str);
            string_delete (&type_str);
            string_append (&arg, ")");
            if (*args != 'L')
              goto cfront_template_args_done;
            args++;

            if (!snarf_numeric_literal (&args, &arg))
       goto cfront_template_args_done;
            break;

          case 'L':

            args++;
            if (!snarf_numeric_literal (&args, &arg))
       goto cfront_template_args_done;
            break;
          default:

            {
              const char* old_args = args;
              if (!do_type (work, &args, &arg))
                goto cfront_template_args_done;


              if (args == old_args)
  {
    work->options = hold_options;
    return;
  }
            }
   }
 string_appends (declp, &arg);
 string_append (declp, ",");
      }
    cfront_template_args_done:
      string_delete (&arg);
      if (args >= e)
 --declp->p;
      string_append (declp, ">");
      work->options = hold_options;
    }
  else if (n>10 && strncmp (*mangled, "_GLOBAL_", 8) == 0
    && (*mangled)[9] == 'N'
    && (*mangled)[8] == (*mangled)[10]
    && strchr (cplus_markers, (*mangled)[8]))
    {

      string_append (declp, "{anonymous}");
    }
  else
    {
      if (work->temp_start == -1)
 work->temp_start = 0;
      string_appendn (declp, *mangled, n);
    }
  *mangled += n;
}
