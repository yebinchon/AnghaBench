
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int close (int) ;
 unsigned char* malloc (int) ;
 int mkstemp (char*) ;
 int perror (char*) ;
 int write (int,unsigned char*,int) ;

__attribute__((used)) static char *test_file(int size)
{
 static char buf_templ[] = "/tmp/test-XXXXXX";
 char *templ = buf_templ;
 int fd, i;
 unsigned char *buf;

 fd = mkstemp(templ);
 if (fd < 0) {
  perror("mkstemp failed");
  return ((void*)0);
 }

 buf = malloc(size);
 if (!buf) {
  close(fd);
  return ((void*)0);
 }

 for (i = 0; i < size; i++)
  buf[i] = (unsigned char) ((int) i % 10);

 if (size != write(fd, buf, size))
  templ = ((void*)0);

 close(fd);
 return templ;
}
