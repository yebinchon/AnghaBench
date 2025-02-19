
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int Architecture; int Chipset; int PRAMDAC; int PCRTC; int PCIO; int PCRTC0; int twoHeads; int PGRAPH; int PFB; int PRAMDAC0; } ;
struct TYPE_5__ {void* dither; void* cursorConfig; void* extra; void* crtcOwner; void* head2; void* head; void* pitch3; void* pitch2; void* pitch1; void* pitch0; void* offset3; void* offset2; void* offset1; void* offset0; void* config; void* scale; void* general; void* pllsel; void* vpll2; void* vpll; void* interlace; void* cursor2; void* cursor1; void* cursor0; void* arbitration1; void* arbitration0; void* horiz; void* pixel; void* screen; void* repaint1; void* repaint0; } ;
typedef TYPE_1__ RIVA_HW_STATE ;
typedef TYPE_2__ RIVA_HW_INST ;







 void* NV_RD32 (int ,int) ;
 void* VGA_RD08 (int ,int) ;
 int VGA_WR08 (int ,int,int) ;

__attribute__((used)) static void UnloadStateExt
(
    RIVA_HW_INST *chip,
    RIVA_HW_STATE *state
)
{



    VGA_WR08(chip->PCIO, 0x03D4, 0x19);
    state->repaint0 = VGA_RD08(chip->PCIO, 0x03D5);
    VGA_WR08(chip->PCIO, 0x03D4, 0x1A);
    state->repaint1 = VGA_RD08(chip->PCIO, 0x03D5);
    VGA_WR08(chip->PCIO, 0x03D4, 0x25);
    state->screen = VGA_RD08(chip->PCIO, 0x03D5);
    VGA_WR08(chip->PCIO, 0x03D4, 0x28);
    state->pixel = VGA_RD08(chip->PCIO, 0x03D5);
    VGA_WR08(chip->PCIO, 0x03D4, 0x2D);
    state->horiz = VGA_RD08(chip->PCIO, 0x03D5);
    VGA_WR08(chip->PCIO, 0x03D4, 0x1B);
    state->arbitration0 = VGA_RD08(chip->PCIO, 0x03D5);
    VGA_WR08(chip->PCIO, 0x03D4, 0x20);
    state->arbitration1 = VGA_RD08(chip->PCIO, 0x03D5);
    VGA_WR08(chip->PCIO, 0x03D4, 0x30);
    state->cursor0 = VGA_RD08(chip->PCIO, 0x03D5);
    VGA_WR08(chip->PCIO, 0x03D4, 0x31);
    state->cursor1 = VGA_RD08(chip->PCIO, 0x03D5);
    VGA_WR08(chip->PCIO, 0x03D4, 0x2F);
    state->cursor2 = VGA_RD08(chip->PCIO, 0x03D5);
    VGA_WR08(chip->PCIO, 0x03D4, 0x39);
    state->interlace = VGA_RD08(chip->PCIO, 0x03D5);
    state->vpll = NV_RD32(chip->PRAMDAC0, 0x00000508);
    state->vpll2 = NV_RD32(chip->PRAMDAC0, 0x00000520);
    state->pllsel = NV_RD32(chip->PRAMDAC0, 0x0000050C);
    state->general = NV_RD32(chip->PRAMDAC, 0x00000600);
    state->scale = NV_RD32(chip->PRAMDAC, 0x00000848);
    state->config = NV_RD32(chip->PFB, 0x00000200);
    switch (chip->Architecture)
    {
        case 132:
            state->offset0 = NV_RD32(chip->PGRAPH, 0x00000630);
            state->offset1 = NV_RD32(chip->PGRAPH, 0x00000634);
            state->offset2 = NV_RD32(chip->PGRAPH, 0x00000638);
            state->offset3 = NV_RD32(chip->PGRAPH, 0x0000063C);
            state->pitch0 = NV_RD32(chip->PGRAPH, 0x00000650);
            state->pitch1 = NV_RD32(chip->PGRAPH, 0x00000654);
            state->pitch2 = NV_RD32(chip->PGRAPH, 0x00000658);
            state->pitch3 = NV_RD32(chip->PGRAPH, 0x0000065C);
            break;
        case 131:
            state->offset0 = NV_RD32(chip->PGRAPH, 0x00000640);
            state->offset1 = NV_RD32(chip->PGRAPH, 0x00000644);
            state->offset2 = NV_RD32(chip->PGRAPH, 0x00000648);
            state->offset3 = NV_RD32(chip->PGRAPH, 0x0000064C);
            state->pitch0 = NV_RD32(chip->PGRAPH, 0x00000670);
            state->pitch1 = NV_RD32(chip->PGRAPH, 0x00000674);
            state->pitch2 = NV_RD32(chip->PGRAPH, 0x00000678);
            state->pitch3 = NV_RD32(chip->PGRAPH, 0x0000067C);
            break;
        case 130:
        case 129:
        case 128:
            state->offset0 = NV_RD32(chip->PGRAPH, 0x00000640);
            state->offset1 = NV_RD32(chip->PGRAPH, 0x00000644);
            state->offset2 = NV_RD32(chip->PGRAPH, 0x00000648);
            state->offset3 = NV_RD32(chip->PGRAPH, 0x0000064C);
            state->pitch0 = NV_RD32(chip->PGRAPH, 0x00000670);
            state->pitch1 = NV_RD32(chip->PGRAPH, 0x00000674);
            state->pitch2 = NV_RD32(chip->PGRAPH, 0x00000678);
            state->pitch3 = NV_RD32(chip->PGRAPH, 0x0000067C);
            if(chip->twoHeads) {
               state->head = NV_RD32(chip->PCRTC0, 0x00000860);
               state->head2 = NV_RD32(chip->PCRTC0, 0x00002860);
               VGA_WR08(chip->PCIO, 0x03D4, 0x44);
               state->crtcOwner = VGA_RD08(chip->PCIO, 0x03D5);
            }
            VGA_WR08(chip->PCIO, 0x03D4, 0x41);
            state->extra = VGA_RD08(chip->PCIO, 0x03D5);
            state->cursorConfig = NV_RD32(chip->PCRTC, 0x00000810);

            if((chip->Chipset & 0x0ff0) == 0x0110) {
                state->dither = NV_RD32(chip->PRAMDAC, 0x0528);
            } else
            if((chip->Chipset & 0x0ff0) >= 0x0170) {
                state->dither = NV_RD32(chip->PRAMDAC, 0x083C);
            }
            break;
    }
}
