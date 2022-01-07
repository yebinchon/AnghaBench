
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nm256 {int dummy; } ;


 int NM_RECORD_ENABLE_REG ;
 int snd_nm256_writeb (struct nm256*,int ,int ) ;

__attribute__((used)) static void
snd_nm256_capture_stop(struct nm256 *chip)
{

 snd_nm256_writeb(chip, NM_RECORD_ENABLE_REG, 0);
}
