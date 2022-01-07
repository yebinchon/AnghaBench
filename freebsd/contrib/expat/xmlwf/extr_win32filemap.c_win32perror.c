
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TCHAR ;
typedef int LPVOID ;
typedef int LPTSTR ;


 int FORMAT_MESSAGE_ALLOCATE_BUFFER ;
 int FORMAT_MESSAGE_FROM_SYSTEM ;
 scalar_t__ FormatMessage (int,int *,int ,int ,int ,int ,int *) ;
 int GetLastError () ;
 int LANG_NEUTRAL ;
 int LocalFree (int ) ;
 int MAKELANGID (int ,int ) ;
 int SUBLANG_DEFAULT ;
 int _T (char*) ;
 int _ftprintf (int ,int ,int const*,...) ;
 int fflush (int ) ;
 int stderr ;

__attribute__((used)) static void
win32perror(const TCHAR *s)
{
  LPVOID buf;
  if (FormatMessage(FORMAT_MESSAGE_ALLOCATE_BUFFER
                    | FORMAT_MESSAGE_FROM_SYSTEM,
                    ((void*)0),
                    GetLastError(),
                    MAKELANGID(LANG_NEUTRAL, SUBLANG_DEFAULT),
                    (LPTSTR) &buf,
                    0,
                    ((void*)0))) {
    _ftprintf(stderr, _T("%s: %s"), s, buf);
    fflush(stderr);
    LocalFree(buf);
  }
  else
    _ftprintf(stderr, _T("%s: unknown Windows error\n"), s);
}
