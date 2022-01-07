
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stab_handle {int dummy; } ;
struct stab_demangle_typestring {int dummy; } ;
struct stab_demangle_info {int typestring_alloc; struct stab_demangle_typestring* typestrings; int * args; int varargs; scalar_t__ typestring_count; struct stab_handle* info; void* dhandle; } ;
typedef int debug_type ;
typedef int bfd_boolean ;


 int FALSE ;
 char* _ (char*) ;
 int fprintf (int ,char*) ;
 int free (struct stab_demangle_typestring*) ;
 int stab_demangle_prefix (struct stab_demangle_info*,char const**,unsigned int) ;
 int stab_demangle_signature (struct stab_demangle_info*,char const**) ;
 int * stab_demangle_v3_argtypes (void*,struct stab_handle*,char const*,int *) ;
 int stderr ;
 scalar_t__ xmalloc (int) ;

__attribute__((used)) static debug_type *
stab_demangle_argtypes (void *dhandle, struct stab_handle *info,
   const char *physname, bfd_boolean *pvarargs,
   unsigned int physname_len)
{
  struct stab_demangle_info minfo;


  if (physname[0] == '_' && physname[1] == 'Z')
    return stab_demangle_v3_argtypes (dhandle, info, physname, pvarargs);

  minfo.dhandle = dhandle;
  minfo.info = info;
  minfo.args = ((void*)0);
  minfo.varargs = FALSE;
  minfo.typestring_alloc = 10;
  minfo.typestrings = ((struct stab_demangle_typestring *)
         xmalloc (minfo.typestring_alloc
    * sizeof *minfo.typestrings));
  minfo.typestring_count = 0;




  if (! stab_demangle_prefix (&minfo, &physname, physname_len))
    goto error_return;

  if (*physname != '\0')
    {
      if (! stab_demangle_signature (&minfo, &physname))
 goto error_return;
    }

  free (minfo.typestrings);
  minfo.typestrings = ((void*)0);

  if (minfo.args == ((void*)0))
    fprintf (stderr, _("no argument types in mangled string\n"));

  *pvarargs = minfo.varargs;
  return minfo.args;

 error_return:
  if (minfo.typestrings != ((void*)0))
    free (minfo.typestrings);
  return ((void*)0);
}
