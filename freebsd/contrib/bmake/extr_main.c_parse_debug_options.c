
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEBUG_ARCH ;
 int DEBUG_COND ;
 int DEBUG_CWD ;
 int DEBUG_DIR ;
 int DEBUG_ERROR ;
 int DEBUG_FOR ;
 int DEBUG_GRAPH1 ;
 int DEBUG_GRAPH2 ;
 int DEBUG_GRAPH3 ;
 int DEBUG_JOB ;
 int DEBUG_LOUD ;
 int DEBUG_MAKE ;
 int DEBUG_META ;
 int DEBUG_PARSE ;
 int DEBUG_SCRIPT ;
 int DEBUG_SHELL ;
 int DEBUG_SUFF ;
 int DEBUG_TARG ;
 int DEBUG_VAR ;
 int TRUE ;
 int _IOLBF ;
 int _IONBF ;
 char* bmake_malloc (int) ;
 int debug ;
 int debugVflag ;
 scalar_t__ debug_file ;
 int fclose (scalar_t__) ;
 scalar_t__ fopen (char*,char const*) ;
 int fprintf (scalar_t__,char*,char*,...) ;
 int free (char*) ;
 int getpid () ;
 int memcpy (char*,char const*,int) ;
 char* progname ;
 int setvbuf (scalar_t__,int *,int ,int ) ;
 int snprintf (int ,int,char*,int) ;
 scalar_t__ stderr ;
 scalar_t__ stdout ;
 int strcmp (char const*,char*) ;
 int strlen (char const*) ;
 int usage () ;

__attribute__((used)) static void
parse_debug_options(const char *argvalue)
{
 const char *modules;
 const char *mode;
 char *fname;
 int len;

 for (modules = argvalue; *modules; ++modules) {
  switch (*modules) {
  case 'A':
   debug = ~0;
   break;
  case 'a':
   debug |= DEBUG_ARCH;
   break;
  case 'C':
   debug |= DEBUG_CWD;
   break;
  case 'c':
   debug |= DEBUG_COND;
   break;
  case 'd':
   debug |= DEBUG_DIR;
   break;
  case 'e':
   debug |= DEBUG_ERROR;
   break;
  case 'f':
   debug |= DEBUG_FOR;
   break;
  case 'g':
   if (modules[1] == '1') {
    debug |= DEBUG_GRAPH1;
    ++modules;
   }
   else if (modules[1] == '2') {
    debug |= DEBUG_GRAPH2;
    ++modules;
   }
   else if (modules[1] == '3') {
    debug |= DEBUG_GRAPH3;
    ++modules;
   }
   break;
  case 'j':
   debug |= DEBUG_JOB;
   break;
  case 'l':
   debug |= DEBUG_LOUD;
   break;
  case 'M':
   debug |= DEBUG_META;
   break;
  case 'm':
   debug |= DEBUG_MAKE;
   break;
  case 'n':
   debug |= DEBUG_SCRIPT;
   break;
  case 'p':
   debug |= DEBUG_PARSE;
   break;
  case 's':
   debug |= DEBUG_SUFF;
   break;
  case 't':
   debug |= DEBUG_TARG;
   break;
  case 'V':
   debugVflag = TRUE;
   break;
  case 'v':
   debug |= DEBUG_VAR;
   break;
  case 'x':
   debug |= DEBUG_SHELL;
   break;
  case 'F':
   if (debug_file != stdout && debug_file != stderr)
    fclose(debug_file);
   if (*++modules == '+') {
    modules++;
    mode = "a";
   } else
    mode = "w";
   if (strcmp(modules, "stdout") == 0) {
    debug_file = stdout;
    goto debug_setbuf;
   }
   if (strcmp(modules, "stderr") == 0) {
    debug_file = stderr;
    goto debug_setbuf;
   }
   len = strlen(modules);
   fname = bmake_malloc(len + 20);
   memcpy(fname, modules, len + 1);

   if (strcmp(fname + len - 3, ".%d") == 0)
    snprintf(fname + len - 2, 20, "%d", getpid());
   debug_file = fopen(fname, mode);
   if (!debug_file) {
    fprintf(stderr, "Cannot open debug file %s\n",
        fname);
    usage();
   }
   free(fname);
   goto debug_setbuf;
  default:
   (void)fprintf(stderr,
       "%s: illegal argument to d option -- %c\n",
       progname, *modules);
   usage();
  }
 }
debug_setbuf:




 setvbuf(debug_file, ((void*)0), _IONBF, 0);
 if (debug_file != stdout) {
  setvbuf(stdout, ((void*)0), _IOLBF, 0);
 }
}
