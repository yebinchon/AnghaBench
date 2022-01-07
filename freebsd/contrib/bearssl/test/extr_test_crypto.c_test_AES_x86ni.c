
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int br_block_ctr_class ;
typedef int br_block_cbcenc_class ;
typedef int br_block_cbcdec_class ;


 int EXIT_FAILURE ;
 int * br_aes_x86ni_cbcdec_get_vtable () ;
 int * br_aes_x86ni_cbcenc_get_vtable () ;
 int * br_aes_x86ni_ctr_get_vtable () ;
 int exit (int ) ;
 int fprintf (int ,char*,int,int,int) ;
 int printf (char*) ;
 int stderr ;
 int test_AES_generic (char*,int const*,int const*,int const*,int,int) ;

__attribute__((used)) static void
test_AES_x86ni(void)
{
 const br_block_cbcenc_class *x_cbcenc;
 const br_block_cbcdec_class *x_cbcdec;
 const br_block_ctr_class *x_ctr;
 int hcbcenc, hcbcdec, hctr;

 x_cbcenc = br_aes_x86ni_cbcenc_get_vtable();
 x_cbcdec = br_aes_x86ni_cbcdec_get_vtable();
 x_ctr = br_aes_x86ni_ctr_get_vtable();
 hcbcenc = (x_cbcenc != ((void*)0));
 hcbcdec = (x_cbcdec != ((void*)0));
 hctr = (x_ctr != ((void*)0));
 if (hcbcenc != hctr || hcbcdec != hctr) {
  fprintf(stderr, "AES_x86ni availability mismatch (%d/%d/%d)\n",
   hcbcenc, hcbcdec, hctr);
  exit(EXIT_FAILURE);
 }
 if (hctr) {
  test_AES_generic("AES_x86ni",
   x_cbcenc, x_cbcdec, x_ctr, 1, 1);
 } else {
  printf("Test AES_x86ni: UNAVAILABLE\n");
 }
}
