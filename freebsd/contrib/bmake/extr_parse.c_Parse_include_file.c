
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct loadedfile {int dummy; } ;
struct TYPE_2__ {char* fname; struct loadedfile* lf; } ;
typedef int * Lst ;
typedef scalar_t__ Boolean ;


 char* Dir_FindFile (char*,int *) ;
 scalar_t__ Lst_IsEmpty (int *) ;
 int O_RDONLY ;
 int PARSE_FATAL ;
 int ParseSetIncludedFile () ;
 int Parse_Error (int ,char*,char*) ;
 int Parse_SetInput (char*,int ,int,int ,struct loadedfile*) ;
 int STR_ADDSLASH ;
 int * Suff_GetPath (char*) ;
 char* bmake_strdup (char*) ;
 TYPE_1__* curFile ;
 int * defIncPath ;
 int * dirSearchPath ;
 scalar_t__ doing_depend ;
 int free (char*) ;
 int loadedfile_nextbuf ;
 struct loadedfile* loadfile (char*,int) ;
 int open (char*,int ) ;
 int * parseIncPath ;
 char* str_concat (char*,char*,int ) ;
 scalar_t__ strcmp (char*,char*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 char* strrchr (char*,char) ;
 int * sysIncPath ;

__attribute__((used)) static void
Parse_include_file(char *file, Boolean isSystem, Boolean depinc, int silent)
{
    struct loadedfile *lf;
    char *fullname;
    char *newName;
    char *prefEnd, *incdir;
    int fd;
    int i;






    fullname = file[0] == '/' ? bmake_strdup(file) : ((void*)0);

    if (fullname == ((void*)0) && !isSystem) {
 incdir = bmake_strdup(curFile->fname);
 prefEnd = strrchr(incdir, '/');
 if (prefEnd != ((void*)0)) {
     *prefEnd = '\0';

     for (i = 0; strncmp(file + i, "../", 3) == 0; i += 3) {
  prefEnd = strrchr(incdir + 1, '/');
  if (prefEnd == ((void*)0) || strcmp(prefEnd, "/..") == 0)
      break;
  *prefEnd = '\0';
     }
     newName = str_concat(incdir, file + i, STR_ADDSLASH);
     fullname = Dir_FindFile(newName, parseIncPath);
     if (fullname == ((void*)0))
  fullname = Dir_FindFile(newName, dirSearchPath);
     free(newName);
 }
 free(incdir);

 if (fullname == ((void*)0)) {






     char *suff;
     Lst suffPath = ((void*)0);

     if ((suff = strrchr(file, '.'))) {
  suffPath = Suff_GetPath(suff);
  if (suffPath != ((void*)0)) {
      fullname = Dir_FindFile(file, suffPath);
  }
     }
     if (fullname == ((void*)0)) {
  fullname = Dir_FindFile(file, parseIncPath);
  if (fullname == ((void*)0)) {
      fullname = Dir_FindFile(file, dirSearchPath);
  }
     }
 }
    }


    if (fullname == ((void*)0)) {



 fullname = Dir_FindFile(file,
      Lst_IsEmpty(sysIncPath) ? defIncPath : sysIncPath);
    }

    if (fullname == ((void*)0)) {
 if (!silent)
     Parse_Error(PARSE_FATAL, "Could not find %s", file);
 return;
    }


    fd = open(fullname, O_RDONLY);
    if (fd == -1) {
 if (!silent)
     Parse_Error(PARSE_FATAL, "Cannot open %s", fullname);
 free(fullname);
 return;
    }


    lf = loadfile(fullname, fd);

    ParseSetIncludedFile();

    Parse_SetInput(fullname, 0, -1, loadedfile_nextbuf, lf);
    curFile->lf = lf;
    if (depinc)
 doing_depend = depinc;
}
