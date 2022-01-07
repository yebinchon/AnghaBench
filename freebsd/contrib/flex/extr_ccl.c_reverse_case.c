
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ islower (int) ;
 scalar_t__ isupper (int) ;
 int tolower (int) ;
 int toupper (int) ;

int reverse_case (int c)
{
 return isupper (c) ? tolower (c) : (islower (c) ? toupper (c) : c);
}
