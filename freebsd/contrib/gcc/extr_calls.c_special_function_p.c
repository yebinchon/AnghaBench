
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ DECL_CONTEXT (scalar_t__) ;
 scalar_t__ DECL_NAME (scalar_t__) ;
 int ECF_MAY_BE_ALLOCA ;
 int ECF_NORETURN ;
 int ECF_RETURNS_TWICE ;
 int IDENTIFIER_LENGTH (scalar_t__) ;
 char* IDENTIFIER_POINTER (scalar_t__) ;
 scalar_t__ NULL_TREE ;
 scalar_t__ TRANSLATION_UNIT_DECL ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_PUBLIC (scalar_t__) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static int
special_function_p (tree fndecl, int flags)
{
  if (fndecl && DECL_NAME (fndecl)
      && IDENTIFIER_LENGTH (DECL_NAME (fndecl)) <= 17







      && (DECL_CONTEXT (fndecl) == NULL_TREE
   || TREE_CODE (DECL_CONTEXT (fndecl)) == TRANSLATION_UNIT_DECL)
      && TREE_PUBLIC (fndecl))
    {
      const char *name = IDENTIFIER_POINTER (DECL_NAME (fndecl));
      const char *tname = name;




      if (((IDENTIFIER_LENGTH (DECL_NAME (fndecl)) == 6
     && name[0] == 'a'
     && ! strcmp (name, "alloca"))
    || (IDENTIFIER_LENGTH (DECL_NAME (fndecl)) == 16
        && name[0] == '_'
        && ! strcmp (name, "__builtin_alloca"))))
 flags |= ECF_MAY_BE_ALLOCA;


      if (name[0] == '_')
 {
   if (name[1] == '_' && name[2] == 'x')
     tname += 3;
   else if (name[1] == '_')
     tname += 2;
   else
     tname += 1;
 }

      if (tname[0] == 's')
 {
   if ((tname[1] == 'e'
        && (! strcmp (tname, "setjmp")
     || ! strcmp (tname, "setjmp_syscall")))
       || (tname[1] == 'i'
    && ! strcmp (tname, "sigsetjmp"))
       || (tname[1] == 'a'
    && ! strcmp (tname, "savectx")))
     flags |= ECF_RETURNS_TWICE;

   if (tname[1] == 'i'
       && ! strcmp (tname, "siglongjmp"))
     flags |= ECF_NORETURN;
 }
      else if ((tname[0] == 'q' && tname[1] == 's'
  && ! strcmp (tname, "qsetjmp"))
        || (tname[0] == 'v' && tname[1] == 'f'
     && ! strcmp (tname, "vfork"))
        || (tname[0] == 'g' && tname[1] == 'e'
     && !strcmp (tname, "getcontext")))
 flags |= ECF_RETURNS_TWICE;

      else if (tname[0] == 'l' && tname[1] == 'o'
        && ! strcmp (tname, "longjmp"))
 flags |= ECF_NORETURN;
    }

  return flags;
}
