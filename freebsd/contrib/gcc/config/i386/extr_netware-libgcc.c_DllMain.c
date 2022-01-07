
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HINSTANCE ;
typedef int DWORD ;
typedef int BOOL ;


 int AllocSignature ;
 int * AllocateResourceTag (void*,char*,int ) ;


 int * allocRTag ;

BOOL
DllMain (HINSTANCE libraryId __attribute__ ((__unused__)),
  DWORD reason, void *hModule)
{
  switch (reason)
    {
    case 128:
      allocRTag = AllocateResourceTag (hModule,
           "libgcc memory", AllocSignature);
      return allocRTag != ((void*)0);
    case 129:


      break;
    }
  return 1;
}
