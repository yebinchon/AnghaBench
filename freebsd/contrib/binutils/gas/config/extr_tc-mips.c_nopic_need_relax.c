
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int symbolS ;
struct TYPE_2__ {scalar_t__ ecoff_extern_size; } ;


 char* S_GET_NAME (int *) ;
 int S_GET_SEGMENT (int *) ;
 scalar_t__ S_GET_VALUE (int *) ;
 scalar_t__ S_IS_COMMON (int *) ;
 int S_IS_DEFINED (int *) ;
 int assert (int) ;
 scalar_t__ g_switch_value ;
 char* segment_name (int ) ;
 scalar_t__ strcmp (char const*,char*) ;
 scalar_t__ strncmp (char const*,char*,int) ;
 TYPE_1__* symbol_get_obj (int *) ;

__attribute__((used)) static int
nopic_need_relax (symbolS *sym, int before_relaxing)
{
  if (sym == 0)
    return 0;

  if (g_switch_value > 0)
    {
      const char *symname;
      int change;






      symname = S_GET_NAME (sym);
      if (symname != (const char *) ((void*)0)
   && (strcmp (symname, "eprol") == 0
       || strcmp (symname, "etext") == 0
       || strcmp (symname, "_gp") == 0
       || strcmp (symname, "edata") == 0
       || strcmp (symname, "_fbss") == 0
       || strcmp (symname, "_fdata") == 0
       || strcmp (symname, "_ftext") == 0
       || strcmp (symname, "end") == 0
       || strcmp (symname, "_gp_disp") == 0))
 change = 1;
      else if ((! S_IS_DEFINED (sym) || S_IS_COMMON (sym))
        && (0

     || (symbol_get_obj (sym)->ecoff_extern_size != 0
         && (symbol_get_obj (sym)->ecoff_extern_size
      <= g_switch_value))




     || (before_relaxing

         && symbol_get_obj (sym)->ecoff_extern_size == 0

         && S_GET_VALUE (sym) == 0)
     || (S_GET_VALUE (sym) != 0
         && S_GET_VALUE (sym) <= g_switch_value)))
 change = 0;
      else
 {
   const char *segname;

   segname = segment_name (S_GET_SEGMENT (sym));
   assert (strcmp (segname, ".lit8") != 0
    && strcmp (segname, ".lit4") != 0);
   change = (strcmp (segname, ".sdata") != 0
      && strcmp (segname, ".sbss") != 0
      && strncmp (segname, ".sdata.", 7) != 0
      && strncmp (segname, ".sbss.", 6) != 0
      && strncmp (segname, ".gnu.linkonce.sb.", 17) != 0
      && strncmp (segname, ".gnu.linkonce.s.", 16) != 0);
 }
      return change;
    }
  else

    return 1;
}
