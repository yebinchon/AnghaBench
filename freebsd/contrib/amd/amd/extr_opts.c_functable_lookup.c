
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct functable {int func; scalar_t__ name; } ;
typedef int IntFuncPtr ;


 scalar_t__ FSTREQ (scalar_t__,char*) ;
 struct functable* functable ;

__attribute__((used)) static IntFuncPtr
functable_lookup(char *key)
{
  struct functable *fp;

  for (fp = functable; fp->name; fp++)
    if (FSTREQ(fp->name, key))
        return (fp->func);
  return (IntFuncPtr) ((void*)0);
}
