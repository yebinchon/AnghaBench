
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct m66592 {int dummy; } ;


 int M66592_BEMPE ;
 int M66592_BRDYE ;
 unsigned long M66592_INTENB0 ;
 int M66592_NRDYE ;
 int m66592_bclr (struct m66592*,int,unsigned long) ;
 int m66592_read (struct m66592*,unsigned long) ;
 int m66592_write (struct m66592*,int,unsigned long) ;

__attribute__((used)) static void disable_pipe_irq(struct m66592 *m66592, u16 pipenum,
  unsigned long reg)
{
 u16 tmp;

 tmp = m66592_read(m66592, M66592_INTENB0);
 m66592_bclr(m66592, M66592_BEMPE | M66592_NRDYE | M66592_BRDYE,
   M66592_INTENB0);
 m66592_bclr(m66592, (1 << pipenum), reg);
 m66592_write(m66592, tmp, M66592_INTENB0);
}
