
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TCHAR ;
typedef int * HANDLE ;
typedef scalar_t__ DWORD ;


 int CloseHandle (int *) ;
 int * CreateFile (int const*,int ,int ,int *,int ,int ,int *) ;
 int * CreateFileMapping (int *,int *,int ,int ,int ,int *) ;
 int FILE_FLAG_SEQUENTIAL_SCAN ;
 int FILE_MAP_READ ;
 int FILE_SHARE_READ ;
 int GENERIC_READ ;
 scalar_t__ GetFileSize (int *,scalar_t__*) ;
 int * INVALID_HANDLE_VALUE ;
 void* MapViewOfFile (int *,int ,int ,int ,int ) ;
 int OPEN_EXISTING ;
 int PAGE_READONLY ;
 int UnmapViewOfFile (void*) ;
 scalar_t__ XML_MAX_CHUNK_LEN ;
 int win32perror (int const*) ;

int
filemap(const TCHAR *name,
        void (*processor)(const void *, size_t, const TCHAR *, void *arg),
        void *arg)
{
  HANDLE f;
  HANDLE m;
  DWORD size;
  DWORD sizeHi;
  void *p;

  f = CreateFile(name, GENERIC_READ, FILE_SHARE_READ, ((void*)0), OPEN_EXISTING,
                          FILE_FLAG_SEQUENTIAL_SCAN, ((void*)0));
  if (f == INVALID_HANDLE_VALUE) {
    win32perror(name);
    return 0;
  }
  size = GetFileSize(f, &sizeHi);
  if (size == (DWORD)-1) {
    win32perror(name);
    CloseHandle(f);
    return 0;
  }
  if (sizeHi || (size > XML_MAX_CHUNK_LEN)) {
    CloseHandle(f);
    return 2;
  }

  if (size == 0) {
    static const char c = '\0';
    processor(&c, 0, name, arg);
    CloseHandle(f);
    return 1;
  }
  m = CreateFileMapping(f, ((void*)0), PAGE_READONLY, 0, 0, ((void*)0));
  if (m == ((void*)0)) {
    win32perror(name);
    CloseHandle(f);
    return 0;
  }
  p = MapViewOfFile(m, FILE_MAP_READ, 0, 0, 0);
  if (p == ((void*)0)) {
    win32perror(name);
    CloseHandle(m);
    CloseHandle(f);
    return 0;
  }
  processor(p, size, name, arg);
  UnmapViewOfFile(p);
  CloseHandle(m);
  CloseHandle(f);
  return 1;
}
