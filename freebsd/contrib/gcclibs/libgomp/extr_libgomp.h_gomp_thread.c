
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gomp_thread {int dummy; } ;


 int gomp_tls_key ;
 struct gomp_thread* pthread_getspecific (int ) ;

__attribute__((used)) static inline struct gomp_thread *gomp_thread (void)
{
  return pthread_getspecific (gomp_tls_key);
}
