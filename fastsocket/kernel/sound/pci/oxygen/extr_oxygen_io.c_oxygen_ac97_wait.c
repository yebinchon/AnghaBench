
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
struct oxygen {int ac97_waitqueue; } ;


 int EIO ;
 int OXYGEN_AC97_INTERRUPT_STATUS ;
 scalar_t__ msecs_to_jiffies (int) ;
 unsigned int oxygen_read8 (struct oxygen*,int ) ;
 int wait_event_timeout (int ,int ,scalar_t__) ;

__attribute__((used)) static int oxygen_ac97_wait(struct oxygen *chip, unsigned int mask)
{
 u8 status = 0;





 wait_event_timeout(chip->ac97_waitqueue,
      ({ status |= oxygen_read8(chip, OXYGEN_AC97_INTERRUPT_STATUS);
         status & mask; }),
      msecs_to_jiffies(1) + 1);




 status |= oxygen_read8(chip, OXYGEN_AC97_INTERRUPT_STATUS);
 return status & mask ? 0 : -EIO;
}
