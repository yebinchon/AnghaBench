
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HANDLE ;


 int CloseHandle (int *) ;
 int * CreateFileMapping (scalar_t__,int *,int ,int ,int ,int *) ;
 int DWORD_HI (scalar_t__) ;
 int DWORD_LO (scalar_t__) ;
 int FILE_MAP_WRITE ;
 char* GetLastError () ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int MAP_FILE ;
 int MAP_SHARED ;
 void* MapViewOfFile (int *,int ,int ,int ,scalar_t__) ;
 int PAGE_READWRITE ;
 int PROT_READ ;
 int PROT_WRITE ;
 int SEEK_END ;
 scalar_t__ _get_osfhandle (int) ;
 int errno ;
 int fd ;
 scalar_t__ file_size ;
 char* filename ;
 int fprintf (int ,char*,char*,char*) ;
 int fseek (int ,long,int ) ;
 scalar_t__ ftell (int ) ;
 void* mmap (int ,scalar_t__,int,int,int,int ) ;
 int * mmap_handle ;
 int output_file ;
 int stderr ;
 char* strerror (int) ;
 void* write_buffer ;

__attribute__((used)) static int map_file() {
  fseek(output_file, 0L, SEEK_END);
  file_size = ftell(output_file);



  if (file_size == 0)
    return -1;
  write_buffer = mmap(0, file_size, PROT_READ | PROT_WRITE,
                      MAP_FILE | MAP_SHARED, fd, 0);
  if (write_buffer == (void *)-1) {
    int errnum = errno;
    fprintf(stderr, "profiling: %s: cannot map: %s\n", filename,
            strerror(errnum));
    return -1;
  }


  return 0;
}
