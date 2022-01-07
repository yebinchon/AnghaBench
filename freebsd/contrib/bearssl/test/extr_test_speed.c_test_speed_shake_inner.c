
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ clock_t ;
typedef int br_shake_context ;


 double CLOCKS_PER_SEC ;
 int br_shake_flip (int *) ;
 int br_shake_init (int *,int) ;
 int br_shake_inject (int *,unsigned char*,int) ;
 int br_shake_produce (int *,unsigned char*,int) ;
 scalar_t__ clock () ;
 int fflush (int ) ;
 int memset (unsigned char*,char,int) ;
 int printf (char*,int,double) ;
 int stdout ;

__attribute__((used)) static void
test_speed_shake_inner(int security_level)
{
 unsigned char buf[8192];
 br_shake_context sc;
 int i;
 long num;

 memset(buf, 'D', sizeof buf);
 br_shake_init(&sc, security_level);
 for (i = 0; i < 10; i ++) {
  br_shake_inject(&sc, buf, sizeof buf);
 }
 num = 10;
 for (;;) {
  clock_t begin, end;
  double tt;
  long k;

  begin = clock();
  for (k = num; k > 0; k --) {
   br_shake_inject(&sc, buf, sizeof buf);
  }
  end = clock();
  tt = (double)(end - begin) / CLOCKS_PER_SEC;
  if (tt >= 2.0) {
   printf("SHAKE%-3d (inject)              %8.2f MB/s\n",
    security_level,
    ((double)sizeof buf) * (double)num
    / (tt * 1000000.0));
   fflush(stdout);
   break;
  }
  num <<= 1;
 }

 br_shake_flip(&sc);
 for (i = 0; i < 10; i ++) {
  br_shake_produce(&sc, buf, sizeof buf);
 }

 num = 10;
 for (;;) {
  clock_t begin, end;
  double tt;
  long k;

  begin = clock();
  for (k = num; k > 0; k --) {
   br_shake_produce(&sc, buf, sizeof buf);
  }
  end = clock();
  tt = (double)(end - begin) / CLOCKS_PER_SEC;
  if (tt >= 2.0) {
   printf("SHAKE%-3d (produce)             %8.2f MB/s\n",
    security_level,
    ((double)sizeof buf) * (double)num
    / (tt * 1000000.0));
   fflush(stdout);
   break;
  }
  num <<= 1;
 }
}
