
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfin_t350mcqbfb_info {int dummy; } ;


 scalar_t__ H_ACTPIX ;
 int H_START ;
 int PPI_PACK_EN ;
 int PPI_POLS_1 ;
 int PPI_PORT_CFG_01 ;
 int PPI_TX_MODE ;
 int PPI_XFER_TYPE_11 ;
 int V_LINES ;
 int bfin_write_PPI_CONTROL (int) ;
 int bfin_write_PPI_COUNT (scalar_t__) ;
 int bfin_write_PPI_DELAY (int ) ;
 int bfin_write_PPI_FRAME (int ) ;

__attribute__((used)) static void bfin_t350mcqb_config_ppi(struct bfin_t350mcqbfb_info *fbi)
{
 bfin_write_PPI_DELAY(H_START);
 bfin_write_PPI_COUNT(H_ACTPIX-1);
 bfin_write_PPI_FRAME(V_LINES);

 bfin_write_PPI_CONTROL(PPI_TX_MODE |
    PPI_XFER_TYPE_11 |
    PPI_PORT_CFG_01 |
    PPI_PACK_EN |
    PPI_POLS_1);
}
