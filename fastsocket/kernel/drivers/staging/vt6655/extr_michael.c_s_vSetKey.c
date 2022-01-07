
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef void* DWORD ;


 void* K0 ;
 void* K1 ;
 int s_vClear () ;

__attribute__((used)) static VOID s_vSetKey (DWORD dwK0, DWORD dwK1)
{

    K0 = dwK0;
    K1 = dwK1;

    s_vClear();
}
