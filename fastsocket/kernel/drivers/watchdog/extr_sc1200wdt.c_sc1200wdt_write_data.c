
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __sc1200wdt_write_data (unsigned char,unsigned char) ;
 int sc1200wdt_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline void sc1200wdt_write_data(unsigned char index,
      unsigned char data)
{
 spin_lock(&sc1200wdt_lock);
 __sc1200wdt_write_data(index, data);
 spin_unlock(&sc1200wdt_lock);
}
