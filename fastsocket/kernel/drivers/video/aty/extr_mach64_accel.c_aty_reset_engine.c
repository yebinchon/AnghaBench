
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atyfb_par {int dummy; } ;


 int BUS_CNTL ;
 int BUS_FIFO_ERR_ACK ;
 int BUS_HOST_ERR_ACK ;
 int GEN_TEST_CNTL ;
 int GUI_ENGINE_ENABLE ;
 int HWCURSOR_ENABLE ;
 int aty_ld_le32 (int ,struct atyfb_par const*) ;
 int aty_st_le32 (int ,int,struct atyfb_par const*) ;

void aty_reset_engine(const struct atyfb_par *par)
{

 aty_st_le32(GEN_TEST_CNTL,
  aty_ld_le32(GEN_TEST_CNTL, par) &
  ~(GUI_ENGINE_ENABLE | HWCURSOR_ENABLE), par);

 aty_st_le32(GEN_TEST_CNTL,
  aty_ld_le32(GEN_TEST_CNTL, par) | GUI_ENGINE_ENABLE, par);


 aty_st_le32(BUS_CNTL,
  aty_ld_le32(BUS_CNTL, par) | BUS_HOST_ERR_ACK | BUS_FIFO_ERR_ACK, par);
}
