
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int COPR_MIDI ;
 int EIO ;
 int devc ;
 int set_mt32 (int ,int ) ;
 int verify_mpu (int ) ;

__attribute__((used)) static int sscape_coproc_open(void *dev_info, int sub_device)
{
 if (sub_device == COPR_MIDI)
 {
  set_mt32(devc, 0);
  if (!verify_mpu(devc))
   return -EIO;
 }
 return 0;
}
