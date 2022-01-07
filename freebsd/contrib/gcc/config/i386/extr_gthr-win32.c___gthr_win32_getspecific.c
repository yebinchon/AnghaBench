
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __gthread_key_t ;
typedef int DWORD ;


 int GetLastError () ;
 int SetLastError (int ) ;
 void* TlsGetValue (int ) ;

void *
__gthr_win32_getspecific (__gthread_key_t key)
{
  DWORD lasterror;
  void *ptr;
  lasterror = GetLastError();
  ptr = TlsGetValue(key);
  SetLastError( lasterror );
  return ptr;
}
