
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char DIR_SEPARATOR ;
 int FATAL_EXIT_CODE ;
 int IS_ABSOLUTE_PATH (char const*) ;
 scalar_t__ IS_DIR_SEPARATOR (char const) ;
 char* alloca (scalar_t__) ;
 char const* cwd_buffer ;
 int exit (int ) ;
 int notice (char*,int ,char const*) ;
 int pname ;
 char* savestring (char* const,int) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static char *
abspath (const char *cwd, const char *rel_filename)
{

  const char *const cwd2 = (cwd) ? cwd : cwd_buffer;
  char *const abs_buffer = alloca (strlen (cwd2) + strlen (rel_filename) + 2);
  char *endp = abs_buffer;
  char *outp, *inp;




  {
    const char *src_p;

    if (! IS_ABSOLUTE_PATH (rel_filename))
      {
 src_p = cwd2;
 while ((*endp++ = *src_p++))
   continue;
 *(endp-1) = DIR_SEPARATOR;
      }
    src_p = rel_filename;
    while ((*endp++ = *src_p++))
      continue;
  }




  outp = inp = abs_buffer;
  *outp++ = *inp++;




  for (;;)
    {
      if (!inp[0])
 break;
      else if (IS_DIR_SEPARATOR (inp[0]) && IS_DIR_SEPARATOR (outp[-1]))
 {
   inp++;
   continue;
 }
      else if (inp[0] == '.' && IS_DIR_SEPARATOR (outp[-1]))
 {
   if (!inp[1])
     break;
   else if (IS_DIR_SEPARATOR (inp[1]))
     {
       inp += 2;
       continue;
     }
   else if ((inp[1] == '.') && (inp[2] == 0
                                || IS_DIR_SEPARATOR (inp[2])))
     {
       inp += (IS_DIR_SEPARATOR (inp[2])) ? 3 : 2;
       outp -= 2;
       while (outp >= abs_buffer && ! IS_DIR_SEPARATOR (*outp))
        outp--;
       if (outp < abs_buffer)
  {




    notice ("%s: invalid file name: %s\n",
     pname, rel_filename);
    exit (FATAL_EXIT_CODE);
  }
       *++outp = '\0';
       continue;
     }
 }
      *outp++ = *inp++;
    }




  *outp = '\0';
  if (IS_DIR_SEPARATOR (outp[-1]))
    *--outp = '\0';




  return savestring (abs_buffer, outp - abs_buffer);
}
