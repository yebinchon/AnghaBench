
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PE ;


 int libpe_release_object (int *) ;

void
pe_finish(PE *pe)
{

 if (pe == ((void*)0))
  return;

 libpe_release_object(pe);
}
