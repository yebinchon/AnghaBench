
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAKE_MAKEFILES ;
 int VAR_GLOBAL ;
 int Var_Append (int ,char const*,int ) ;
 char* Var_Value (int ,int ,char**) ;
 int free (char*) ;
 scalar_t__ memcmp (char*,char const*,size_t) ;
 char* strchr (char*,char) ;
 int strlen (char const*) ;

__attribute__((used)) static void
ParseTrackInput(const char *name)
{
    char *old;
    char *ep;
    char *fp = ((void*)0);
    size_t name_len = strlen(name);

    old = Var_Value(MAKE_MAKEFILES, VAR_GLOBAL, &fp);
    if (old) {
 ep = old + strlen(old) - name_len;

 for (; old != ((void*)0); old = strchr(old, ' ')) {
     if (*old == ' ')
  old++;
     if (old >= ep)
  break;
     if (memcmp(old, name, name_len) == 0
      && (old[name_len] == 0 || old[name_len] == ' '))
  goto cleanup;
 }
    }
    Var_Append (MAKE_MAKEFILES, name, VAR_GLOBAL);
 cleanup:
    if (fp) {
 free(fp);
    }
}
