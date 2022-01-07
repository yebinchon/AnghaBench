
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int mpz_t ;
struct TYPE_2__ {int (* decode_mod ) (int*,unsigned char*,size_t,int*) ;int (* ninv ) (int) ;int (* add ) (int*,int*,int) ;int (* sub ) (int*,int*,int) ;int word_size; int (* modpow ) (int*,unsigned char*,size_t,int*,int,int*,int*) ;int (* montymul ) (int*,int*,int*,int*,int) ;int (* to_monty ) (int*,int*) ;int (* from_monty ) (int*,int*,int) ;int (* reduce ) (int*,int*,int*) ;int (* decode ) (int*,unsigned char*,size_t) ;int (* decode_reduce ) (int*,unsigned char*,size_t,int*) ;} ;


 int EXIT_FAILURE ;
 int RNG ;
 int check_eqz (int*,int ) ;
 int exit (int ) ;
 int fflush (int ) ;
 int gmp_randinit_mt (int ) ;
 int gmp_randseed (int ,int ) ;
 TYPE_1__* impl ;
 int mpz_add (int ,int ,int ) ;
 int mpz_clear (int ) ;
 int mpz_export (unsigned char*,size_t*,int,int,int ,int ,int ) ;
 int mpz_init (int ) ;
 int mpz_mod (int ,int ,int ) ;
 int mpz_mul (int ,int ,int ) ;
 int mpz_mul_2exp (int ,int ,int) ;
 int mpz_powm (int ,int ,int ,int ) ;
 int mpz_set_ui (int ,int) ;
 scalar_t__ mpz_sgn (int ) ;
 int mpz_sub (int ,int ,int ) ;
 int mpz_urandomb (int ,int ,int) ;
 int mpz_urandomm (int ,int ,int ) ;
 int print_u (int*) ;
 int print_z (int ) ;
 int printf (char*) ;
 int rand_prime (int ,int) ;
 int stdout ;
 int stub1 (int*,unsigned char*,size_t) ;
 int stub10 (int*,int*,int) ;
 int stub11 (int*,unsigned char*,size_t,int*) ;
 int stub12 (int*,unsigned char*,size_t,int*) ;
 int stub13 (int*,int*,int) ;
 int stub14 (int*,int*,int) ;
 int stub15 (int*,unsigned char*,size_t,int*) ;
 int stub16 (int*,unsigned char*,size_t) ;
 int stub17 (int*,int*,int*) ;
 int stub18 (int*,unsigned char*,size_t,int*) ;
 int stub19 (int*,int*) ;
 int stub2 (int*,unsigned char*,size_t,int*) ;
 int stub20 (int*,int*,int) ;
 int stub21 (int*,unsigned char*,size_t,int*) ;
 int stub22 (int*,unsigned char*,size_t,int*) ;
 int stub23 (int*,int*) ;
 int stub24 (int*,int*,int*,int*,int) ;
 int stub25 (int*,unsigned char*,size_t,int*) ;
 int stub26 (int*,unsigned char*,size_t,int*,int,int*,int*) ;
 int stub3 (int) ;
 int stub4 (int*,unsigned char*,size_t,int*) ;
 int stub5 (int*,unsigned char*,size_t) ;
 int stub6 (int*,unsigned char*,size_t,int*) ;
 int stub7 (int*,unsigned char*,size_t,int*) ;
 int stub8 (int*,int*,int) ;
 int stub9 (int*,int*,int) ;
 scalar_t__ time (int *) ;

