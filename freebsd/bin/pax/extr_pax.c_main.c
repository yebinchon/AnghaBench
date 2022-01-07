
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int _TFILE_BASE ;






 int LC_ALL ;

 int O_CLOEXEC ;
 int O_RDONLY ;
 char* _PATH_TMP ;
 int act ;
 int append () ;
 int archive () ;
 int copy () ;
 scalar_t__ cwdfd ;
 int err (int,char*) ;
 int errno ;
 int exit_val ;
 int extract () ;
 scalar_t__ gen_init () ;
 char* getenv (char*) ;
 int * gzip_program ;
 int list () ;
 int listf ;
 int * malloc (size_t) ;
 int memcpy (int *,char const*,size_t) ;
 scalar_t__ open (char*,int) ;
 int options (int,char**) ;
 int paxwarn (int,char*) ;
 int setlocale (int ,char*) ;
 int stderr ;
 size_t strlen (char const*) ;
 int syswarn (int ,int ,char*) ;
 int * tempbase ;
 int * tempfile ;
 scalar_t__ tty_init () ;

int
main(int argc, char *argv[])
{
 const char *tmpdir;
 size_t tdlen;

 (void) setlocale(LC_ALL, "");
 listf = stderr;



 cwdfd = open(".", O_RDONLY | O_CLOEXEC);
 if (cwdfd < 0) {
  syswarn(0, errno, "Can't open current working directory.");
  return(exit_val);
 }




 if ((tmpdir = getenv("TMPDIR")) == ((void*)0) || *tmpdir == '\0')
  tmpdir = _PATH_TMP;
 tdlen = strlen(tmpdir);
 while (tdlen > 0 && tmpdir[tdlen - 1] == '/')
  tdlen--;
 tempfile = malloc(tdlen + 1 + sizeof(_TFILE_BASE));
 if (tempfile == ((void*)0)) {
  paxwarn(1, "Cannot allocate memory for temp file name.");
  return(exit_val);
 }
 if (tdlen)
  memcpy(tempfile, tmpdir, tdlen);
 tempbase = tempfile + tdlen;
 *tempbase++ = '/';




 options(argc, argv);
 if ((gen_init() < 0) || (tty_init() < 0))
  return(exit_val);




 switch (act) {
 case 129:
  extract();
  break;
 case 131:
  archive();
  break;
 case 132:
  if (gzip_program != ((void*)0))
   err(1, "can not gzip while appending");
  append();
  break;
 case 130:
  copy();
  break;
 default:
 case 128:
  list();
  break;
 }
 return(exit_val);
}
