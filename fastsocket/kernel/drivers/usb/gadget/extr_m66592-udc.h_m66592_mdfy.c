
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct m66592 {int dummy; } ;


 int m66592_read (struct m66592*,unsigned long) ;
 int m66592_write (struct m66592*,int,unsigned long) ;

__attribute__((used)) static inline void m66592_mdfy(struct m66592 *m66592, u16 val, u16 pat,
  unsigned long offset)
{
 u16 tmp;
 tmp = m66592_read(m66592, offset);
 tmp = tmp & (~pat);
 tmp = tmp | val;
 m66592_write(m66592, tmp, offset);
}
