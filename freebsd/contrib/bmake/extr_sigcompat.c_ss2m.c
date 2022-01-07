
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sigset_t ;
typedef int MASK_T ;


 int memcpy (char*,char*,int) ;

__attribute__((used)) static MASK_T
ss2m(sigset_t *ss)
{
 MASK_T ma[(sizeof(sigset_t) / sizeof(MASK_T)) + 1];

 memcpy((char *) ma, (char *) ss, sizeof(sigset_t));
 return ma[0];
}
