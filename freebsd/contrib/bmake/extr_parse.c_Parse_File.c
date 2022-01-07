
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct loadedfile {int dummy; } ;
struct TYPE_2__ {int lineno; struct loadedfile* lf; } ;


 scalar_t__ CONTINUE ;
 scalar_t__ DEBUG (int ) ;
 scalar_t__ FALSE ;
 scalar_t__ IsInclude (char*,scalar_t__) ;
 scalar_t__ IsSysVInclude (char*) ;
 int Lst_AtEnd (int ,char*) ;
 int Lst_Destroy (scalar_t__,int *) ;
 int Lst_ForEach (scalar_t__,int ,char*) ;
 scalar_t__ Lst_Init (scalar_t__) ;
 int PARSE ;
 int PARSE_FATAL ;
 int PARSE_WARNING ;
 int ParseAddCmd ;
 int ParseDoDependency (char*) ;
 int ParseDoInclude (char*) ;
 scalar_t__ ParseEOF () ;
 int ParseFinishLine () ;
 int ParseGmakeExport (char*) ;
 scalar_t__ ParseIsEscaped (char*,char*) ;
 scalar_t__ ParseMessage (char*) ;
 char* ParseReadLine () ;
 int ParseTraditionalInclude (char*) ;
 int Parse_DoVar (char*,int ) ;
 int Parse_Error (int ,char*,...) ;
 scalar_t__ Parse_IsVar (char*) ;
 int Parse_SetInput (char const*,int ,int,int ,struct loadedfile*) ;
 int PrintOnError (int *,int *) ;
 scalar_t__ TRUE ;
 int VARF_UNDEFERR ;
 int VARF_WANTRES ;
 int VAR_CMD ;
 int VAR_GLOBAL ;
 int Var_Delete (char*,int ) ;
 int Var_Export (char*,int) ;
 char* Var_Subst (int *,char*,int ,int) ;
 int Var_UnExport (char*) ;
 char* bmake_strdup (char*) ;
 TYPE_1__* curFile ;
 int debug_file ;
 int exit (int) ;
 scalar_t__ fatals ;
 int fflush (int ) ;
 int fprintf (int ,char*,...) ;
 int free (char*) ;
 scalar_t__ inLine ;
 scalar_t__ isspace (unsigned char) ;
 int loadedfile_nextbuf ;
 struct loadedfile* loadfile (char const*,int) ;
 char* progname ;
 int stderr ;
 int stdout ;
 int * strchr (char*,char) ;
 scalar_t__ strncmp (char*,char*,int) ;
 int targCmds ;
 scalar_t__ targets ;

void
Parse_File(const char *name, int fd)
{
    char *cp;
    char *line;
    struct loadedfile *lf;

    lf = loadfile(name, fd);

    inLine = FALSE;
    fatals = 0;

    if (name == ((void*)0)) {
     name = "(stdin)";
    }

    Parse_SetInput(name, 0, -1, loadedfile_nextbuf, lf);
    curFile->lf = lf;

    do {
 for (; (line = ParseReadLine()) != ((void*)0); ) {
     if (DEBUG(PARSE))
  fprintf(debug_file, "ParseReadLine (%d): '%s'\n",
   curFile->lineno, line);
     if (*line == '.') {






  for (cp = line + 1; isspace((unsigned char)*cp); cp++) {
      continue;
  }
  if (IsInclude(cp, FALSE)) {
      ParseDoInclude(cp);
      continue;
  }
  if (strncmp(cp, "undef", 5) == 0) {
      char *cp2;
      for (cp += 5; isspace((unsigned char) *cp); cp++)
   continue;
      for (cp2 = cp; !isspace((unsigned char) *cp2) &&
       (*cp2 != '\0'); cp2++)
   continue;
      *cp2 = '\0';
      Var_Delete(cp, VAR_GLOBAL);
      continue;
  } else if (strncmp(cp, "export", 6) == 0) {
      for (cp += 6; isspace((unsigned char) *cp); cp++)
   continue;
      Var_Export(cp, 1);
      continue;
  } else if (strncmp(cp, "unexport", 8) == 0) {
      Var_UnExport(cp);
      continue;
  } else if (strncmp(cp, "info", 4) == 0 ||
      strncmp(cp, "error", 5) == 0 ||
      strncmp(cp, "warning", 7) == 0) {
      if (ParseMessage(cp))
   continue;
  }
     }

     if (*line == '\t') {




  cp = line + 1;
       shellCommand:
  for (; isspace ((unsigned char)*cp); cp++) {
      continue;
  }
  if (*cp) {
      if (!inLine)
   Parse_Error(PARSE_FATAL,
         "Unassociated shell command \"%s\"",
         cp);





      if (targets) {
   cp = bmake_strdup(cp);
   Lst_ForEach(targets, ParseAddCmd, cp);



      }
  }
  continue;
     }
     if (Parse_IsVar(line)) {
  ParseFinishLine();
  Parse_DoVar(line, VAR_GLOBAL);
  continue;
     }
     cp = line;
     if (isspace((unsigned char) line[0])) {
  while ((*cp != '\0') && isspace((unsigned char) *cp))
      cp++;
  while (*cp && (ParseIsEscaped(line, cp) ||
   (*cp != ':') && (*cp != '!'))) {
      cp++;
  }
  if (*cp == '\0') {
      if (inLine) {
   Parse_Error(PARSE_WARNING,
         "Shell command needs a leading tab");
   goto shellCommand;
      }
  }
     }

     ParseFinishLine();






     {
  int level = 0;

  for (cp = line; *cp != 0; cp++) {
      if (*cp == '\\' && cp[1] != 0) {
   cp++;
   continue;
      }
      if (*cp == '$' &&
   (cp[1] == '(' || cp[1] == '{')) {
   level++;
   continue;
      }
      if (level > 0) {
   if (*cp == ')' || *cp == '}') {
       level--;
       continue;
   }
      } else if (*cp == ';') {
   break;
      }
  }
     }
     if (*cp != 0)

  *cp++ = 0;
     else
  cp = ((void*)0);






     line = Var_Subst(((void*)0), line, VAR_CMD, VARF_UNDEFERR|VARF_WANTRES);




     if (targets)
  Lst_Destroy(targets, ((void*)0));

     targets = Lst_Init(FALSE);
     inLine = TRUE;

     ParseDoDependency(line);
     free(line);


     if (cp != ((void*)0)) {
  goto shellCommand;
     }
 }



    } while (ParseEOF() == CONTINUE);

    if (fatals) {
 (void)fflush(stdout);
 (void)fprintf(stderr,
     "%s: Fatal errors encountered -- cannot continue",
     progname);
 PrintOnError(((void*)0), ((void*)0));
 exit(1);
    }
}
