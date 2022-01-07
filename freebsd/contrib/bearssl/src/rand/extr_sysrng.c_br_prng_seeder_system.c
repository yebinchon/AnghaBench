
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * br_prng_seeder ;


 scalar_t__ rdrand_supported () ;
 int seeder_rdrand ;
 int seeder_urandom ;
 int seeder_win32 ;

br_prng_seeder
br_prng_seeder_system(const char **name)
{
 if (name != ((void*)0)) {
  *name = "none";
 }
 return 0;

}
