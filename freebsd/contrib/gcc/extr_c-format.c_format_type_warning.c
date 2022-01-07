
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef char const* tree ;
struct TYPE_2__ {int (* decl_printable_name ) (scalar_t__,int) ;} ;


 scalar_t__ DECL_NAME (scalar_t__) ;
 int OPT_Wformat ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TYPE_DECL ;
 char* TYPE_MAIN_VARIANT (char const*) ;
 scalar_t__ TYPE_NAME (char const*) ;
 scalar_t__ alloca (int) ;
 scalar_t__ c_dialect_cxx () ;
 TYPE_1__ lang_hooks ;
 int memset (char*,char,int) ;
 int strcmp (char const*,int ) ;
 int stub1 (scalar_t__,int) ;
 int warning (int ,char*,...) ;

__attribute__((used)) static void
format_type_warning (const char *descr, const char *format_start,
       int format_length, tree wanted_type, int pointer_count,
       const char *wanted_type_name, tree arg_type, int arg_num)
{
  char *p;



  if (wanted_type_name
      && TYPE_NAME (arg_type)
      && TREE_CODE (TYPE_NAME (arg_type)) == TYPE_DECL
      && DECL_NAME (TYPE_NAME (arg_type))
      && !strcmp (wanted_type_name,
    lang_hooks.decl_printable_name (TYPE_NAME (arg_type), 2)))
    arg_type = TYPE_MAIN_VARIANT (arg_type);





  p = (char *) alloca (pointer_count + 2);
  if (pointer_count == 0)
    p[0] = 0;
  else if (c_dialect_cxx ())
    {
      memset (p, '*', pointer_count);
      p[pointer_count] = 0;
    }
  else
    {
      p[0] = ' ';
      memset (p + 1, '*', pointer_count);
      p[pointer_count + 1] = 0;
    }
  if (wanted_type_name)
    {
      if (descr)
 warning (OPT_Wformat, "%s should have type %<%s%s%>, "
   "but argument %d has type %qT",
   descr, wanted_type_name, p, arg_num, arg_type);
      else
 warning (OPT_Wformat, "format %q.*s expects type %<%s%s%>, "
   "but argument %d has type %qT",
   format_length, format_start, wanted_type_name, p,
   arg_num, arg_type);
    }
  else
    {
      if (descr)
 warning (OPT_Wformat, "%s should have type %<%T%s%>, "
   "but argument %d has type %qT",
   descr, wanted_type, p, arg_num, arg_type);
      else
 warning (OPT_Wformat, "format %q.*s expects type %<%T%s%>, "
   "but argument %d has type %qT",
   format_length, format_start, wanted_type, p, arg_num, arg_type);
    }
}
