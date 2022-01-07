
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __gthread_key_t ;


 scalar_t__ GetLastError () ;
 scalar_t__ TlsFree (int ) ;

int
__gthr_win32_key_delete (__gthread_key_t key)
{
  return (TlsFree (key) != 0) ? 0 : (int) GetLastError ();
}
