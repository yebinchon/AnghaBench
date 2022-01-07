
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int LPSTARTUPINFO ;
typedef int LPPROCESS_INFORMATION ;
typedef int DWORD ;


 int FALSE ;
 int MAX_PATH ;
 int TRUE ;
 int _O_RDONLY ;
 int _close (int) ;
 int _open (char const*,int ) ;
 int _read (int,char*,int) ;
 int backslashify (char*) ;
 int errno ;
 int free (char*) ;
 char* mingw_rootify (char*) ;
 char* msys_rootify (char*) ;
 char* strchr (char*,char) ;
 scalar_t__ strncmp (char*,char*,int) ;
 char* strrchr (char*,char) ;
 int win32_spawn (char const*,int ,char* const*,char* const*,int ,int ,int ) ;

__attribute__((used)) static long
spawn_script (const char *executable, char *const *argv,
              char* const *env,
       DWORD dwCreationFlags,
       LPSTARTUPINFO si,
       LPPROCESS_INFORMATION pi)
{
  int pid = -1;
  int save_errno = errno;
  int fd = _open (executable, _O_RDONLY);

  if (fd >= 0)
    {
      char buf[MAX_PATH + 5];
      int len = _read (fd, buf, sizeof (buf) - 1);
      _close (fd);
      if (len > 3)
 {
   char *eol;
   buf[len] = '\0';
   eol = strchr (buf, '\n');
   if (eol && strncmp (buf, "#!", 2) == 0)
     {
       char *executable1;
       const char ** avhere = (const char **) --argv;
       do
  *eol = '\0';
       while (*--eol == '\r' || *eol == ' ' || *eol == '\t');
       for (executable1 = buf + 2; *executable1 == ' ' || *executable1 == '\t'; executable1++)
  continue;

       backslashify (executable1);
       *avhere = executable1;

       executable = strrchr (executable1, '\\') + 1;
       if (!executable)
  executable = executable1;
       pid = win32_spawn (executable, TRUE, argv, env,
     dwCreationFlags, si, pi);
     }
 }
    }
  if (pid < 0)
    errno = save_errno;
  return pid;
}
