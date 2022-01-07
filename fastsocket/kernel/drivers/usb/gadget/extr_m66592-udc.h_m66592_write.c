
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct m66592 {scalar_t__ reg; } ;


 int outw (int ,unsigned long) ;

__attribute__((used)) static inline void m66592_write(struct m66592 *m66592, u16 val,
    unsigned long offset)
{
 outw(val, (unsigned long)m66592->reg + offset);
}
