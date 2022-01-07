
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fN (int ,char*,int) ;
 int fN2 (int ,char*,int) ;
 int f_a ;
 int f_b ;
 int f_c ;
 int f_d ;
 int f_e ;

int
main()
{




 char a[] = {(char)-7, (char)201, (char)0, (char)0, (char)28, (char)1};
 char b[] = {(char)84, (char)69, (char)0, (char)0, (char)28, (char)0};
 char c[] = {(char)84, (char)69, (char)0, (char)0, (char)28, (char)1};
 char d[] = {(char)-7, (char)201, (char)0, (char)0, (char)29, (char)0};
 char e[] = {(char)84, (char)69, (char)0, (char)0, (char)28, (char)0};

 fN(f_a, a, 1);
 fN(f_b, b, 0);
 fN(f_d, d, 102);
 fN2(f_e, e, -2);
 fN(f_c, c, 0);
 fN(f_a, a, -1);
 fN(f_d, d, 101);
 fN(f_e, e, -2);
 fN(f_e, e, 2);
 fN2(f_e, e, 2);

 return (0);
}
