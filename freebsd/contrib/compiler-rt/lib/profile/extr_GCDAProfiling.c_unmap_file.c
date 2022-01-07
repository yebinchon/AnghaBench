
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CloseHandle (int *) ;
 int FlushViewOfFile (int *,scalar_t__) ;
 char* GetLastError () ;
 int MS_SYNC ;
 int UnmapViewOfFile (int *) ;
 int errno ;
 scalar_t__ file_size ;
 char* filename ;
 int fprintf (int ,char*,char*,char*) ;
 int * mmap_handle ;
 int msync (int *,scalar_t__,int ) ;
 int munmap (int *,scalar_t__) ;
 int stderr ;
 char* strerror (int) ;
 int * write_buffer ;

__attribute__((used)) static void unmap_file() {
  if (msync(write_buffer, file_size, MS_SYNC) == -1) {
    int errnum = errno;
    fprintf(stderr, "profiling: %s: cannot msync: %s\n", filename,
            strerror(errnum));
  }




  (void)munmap(write_buffer, file_size);


  write_buffer = ((void*)0);
  file_size = 0;
}
