
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GNode ;


 int MAXPATHLEN ;
 int Var_Set (char const*,char*,int *,int ) ;
 char* Var_Value (char const*,int *,char**) ;
 int free (char*) ;
 int * get_cached_realpaths () ;
 char* realpath (char const*,char*) ;
 int strlcpy (char*,char*,int ) ;

char *
cached_realpath(const char *pathname, char *resolved)
{
    GNode *cache;
    char *rp, *cp;

    if (!pathname || !pathname[0])
 return ((void*)0);

    cache = get_cached_realpaths();

    if ((rp = Var_Value(pathname, cache, &cp)) != ((void*)0)) {

 strlcpy(resolved, rp, MAXPATHLEN);
    } else if ((rp = realpath(pathname, resolved)) != ((void*)0)) {
 Var_Set(pathname, rp, cache, 0);
    }
    free(cp);
    return rp ? resolved : ((void*)0);
}
