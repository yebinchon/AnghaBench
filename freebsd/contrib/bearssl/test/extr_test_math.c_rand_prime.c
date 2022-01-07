
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpz_t ;


 int RNG ;
 int mpz_add_ui (int ,int ,int) ;
 scalar_t__ mpz_divisible_ui_p (int ,int) ;
 scalar_t__ mpz_probab_prime_p (int ,int) ;
 int mpz_setbit (int ,int) ;
 int mpz_sub_ui (int ,int ,int) ;
 int mpz_urandomb (int ,int ,int) ;

__attribute__((used)) static void
rand_prime(mpz_t x, int size)
{
 for (;;) {
  mpz_urandomb(x, RNG, size - 1);
  mpz_setbit(x, 0);
  mpz_setbit(x, size - 1);
  if (mpz_probab_prime_p(x, 50)) {
   mpz_sub_ui(x, x, 1);
   if (mpz_divisible_ui_p(x, 65537)) {
    continue;
   }
   mpz_add_ui(x, x, 1);
   return;
  }
 }
}
