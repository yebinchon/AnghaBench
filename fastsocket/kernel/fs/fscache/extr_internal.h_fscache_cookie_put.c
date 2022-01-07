
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fscache_cookie {int usage; } ;


 int BUG_ON (int) ;
 int __fscache_cookie_put (struct fscache_cookie*) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 scalar_t__ atomic_read (int *) ;

__attribute__((used)) static inline void fscache_cookie_put(struct fscache_cookie *cookie)
{
 BUG_ON(atomic_read(&cookie->usage) <= 0);
 if (atomic_dec_and_test(&cookie->usage))
  __fscache_cookie_put(cookie);
}