__attribute__((used)) static void
test_modint(void)
{
 int i, j, k;
 mpz_t p, a, b, v, t1;

 printf("Test modular integers: ");
 fflush(stdout);

 gmp_randinit_mt(RNG);
 mpz_init(p);
 mpz_init(a);
 mpz_init(b);
 mpz_init(v);
 mpz_init(t1);
 mpz_set_ui(t1, (unsigned long)time(((void*)0)));
 gmp_randseed(RNG, t1);
 for (k = 2; k <= 128; k ++) {
  for (i = 0; i < 10; i ++) {
   unsigned char ep[100], ea[100], eb[100], ev[100];
   size_t plen, alen, blen, vlen;
   uint32_t mp[40], ma[40], mb[40], mv[60], mx[100];
   uint32_t mt1[40], mt2[40], mt3[40];
   uint32_t ctl;
   uint32_t mp0i;

   rand_prime(p, k);
   mpz_urandomm(a, RNG, p);
   mpz_urandomm(b, RNG, p);
   mpz_urandomb(v, RNG, k + 60);
   if (mpz_sgn(b) == 0) {
    mpz_set_ui(b, 1);
   }
   mpz_export(ep, &plen, 1, 1, 0, 0, p);
   mpz_export(ea, &alen, 1, 1, 0, 0, a);
   mpz_export(eb, &blen, 1, 1, 0, 0, b);
   mpz_export(ev, &vlen, 1, 1, 0, 0, v);

   impl->decode(mp, ep, plen);
   if (impl->decode_mod(ma, ea, alen, mp) != 1) {
    printf("Decode error\n");
    printf("  ea = ");
    print_z(a);
    printf("\n");
    printf("  p = ");
    print_u(mp);
    printf("\n");
    exit(EXIT_FAILURE);
   }
   mp0i = impl->ninv(mp[1]);
   if (impl->decode_mod(mb, eb, blen, mp) != 1) {
    printf("Decode error\n");
    printf("  eb = ");
    print_z(b);
    printf("\n");
    printf("  p = ");
    print_u(mp);
    printf("\n");
    exit(EXIT_FAILURE);
   }
   impl->decode(mv, ev, vlen);
   check_eqz(mp, p);
   check_eqz(ma, a);
   check_eqz(mb, b);
   check_eqz(mv, v);

   impl->decode_mod(ma, ea, alen, mp);
   impl->decode_mod(mb, eb, blen, mp);
   ctl = impl->add(ma, mb, 1);
   ctl |= impl->sub(ma, mp, 0) ^ (uint32_t)1;
   impl->sub(ma, mp, ctl);
   mpz_add(t1, a, b);
   mpz_mod(t1, t1, p);
   check_eqz(ma, t1);

   impl->decode_mod(ma, ea, alen, mp);
   impl->decode_mod(mb, eb, blen, mp);
   impl->add(ma, mp, impl->sub(ma, mb, 1));
   mpz_sub(t1, a, b);
   mpz_mod(t1, t1, p);
   check_eqz(ma, t1);

   impl->decode_reduce(ma, ev, vlen, mp);
   mpz_mod(t1, v, p);
   check_eqz(ma, t1);

   impl->decode(mv, ev, vlen);
   impl->reduce(ma, mv, mp);
   mpz_mod(t1, v, p);
   check_eqz(ma, t1);

   impl->decode_mod(ma, ea, alen, mp);
   impl->to_monty(ma, mp);
   mpz_mul_2exp(t1, a, ((k + impl->word_size - 1)
    / impl->word_size) * impl->word_size);
   mpz_mod(t1, t1, p);
   check_eqz(ma, t1);
   impl->from_monty(ma, mp, mp0i);
   check_eqz(ma, a);

   impl->decode_mod(ma, ea, alen, mp);
   impl->decode_mod(mb, eb, blen, mp);
   impl->to_monty(ma, mp);
   impl->montymul(mt1, ma, mb, mp, mp0i);
   mpz_mul(t1, a, b);
   mpz_mod(t1, t1, p);
   check_eqz(mt1, t1);

   impl->decode_mod(ma, ea, alen, mp);
   impl->modpow(ma, ev, vlen, mp, mp0i, mt1, mt2);
   mpz_powm(t1, a, v, p);
   check_eqz(ma, t1);
  }
  printf(".");
  fflush(stdout);
 }
 mpz_clear(p);
 mpz_clear(a);
 mpz_clear(b);
 mpz_clear(v);
 mpz_clear(t1);

 printf(" done.\n");
 fflush(stdout);
}
