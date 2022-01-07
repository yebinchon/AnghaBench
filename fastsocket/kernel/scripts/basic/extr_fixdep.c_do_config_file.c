
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {scalar_t__ st_size; } ;


 int MAP_PRIVATE ;
 int O_RDONLY ;
 int PROT_READ ;
 int close (int) ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int fstat (int,struct stat*) ;
 void* mmap (int *,scalar_t__,int ,int ,int,int ) ;
 int munmap (void*,scalar_t__) ;
 int open (char*,int ) ;
 int parse_config_file (void*,scalar_t__) ;
 int perror (char*) ;
 int stderr ;

__attribute__((used)) static void do_config_file(char *filename)
{
 struct stat st;
 int fd;
 void *map;

 fd = open(filename, O_RDONLY);
 if (fd < 0) {
  fprintf(stderr, "fixdep: ");
  perror(filename);
  exit(2);
 }
 fstat(fd, &st);
 if (st.st_size == 0) {
  close(fd);
  return;
 }
 map = mmap(((void*)0), st.st_size, PROT_READ, MAP_PRIVATE, fd, 0);
 if ((long) map == -1) {
  perror("fixdep: mmap");
  close(fd);
  return;
 }

 parse_config_file(map, st.st_size);

 munmap(map, st.st_size);

 close(fd);
}
