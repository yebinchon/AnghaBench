
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;
typedef int DWORD ;


 scalar_t__ EINTR ;
 int GetStdHandle (int ) ;
 int ReadFile (int ,unsigned char*,size_t,scalar_t__*,int *) ;
 int STD_INPUT_HANDLE ;
 int dump_blob (char*,unsigned char*,size_t) ;
 scalar_t__ errno ;
 int fprintf (int ,char*) ;
 scalar_t__ read (int ,unsigned char*,size_t) ;
 int stderr ;
 scalar_t__ verbose ;

__attribute__((used)) static int
stdin_read(void *ctx, unsigned char *buf, size_t len)
{
 for (;;) {



  ssize_t rlen;

  int eof;





  rlen = read(0, buf, len);
  if (rlen <= 0) {
   if (rlen < 0 && errno == EINTR) {
    continue;
   }
   eof = 1;
  } else {
   eof = 0;
  }

  if (eof) {
   if (*(int *)ctx) {
    if (verbose) {
     fprintf(stderr, "recv: EOF\n");
    }
   }
   return -1;
  }
  if (*(int *)ctx) {
   dump_blob("recv", buf, (size_t)rlen);
  }
  return (int)rlen;
 }
}
