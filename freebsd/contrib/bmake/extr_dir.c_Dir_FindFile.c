
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct stat {int dummy; } ;
struct TYPE_8__ {int files; } ;
typedef TYPE_1__ Path ;
typedef int * LstNode ;
typedef int Lst ;
typedef scalar_t__ Boolean ;


 scalar_t__ DEBUG (int ) ;
 int DIR ;
 char* DirFindDot (scalar_t__,char const*,char const*) ;
 char* DirLookup (TYPE_1__*,char const*,char const*,scalar_t__) ;
 char* DirLookupAbs (TYPE_1__*,char const*,char const*) ;
 char* DirLookupSubdir (TYPE_1__*,char const*) ;
 int Dir_AddDir (int ,char const*) ;
 scalar_t__ FAILURE ;
 scalar_t__ FALSE ;
 int * Hash_FindEntry (int *,char const*) ;
 int Lst_Close (int ) ;
 scalar_t__ Lst_Datum (int *) ;
 int * Lst_First (int ) ;
 int * Lst_Last (int ) ;
 int * Lst_Next (int ) ;
 scalar_t__ Lst_Open (int ) ;
 scalar_t__ TRUE ;
 int bigmisses ;
 char* bmake_strdup (char const*) ;
 scalar_t__ cached_stat (char const*,struct stat*) ;
 TYPE_1__* cur ;
 int debug_file ;
 TYPE_1__* dot ;
 TYPE_1__* dotLast ;
 int fprintf (int ,char*,...) ;
 int free (char*) ;
 int misses ;
 char* strrchr (char const*,char) ;
 char const* traling_dot ;

char *
Dir_FindFile(const char *name, Lst path)
{
    LstNode ln;
    char *file;
    Path *p;
    const char *cp;
    Boolean hasLastDot = FALSE;
    Boolean hasSlash;
    struct stat stb;
    const char *trailing_dot = ".";





    cp = strrchr(name, '/');
    if (cp) {
 hasSlash = TRUE;
 cp += 1;
    } else {
 hasSlash = FALSE;
 cp = name;
    }

    if (DEBUG(DIR)) {
 fprintf(debug_file, "Searching for %s ...", name);
    }

    if (Lst_Open(path) == FAILURE) {
 if (DEBUG(DIR)) {
     fprintf(debug_file, "couldn't open path, file not found\n");
 }
 misses += 1;
 return ((void*)0);
    }

    if ((ln = Lst_First(path)) != ((void*)0)) {
 p = (Path *)Lst_Datum(ln);
 if (p == dotLast) {
     hasLastDot = TRUE;
            if (DEBUG(DIR))
  fprintf(debug_file, "[dot last]...");
 }
    }
    if (DEBUG(DIR)) {
 fprintf(debug_file, "\n");
    }






    if (!hasSlash || (cp - name == 2 && *name == '.')) {
     if (!hasLastDot &&
   (file = DirFindDot(hasSlash, name, cp)) != ((void*)0)) {
      Lst_Close(path);
      return file;
     }

     while ((ln = Lst_Next(path)) != ((void*)0)) {
  p = (Path *)Lst_Datum(ln);
  if (p == dotLast)
      continue;
  if ((file = DirLookup(p, name, cp, hasSlash)) != ((void*)0)) {
      Lst_Close(path);
      return file;
  }
     }

     if (hasLastDot &&
   (file = DirFindDot(hasSlash, name, cp)) != ((void*)0)) {
      Lst_Close(path);
      return file;
     }
    }
    Lst_Close(path);
    if (!hasSlash) {
 if (DEBUG(DIR)) {
     fprintf(debug_file, "   failed.\n");
 }
 misses += 1;
 return ((void*)0);
    }

    if (*cp == '\0') {

 cp = trailing_dot;
    }

    if (name[0] != '/') {
 Boolean checkedDot = FALSE;

 if (DEBUG(DIR)) {
     fprintf(debug_file, "   Trying subdirectories...\n");
 }

 if (!hasLastDot) {
  if (dot) {
   checkedDot = TRUE;
   if ((file = DirLookupSubdir(dot, name)) != ((void*)0))
    return file;
  }
  if (cur && (file = DirLookupSubdir(cur, name)) != ((void*)0))
   return file;
 }

 (void)Lst_Open(path);
 while ((ln = Lst_Next(path)) != ((void*)0)) {
     p = (Path *)Lst_Datum(ln);
     if (p == dotLast)
  continue;
     if (p == dot) {
      if (checkedDot)
       continue;
  checkedDot = TRUE;
     }
     if ((file = DirLookupSubdir(p, name)) != ((void*)0)) {
  Lst_Close(path);
  return file;
     }
 }
 Lst_Close(path);

 if (hasLastDot) {
  if (dot && !checkedDot) {
   checkedDot = TRUE;
   if ((file = DirLookupSubdir(dot, name)) != ((void*)0))
    return file;
  }
  if (cur && (file = DirLookupSubdir(cur, name)) != ((void*)0))
   return file;
 }

 if (checkedDot) {




     if (DEBUG(DIR)) {
  fprintf(debug_file, "   Checked . already, returning NULL\n");
     }
     return ((void*)0);
 }

    } else {
 if (DEBUG(DIR)) {
     fprintf(debug_file, "   Trying exact path matches...\n");
 }

 if (!hasLastDot && cur && ((file = DirLookupAbs(cur, name, cp))
  != ((void*)0))) {
     if (file[0] == '\0') {
  free(file);
  return ((void*)0);
     }
     return file;
 }

 (void)Lst_Open(path);
 while ((ln = Lst_Next(path)) != ((void*)0)) {
     p = (Path *)Lst_Datum(ln);
     if (p == dotLast)
  continue;
     if ((file = DirLookupAbs(p, name, cp)) != ((void*)0)) {
  Lst_Close(path);
  if (file[0] == '\0') {
      free(file);
      return ((void*)0);
  }
  return file;
     }
 }
 Lst_Close(path);

 if (hasLastDot && cur && ((file = DirLookupAbs(cur, name, cp))
  != ((void*)0))) {
     if (file[0] == '\0') {
  free(file);
  return ((void*)0);
     }
     return file;
 }
    }
    if (DEBUG(DIR)) {
 fprintf(debug_file, "   Looking for \"%s\" ...\n", name);
    }

    bigmisses += 1;
    if (cached_stat(name, &stb) == 0) {
 return (bmake_strdup(name));
    }

    if (DEBUG(DIR)) {
 fprintf(debug_file, "   failed. Returning NULL\n");
    }
    return ((void*)0);

}
