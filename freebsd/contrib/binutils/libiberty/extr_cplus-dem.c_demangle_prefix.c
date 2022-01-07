
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_stuff {int dllimported; int destructor; int constructor; scalar_t__ static_type; } ;
typedef int string ;


 scalar_t__ ARM_DEMANGLING ;
 scalar_t__ EDG_DEMANGLING ;
 scalar_t__ HP_DEMANGLING ;
 scalar_t__ ISDIGIT (unsigned char) ;
 scalar_t__ LUCID_DEMANGLING ;
 scalar_t__ arm_special (char const**,int *) ;
 int consume_count (char const**) ;
 char const* cplus_markers ;
 int demangle_arm_hp_template (struct work_stuff*,char const**,int,int *) ;
 scalar_t__ gnu_special (struct work_stuff*,char const**,int *) ;
 int iterate_demangle_function (struct work_stuff*,char const**,int *,char const*) ;
 void* strchr (char const*,char const) ;
 int string_append (int *,char const*) ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char const*,char*,int) ;
 int strspn (char const*,char*) ;
 char* strstr (char const*,char*) ;

__attribute__((used)) static int
demangle_prefix (struct work_stuff *work, const char **mangled,
                 string *declp)
{
  int success = 1;
  const char *scan;
  int i;

  if (strlen(*mangled) > 6
      && (strncmp(*mangled, "_imp__", 6) == 0
          || strncmp(*mangled, "__imp_", 6) == 0))
    {



      (*mangled) += 6;
      work->dllimported = 1;
    }
  else if (strlen(*mangled) >= 11 && strncmp(*mangled, "_GLOBAL_", 8) == 0)
    {
      char *marker = strchr (cplus_markers, (*mangled)[8]);
      if (marker != ((void*)0) && *marker == (*mangled)[10])
 {
   if ((*mangled)[9] == 'D')
     {

       (*mangled) += 11;
       work->destructor = 2;
       if (gnu_special (work, mangled, declp))
  return success;
     }
   else if ((*mangled)[9] == 'I')
     {

       (*mangled) += 11;
       work->constructor = 2;
       if (gnu_special (work, mangled, declp))
  return success;
     }
 }
    }
  else if ((ARM_DEMANGLING || HP_DEMANGLING || EDG_DEMANGLING) && strncmp(*mangled, "__std__", 7) == 0)
    {

      (*mangled) += 7;
      work->destructor = 2;
    }
  else if ((ARM_DEMANGLING || HP_DEMANGLING || EDG_DEMANGLING) && strncmp(*mangled, "__sti__", 7) == 0)
    {

      (*mangled) += 7;
      work->constructor = 2;
    }





  {
    scan = *mangled;

    do {
      scan = strchr (scan, '_');
    } while (scan != ((void*)0) && *++scan != '_');

    if (scan != ((void*)0)) --scan;
  }

  if (scan != ((void*)0))
    {


      i = strspn (scan, "_");
      if (i > 2)
 {
   scan += (i - 2);
 }
    }

  if (scan == ((void*)0))
    {
      success = 0;
    }
  else if (work -> static_type)
    {
      if (!ISDIGIT ((unsigned char)scan[0]) && (scan[0] != 't'))
 {
   success = 0;
 }
    }
  else if ((scan == *mangled)
    && (ISDIGIT ((unsigned char)scan[2]) || (scan[2] == 'Q')
        || (scan[2] == 't') || (scan[2] == 'K') || (scan[2] == 'H')))
    {



      if ((LUCID_DEMANGLING || ARM_DEMANGLING || HP_DEMANGLING)
   && ISDIGIT ((unsigned char)scan[2]))
 {
   *mangled = scan + 2;
   consume_count (mangled);
   string_append (declp, *mangled);
   *mangled += strlen (*mangled);
   success = 1;
 }
      else
 {




   if (!(LUCID_DEMANGLING || ARM_DEMANGLING || HP_DEMANGLING || EDG_DEMANGLING))
     work -> constructor += 1;
   *mangled = scan + 2;
 }
    }
  else if (ARM_DEMANGLING && scan[2] == 'p' && scan[3] == 't')
    {

      success = 1;


      demangle_arm_hp_template (work, mangled, strlen (*mangled), declp);
    }
  else if (EDG_DEMANGLING && ((scan[2] == 't' && scan[3] == 'm')
                              || (scan[2] == 'p' && scan[3] == 's')
                              || (scan[2] == 'p' && scan[3] == 't')))
    {

      success = 1;


      demangle_arm_hp_template (work, mangled, strlen (*mangled), declp);
    }
  else if ((scan == *mangled) && !ISDIGIT ((unsigned char)scan[2])
    && (scan[2] != 't'))
    {



      if (!(ARM_DEMANGLING || LUCID_DEMANGLING || HP_DEMANGLING || EDG_DEMANGLING)
   || (arm_special (mangled, declp) == 0))
 {
   while (*scan == '_')
     {
       scan++;
     }
   if ((scan = strstr (scan, "__")) == ((void*)0) || (*(scan + 2) == '\0'))
     {


       success = 0;
     }
   else
     return iterate_demangle_function (work, mangled, declp, scan);
 }
    }
  else if (*(scan + 2) != '\0')
    {




      return iterate_demangle_function (work, mangled, declp, scan);
    }
  else
    {

      success = 0;
    }

  if (!success && (work->constructor == 2 || work->destructor == 2))
    {
      string_append (declp, *mangled);
      *mangled += strlen (*mangled);
      success = 1;
    }
  return (success);
}
