
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Lst ;


 scalar_t__ DEBUG (int ) ;
 int DIR ;
 int DirExpandCurly (char const*,char const*,int ,int ) ;
 int DirExpandInt (char const*,int ,int ) ;
 int DirMatchFiles (char const*,int ,int ) ;
 int DirPrintWord ;
 int Dir_AddDir (int ,char*) ;
 char* Dir_FindFile (char const*,int ) ;
 int FALSE ;
 int Lst_Destroy (int ,int *) ;
 int Lst_ForEach (int ,int ,int *) ;
 int Lst_Init (int ) ;
 scalar_t__ UNCONST (char const*) ;
 int debug_file ;
 int dot ;
 int fprintf (int ,char*,...) ;
 char* strchr (char const*,char) ;
 int strlen (char*) ;

void
Dir_Expand(const char *word, Lst path, Lst expansions)
{
    const char *cp;

    if (DEBUG(DIR)) {
 fprintf(debug_file, "Expanding \"%s\"... ", word);
    }

    cp = strchr(word, '{');
    if (cp) {
 DirExpandCurly(word, cp, path, expansions);
    } else {
 cp = strchr(word, '/');
 if (cp) {




     for (cp = word; *cp; cp++) {
  if (*cp == '?' || *cp == '[' || *cp == '*' || *cp == '{') {
      break;
  }
     }
     if (*cp == '{') {



  DirExpandCurly(word, cp, path, expansions);
  return;
     } else if (*cp != '\0') {



  char *dirpath;

  while (cp > word && *cp != '/') {
      cp--;
  }
  if (cp != word) {
      char sc;




      sc = cp[1];
      ((char *)UNCONST(cp))[1] = '\0';
      dirpath = Dir_FindFile(word, path);
      ((char *)UNCONST(cp))[1] = sc;







      if (dirpath != ((void*)0)) {
   char *dp = &dirpath[strlen(dirpath) - 1];
   if (*dp == '/')
       *dp = '\0';
   path = Lst_Init(FALSE);
   (void)Dir_AddDir(path, dirpath);
   DirExpandInt(cp+1, path, expansions);
   Lst_Destroy(path, ((void*)0));
      }
  } else {



      DirExpandInt(word, path, expansions);
  }
     } else {



  DirExpandInt(word, path, expansions);
     }
 } else {



     DirMatchFiles(word, dot, expansions);




     DirExpandInt(word, path, expansions);
 }
    }
    if (DEBUG(DIR)) {
 Lst_ForEach(expansions, DirPrintWord, ((void*)0));
 fprintf(debug_file, "\n");
    }
}
