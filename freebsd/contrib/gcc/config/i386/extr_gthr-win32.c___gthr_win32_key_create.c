
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __gthread_key_t ;
typedef int DWORD ;


 scalar_t__ GetLastError () ;
 int TlsAlloc () ;
 int __mingwthr_key_dtor (int,void (*) (void*)) ;

int
__gthr_win32_key_create (__gthread_key_t *key, void (*dtor) (void *))
{
  int status = 0;
  DWORD tls_index = TlsAlloc ();
  if (tls_index != 0xFFFFFFFF)
    {
      *key = tls_index;





    }
  else
    status = (int) GetLastError ();
  return status;
}
