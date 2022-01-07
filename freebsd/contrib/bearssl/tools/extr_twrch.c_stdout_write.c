
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;
typedef int DWORD ;


 scalar_t__ EINTR ;
 int GetStdHandle (int ) ;
 int STD_OUTPUT_HANDLE ;
 int WriteFile (int ,unsigned char const*,size_t,scalar_t__*,int *) ;
 int dump_blob (char*,unsigned char const*,size_t) ;
 scalar_t__ errno ;
 int fprintf (int ,char*) ;
 int stderr ;
 scalar_t__ verbose ;
 scalar_t__ write (int,unsigned char const*,size_t) ;

__attribute__((used)) static int
stdout_write(void *ctx, const unsigned char *buf, size_t len)
{
 for (;;) {



  ssize_t wlen;

  int eof;





  wlen = write(1, buf, len);
  if (wlen <= 0) {
   if (wlen < 0 && errno == EINTR) {
    continue;
   }
   eof = 1;
  } else {
   eof = 0;
  }

  if (eof) {
   if (*(int *)ctx) {
    if (verbose) {
     fprintf(stderr, "send: EOF\n");
    }
   }
   return -1;
  }
  if (*(int *)ctx) {
   dump_blob("send", buf, (size_t)wlen);
  }
  return (int)wlen;
 }
}
