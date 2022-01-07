
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int decNumber ;
typedef int Int ;


 int * decTrim (int *,int ,int *) ;

decNumber *
decNumberTrim (decNumber * dn)
{
  Int dropped;
  return decTrim (dn, 0, &dropped);
}
