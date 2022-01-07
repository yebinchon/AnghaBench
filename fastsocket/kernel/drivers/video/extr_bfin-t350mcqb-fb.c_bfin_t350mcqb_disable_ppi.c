
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PORT_EN ;
 int bfin_read_PPI_CONTROL () ;
 int bfin_write_PPI_CONTROL (int) ;

__attribute__((used)) static inline void bfin_t350mcqb_disable_ppi(void)
{
 bfin_write_PPI_CONTROL(bfin_read_PPI_CONTROL() & ~PORT_EN);
}
