
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash_bucket {int lock; } ;


 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void put_hash_bucket(struct hash_bucket *bucket,
       unsigned long *flags)
{
 unsigned long __flags = *flags;

 spin_unlock_irqrestore(&bucket->lock, __flags);
}
