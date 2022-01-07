
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* LPSTR ;
typedef int HLOCAL ;


 int FORMAT_MESSAGE_ALLOCATE_BUFFER ;
 int FORMAT_MESSAGE_FROM_SYSTEM ;
 int FORMAT_MESSAGE_IGNORE_INSERTS ;
 int FORMAT_MESSAGE_MAX_WIDTH_MASK ;
 int FormatMessageA (int,int *,int ,int ,char*,int ,int *) ;
 int GetLastError () ;
 int LANG_NEUTRAL ;
 int LocalFree (int ) ;
 int MAKELANGID (int ,int ) ;
 int SUBLANG_DEFAULT ;
 int fprintf (int ,char*,char const*,char*,int,char const*,char*) ;
 int stderr ;
 char* trim_filename (char const*) ;

__attribute__((used)) static inline void
w32_error (const char* function, const char* file, int line,
    const char* my_msg)
{
  LPSTR w32_msgbuf;
  FormatMessageA (FORMAT_MESSAGE_ALLOCATE_BUFFER
    | FORMAT_MESSAGE_FROM_SYSTEM
    | FORMAT_MESSAGE_IGNORE_INSERTS
    | FORMAT_MESSAGE_MAX_WIDTH_MASK,
        ((void*)0), GetLastError(),
    MAKELANGID(LANG_NEUTRAL, SUBLANG_DEFAULT),
    (LPSTR) &w32_msgbuf, 0, ((void*)0));
  fprintf(stderr, "internal error in %s, at %s:%d: %s: %s\n",
   function, trim_filename (file), line, my_msg, w32_msgbuf);
  LocalFree ((HLOCAL)w32_msgbuf);
}
