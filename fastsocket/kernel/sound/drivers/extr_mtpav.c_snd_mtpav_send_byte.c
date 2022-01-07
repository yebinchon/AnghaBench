
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mtpav {int dummy; } ;


 int CREG ;
 int DREG ;
 int SIGC_WRITE ;
 int snd_mtpav_getreg (struct mtpav*,int ) ;
 int snd_mtpav_mputreg (struct mtpav*,int ,int) ;
 int snd_mtpav_wait_rfdhi (struct mtpav*) ;

__attribute__((used)) static void snd_mtpav_send_byte(struct mtpav *chip, u8 byte)
{
 u8 tcbyt;
 u8 clrwrite;
 u8 setwrite;

 snd_mtpav_wait_rfdhi(chip);



 tcbyt = snd_mtpav_getreg(chip, CREG);
 clrwrite = tcbyt & (SIGC_WRITE ^ 0xff);
 setwrite = tcbyt | SIGC_WRITE;

 snd_mtpav_mputreg(chip, DREG, byte);
 snd_mtpav_mputreg(chip, CREG, clrwrite);

 snd_mtpav_mputreg(chip, CREG, setwrite);

}
