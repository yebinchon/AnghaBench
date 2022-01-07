
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* optab ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_5__ {TYPE_1__* handlers; } ;
struct TYPE_4__ {int libfunc; } ;


 char* GET_MODE_NAME (int) ;
 int TOLOWER (char const) ;
 char* alloca (int) ;
 int ggc_alloc_string (char*,int) ;
 int init_one_libfunc (int ) ;
 unsigned int strlen (char const*) ;

__attribute__((used)) static void
init_libfuncs (optab optable, int first_mode, int last_mode,
        const char *opname, int suffix)
{
  int mode;
  unsigned opname_len = strlen (opname);

  for (mode = first_mode; (int) mode <= (int) last_mode;
       mode = (enum machine_mode) ((int) mode + 1))
    {
      const char *mname = GET_MODE_NAME (mode);
      unsigned mname_len = strlen (mname);
      char *libfunc_name = alloca (2 + opname_len + mname_len + 1 + 1);
      char *p;
      const char *q;

      p = libfunc_name;
      *p++ = '_';
      *p++ = '_';
      for (q = opname; *q; )
 *p++ = *q++;
      for (q = mname; *q; q++)
 *p++ = TOLOWER (*q);
      *p++ = suffix;
      *p = '\0';

      optable->handlers[(int) mode].libfunc
 = init_one_libfunc (ggc_alloc_string (libfunc_name, p - libfunc_name));
    }
}
