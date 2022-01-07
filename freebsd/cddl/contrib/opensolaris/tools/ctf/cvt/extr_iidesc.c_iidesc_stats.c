
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hash_t ;


 scalar_t__ II_GFUN ;
 scalar_t__ II_GVAR ;
 scalar_t__ II_SFUN ;
 scalar_t__ II_SOU ;
 scalar_t__ II_SVAR ;
 scalar_t__ II_TYPE ;
 int hash_iter (int *,int ,void*) ;
 int iidesc_count_type ;
 int printf (char*,int,int,int,int,int,int) ;

void
iidesc_stats(hash_t *ii)
{
 printf("GFun: %5d SFun: %5d GVar: %5d SVar: %5d T %5d SOU: %5d\n",
     hash_iter(ii, iidesc_count_type, (void *)II_GFUN),
     hash_iter(ii, iidesc_count_type, (void *)II_SFUN),
     hash_iter(ii, iidesc_count_type, (void *)II_GVAR),
     hash_iter(ii, iidesc_count_type, (void *)II_SVAR),
     hash_iter(ii, iidesc_count_type, (void *)II_TYPE),
     hash_iter(ii, iidesc_count_type, (void *)II_SOU));
}
