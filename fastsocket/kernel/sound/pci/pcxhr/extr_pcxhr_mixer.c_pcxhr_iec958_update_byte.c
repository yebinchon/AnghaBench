
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcxhr {unsigned char* aes_bits; int chip_idx; int mgr; } ;
struct pcxhr_rmh {int* cmd; int cmd_len; } ;


 int CMD_ACCESS_IO_WRITE ;
 int IO_NUM_REG_CUER ;
 int pcxhr_init_rmh (struct pcxhr_rmh*,int ) ;
 int pcxhr_send_msg (int ,struct pcxhr_rmh*) ;
 int snd_printdd (char*,int,int,int,int) ;

__attribute__((used)) static int pcxhr_iec958_update_byte(struct snd_pcxhr *chip,
        int aes_idx, unsigned char aes_bits)
{
 int i, err, cmd;
 unsigned char new_bits = aes_bits;
 unsigned char old_bits = chip->aes_bits[aes_idx];
 struct pcxhr_rmh rmh;

 for (i = 0; i < 8; i++) {
  if ((old_bits & 0x01) != (new_bits & 0x01)) {
   cmd = chip->chip_idx & 0x03;
   if (chip->chip_idx > 3)

    cmd |= 1 << 22;
   cmd |= ((aes_idx << 3) + i) << 2;
   cmd |= (new_bits & 0x01) << 23;
   pcxhr_init_rmh(&rmh, CMD_ACCESS_IO_WRITE);
   rmh.cmd[0] |= IO_NUM_REG_CUER;
   rmh.cmd[1] = cmd;
   rmh.cmd_len = 2;
   snd_printdd("write iec958 AES %d byte %d bit %d (cmd %x)\n",
        chip->chip_idx, aes_idx, i, cmd);
   err = pcxhr_send_msg(chip->mgr, &rmh);
   if (err)
    return err;
  }
  old_bits >>= 1;
  new_bits >>= 1;
 }
 chip->aes_bits[aes_idx] = aes_bits;
 return 0;
}
