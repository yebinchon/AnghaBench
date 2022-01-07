
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int IO; int PCIO; int (* LockUnlock ) (TYPE_1__*,int ) ;} ;
typedef TYPE_1__ RIVA_HW_INST ;


 void* VGA_RD08 (int ,int) ;
 int VGA_WR08 (int ,int,int) ;
 int stub1 (TYPE_1__*,int ) ;

__attribute__((used)) static void SetStartAddress3
(
    RIVA_HW_INST *chip,
    unsigned start
)
{
    int offset = start >> 2;
    int pan = (start & 3) << 1;
    unsigned char tmp;




    chip->LockUnlock(chip, 0);



    VGA_WR08(chip->PCIO, 0x3D4, 0x0D); VGA_WR08(chip->PCIO, 0x3D5, offset);
    offset >>= 8;
    VGA_WR08(chip->PCIO, 0x3D4, 0x0C); VGA_WR08(chip->PCIO, 0x3D5, offset);
    offset >>= 8;
    VGA_WR08(chip->PCIO, 0x3D4, 0x19); tmp = VGA_RD08(chip->PCIO, 0x3D5);
    VGA_WR08(chip->PCIO, 0x3D5, (offset & 0x01F) | (tmp & ~0x1F));
    VGA_WR08(chip->PCIO, 0x3D4, 0x2D); tmp = VGA_RD08(chip->PCIO, 0x3D5);
    VGA_WR08(chip->PCIO, 0x3D5, (offset & 0x60) | (tmp & ~0x60));



    offset = VGA_RD08(chip->PCIO, chip->IO + 0x0A);
    VGA_WR08(chip->PCIO, 0x3C0, 0x13);
    VGA_WR08(chip->PCIO, 0x3C0, pan);
}
