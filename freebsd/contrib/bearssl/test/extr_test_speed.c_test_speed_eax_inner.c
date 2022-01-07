
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ clock_t ;
typedef int br_eax_context ;
struct TYPE_4__ {int (* init ) (int *,unsigned char*,size_t) ;} ;
typedef TYPE_1__ br_block_ctrcbc_class ;
struct TYPE_5__ {int vtable; } ;
typedef TYPE_2__ br_aes_gen_ctrcbc_keys ;


 double CLOCKS_PER_SEC ;
 int br_eax_aad_inject (int *,unsigned char*,int) ;
 int br_eax_flip (int *) ;
 int br_eax_get_tag (int *,unsigned char*) ;
 int br_eax_init (int *,int *) ;
 int br_eax_reset (int *,unsigned char*,int) ;
 int br_eax_run (int *,int,unsigned char*,int) ;
 scalar_t__ clock () ;
 int fflush (int ) ;
 int memset (unsigned char*,char,int) ;
 int printf (char*,char*,...) ;
 int stdout ;
 int stub1 (int *,unsigned char*,size_t) ;
 int stub2 (int *,unsigned char*,size_t) ;

__attribute__((used)) static void
test_speed_eax_inner(char *name,
 const br_block_ctrcbc_class *vt, size_t key_len)
{
 unsigned char buf[8192], key[32], nonce[16], aad[16], tag[16];
 int i;
 long num;
 br_aes_gen_ctrcbc_keys ac;
 br_eax_context ec;

 if (vt == ((void*)0)) {
  printf("%-30s UNAVAILABLE\n", name);
  fflush(stdout);
  return;
 }
 memset(key, 'K', key_len);
 memset(nonce, 'N', sizeof nonce);
 memset(aad, 'A', sizeof aad);
 memset(buf, 'T', sizeof buf);
 for (i = 0; i < 10; i ++) {
  vt->init(&ac.vtable, key, key_len);
  br_eax_init(&ec, &ac.vtable);
  br_eax_reset(&ec, nonce, sizeof nonce);
  br_eax_aad_inject(&ec, aad, sizeof aad);
  br_eax_flip(&ec);
  br_eax_run(&ec, 1, buf, sizeof buf);
  br_eax_get_tag(&ec, tag);
 }
 num = 10;
 for (;;) {
  clock_t begin, end;
  double tt;
  long k;

  begin = clock();
  for (k = num; k > 0; k --) {
   vt->init(&ac.vtable, key, key_len);
   br_eax_init(&ec, &ac.vtable);
   br_eax_reset(&ec, nonce, sizeof nonce);
   br_eax_aad_inject(&ec, aad, sizeof aad);
   br_eax_flip(&ec);
   br_eax_run(&ec, 1, buf, sizeof buf);
   br_eax_get_tag(&ec, tag);
  }
  end = clock();
  tt = (double)(end - begin) / CLOCKS_PER_SEC;
  if (tt >= 2.0) {
   printf("%-30s %8.2f MB/s\n", name,
    ((double)sizeof buf) * (double)num
    / (tt * 1000000.0));
   fflush(stdout);
   return;
  }
  num <<= 1;
 }
}
