
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sigset_t ;
typedef int MASK_T ;


 int memcpy (char*,char*,int) ;
 int memset (char*,int ,int) ;

__attribute__((used)) static void
m2ss(sigset_t *ss, MASK_T *m)
{
 if (sizeof(sigset_t) > sizeof(MASK_T))
  memset((char *) ss, 0, sizeof(sigset_t));

 memcpy((char *) ss, (char *) m, sizeof(MASK_T));
}
