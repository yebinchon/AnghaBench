
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int symbolS ;


 char* GP_DISP_LABEL ;
 char* S_GET_NAME (int *) ;
 int S_GET_SEGMENT (int *) ;
 scalar_t__ S_GET_VALUE (int *) ;
 scalar_t__ S_IS_COMMON (int *) ;
 int S_IS_DEFINED (int *) ;
 scalar_t__ USE_GLOBAL_POINTER_OPT ;
 scalar_t__ g_switch_value ;
 char* segment_name (int ) ;
 scalar_t__ strcmp (char const*,char*) ;
 scalar_t__ strncmp (char const*,char*,int) ;

__attribute__((used)) static int
nopic_need_relax (symbolS * sym, int before_relaxing)
{
  if (sym == ((void*)0))
    return 0;
  else if (USE_GLOBAL_POINTER_OPT && g_switch_value > 0)
    {
      const char *symname;
      const char *segname;






      symname = S_GET_NAME (sym);
      if (symname != (const char *)((void*)0)
          && (strcmp (symname, "eprol") == 0
              || strcmp (symname, "etext") == 0
              || strcmp (symname, "_gp") == 0
              || strcmp (symname, "edata") == 0
              || strcmp (symname, "_fbss") == 0
              || strcmp (symname, "_fdata") == 0
              || strcmp (symname, "_ftext") == 0
              || strcmp (symname, "end") == 0
              || strcmp (symname, GP_DISP_LABEL) == 0))
        {
          return 1;
        }
      else if ((!S_IS_DEFINED (sym) || S_IS_COMMON (sym)) && (0


               || (before_relaxing
                   && S_GET_VALUE (sym) == 0)
               || (S_GET_VALUE (sym) != 0
                   && S_GET_VALUE (sym) <= g_switch_value)))
        {
          return 0;
        }

      segname = segment_name (S_GET_SEGMENT (sym));
      return (strcmp (segname, ".sdata") != 0
       && strcmp (segname, ".sbss") != 0
       && strncmp (segname, ".sdata.", 7) != 0
       && strncmp (segname, ".gnu.linkonce.s.", 16) != 0);
    }

  else
    return 1;
}
