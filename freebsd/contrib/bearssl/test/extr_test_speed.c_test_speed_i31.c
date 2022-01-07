
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ clock_t ;


 double CLOCKS_PER_SEC ;
 int br_i31_decode (int *,unsigned char const*,int) ;
 int br_i31_decode_reduce (int *,unsigned char*,int,int *) ;
 int br_i31_from_monty (int *,int *,int ) ;
 int br_i31_moddiv (int *,int *,int *,int ,int *) ;
 int br_i31_montymul (int *,int *,int *,int *,int ) ;
 int br_i31_ninv31 (int ) ;
 int br_i31_to_monty (int *,int *) ;
 scalar_t__ clock () ;
 int fflush (int ) ;
 int memset (unsigned char*,unsigned char,int) ;
 int printf (char*,char*,double) ;
 int stdout ;

__attribute__((used)) static void
test_speed_i31(void)
{
 static const unsigned char bp[] = {

  0x01, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
  0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
  0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
  0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
  0xFF, 0xFA, 0x51, 0x86, 0x87, 0x83, 0xBF, 0x2F,
  0x96, 0x6B, 0x7F, 0xCC, 0x01, 0x48, 0xF7, 0x09,
  0xA5, 0xD0, 0x3B, 0xB5, 0xC9, 0xB8, 0x89, 0x9C,
  0x47, 0xAE, 0xBB, 0x6F, 0xB7, 0x1E, 0x91, 0x38,
  0x64, 0x09
 };

 unsigned char tmp[60 + sizeof bp];
 uint32_t p[20], x[20], y[20], z[20], uu[60], p0i;
 int i;
 long num;

 br_i31_decode(p, bp, sizeof bp);
 p0i = br_i31_ninv31(p[1]);
 memset(tmp, 'T', sizeof tmp);
 br_i31_decode_reduce(x, tmp, sizeof tmp, p);
 memset(tmp, 'U', sizeof tmp);
 br_i31_decode_reduce(y, tmp, sizeof tmp, p);

 for (i = 0; i < 10; i ++) {
  br_i31_to_monty(x, p);
 }
 num = 10;
 for (;;) {
  clock_t begin, end;
  double tt;
  long k;

  begin = clock();
  for (k = num; k > 0; k --) {
   br_i31_to_monty(x, p);
  }
  end = clock();
  tt = (double)(end - begin) / CLOCKS_PER_SEC;
  if (tt >= 2.0) {
   printf("%-30s %8.2f ops/s\n", "i31 to_monty",
    (double)num / tt);
   fflush(stdout);
   break;
  }
  num <<= 1;
 }

 for (i = 0; i < 10; i ++) {
  br_i31_from_monty(x, p, p0i);
 }
 num = 10;
 for (;;) {
  clock_t begin, end;
  double tt;
  long k;

  begin = clock();
  for (k = num; k > 0; k --) {
   br_i31_from_monty(x, p, p0i);
  }
  end = clock();
  tt = (double)(end - begin) / CLOCKS_PER_SEC;
  if (tt >= 2.0) {
   printf("%-30s %8.2f ops/s\n", "i31 from_monty",
    (double)num / tt);
   fflush(stdout);
   break;
  }
  num <<= 1;
 }

 for (i = 0; i < 10; i ++) {
  br_i31_montymul(z, x, y, p, p0i);
 }
 num = 10;
 for (;;) {
  clock_t begin, end;
  double tt;
  long k;

  begin = clock();
  for (k = num; k > 0; k --) {
   br_i31_montymul(z, x, y, p, p0i);
  }
  end = clock();
  tt = (double)(end - begin) / CLOCKS_PER_SEC;
  if (tt >= 2.0) {
   printf("%-30s %8.2f ops/s\n", "i31 montymul",
    (double)num / tt);
   fflush(stdout);
   break;
  }
  num <<= 1;
 }

 for (i = 0; i < 10; i ++) {
  br_i31_moddiv(x, y, p, p0i, uu);
 }
 num = 10;
 for (;;) {
  clock_t begin, end;
  double tt;
  long k;

  begin = clock();
  for (k = num; k > 0; k --) {
   br_i31_moddiv(x, y, p, p0i, uu);
  }
  end = clock();
  tt = (double)(end - begin) / CLOCKS_PER_SEC;
  if (tt >= 2.0) {
   printf("%-30s %8.2f ops/s\n", "i31 moddiv",
    (double)num / tt);
   fflush(stdout);
   break;
  }
  num <<= 1;
 }
}
