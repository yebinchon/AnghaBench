
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kioctx {int users; } ;


 int BUG_ON (int) ;
 int __put_ioctx (struct kioctx*) ;
 int atomic_dec_and_test (int *) ;
 scalar_t__ atomic_read (int *) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static inline void put_ioctx(struct kioctx *kioctx)
{
 BUG_ON(atomic_read(&kioctx->users) <= 0);
 if (unlikely(atomic_dec_and_test(&kioctx->users)))
  __put_ioctx(kioctx);
}
