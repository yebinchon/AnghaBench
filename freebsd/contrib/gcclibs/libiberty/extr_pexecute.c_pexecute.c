
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PEXECUTE_FIRST ;
 int PEXECUTE_LAST ;
 int PEXECUTE_SEARCH ;
 int PEX_LAST ;
 int PEX_SEARCH ;
 int PEX_USE_PIPES ;
 int idx ;
 int * pex ;
 int * pex_init (int ,char const*,char const*) ;
 char* pex_run (int *,int,char const*,char* const*,int *,int *,int*) ;

int
pexecute (const char *program, char * const *argv, const char *pname,
   const char *temp_base, char **errmsg_fmt, char **errmsg_arg,
   int flags)
{
  const char *errmsg;
  int err;

  if ((flags & PEXECUTE_FIRST) != 0)
    {
      if (pex != ((void*)0))
 {
   *errmsg_fmt = (char *) "pexecute already in progress";
   *errmsg_arg = ((void*)0);
   return -1;
 }
      pex = pex_init (PEX_USE_PIPES, pname, temp_base);
      idx = 0;
    }
  else
    {
      if (pex == ((void*)0))
 {
   *errmsg_fmt = (char *) "pexecute not in progress";
   *errmsg_arg = ((void*)0);
   return -1;
 }
    }

  errmsg = pex_run (pex,
      (((flags & PEXECUTE_LAST) != 0 ? PEX_LAST : 0)
       | ((flags & PEXECUTE_SEARCH) != 0 ? PEX_SEARCH : 0)),
      program, argv, ((void*)0), ((void*)0), &err);
  if (errmsg != ((void*)0))
    {
      *errmsg_fmt = (char *) errmsg;
      *errmsg_arg = ((void*)0);
      return -1;
    }




  return ++idx;
}
