
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int RamBandwidthKBytesPerSec; int RamAmountKBytes; int CrystalFreqKHz; int VBlankBit; int MaxVClockFreqKHz; int LockUnlock; int SetSurfaces3D; int SetSurfaces2D; int SetStartAddress; int UnloadStateExt; int LoadStateExt; int ShowHideCursor; int Busy; int * PRAMIN; int * CURSOR; int * PEXTDEV; int * PFB; int * PMC; } ;
typedef TYPE_1__ RIVA_HW_INST ;


 int LoadStateExt ;
 int NV_RD32 (int *,int) ;
 int SetStartAddress3 ;
 int ShowHideCursor ;
 int UnloadStateExt ;
 int nv3Busy ;
 int nv3LockUnlock ;
 int nv3SetSurfaces2D ;
 int nv3SetSurfaces3D ;

__attribute__((used)) static void nv3GetConfig
(
    RIVA_HW_INST *chip
)
{



    if (NV_RD32(&chip->PFB[0x00000000/4], 0) & 0x00000020)
    {
        if (((NV_RD32(chip->PMC, 0x00000000) & 0xF0) == 0x20)
         && ((NV_RD32(chip->PMC, 0x00000000) & 0x0F) >= 0x02))
        {



            chip->RamBandwidthKBytesPerSec = 800000;
            switch (NV_RD32(chip->PFB, 0x00000000) & 0x03)
            {
                case 2:
                    chip->RamAmountKBytes = 1024 * 4;
                    break;
                case 1:
                    chip->RamAmountKBytes = 1024 * 2;
                    break;
                default:
                    chip->RamAmountKBytes = 1024 * 8;
                    break;
            }
        }
        else
        {
            chip->RamBandwidthKBytesPerSec = 1000000;
            chip->RamAmountKBytes = 1024 * 8;
        }
    }
    else
    {



        chip->RamBandwidthKBytesPerSec = 1000000;
        switch (NV_RD32(chip->PFB, 0x00000000) & 0x00000003)
        {
            case 0:
                chip->RamAmountKBytes = 1024 * 8;
                break;
            case 2:
                chip->RamAmountKBytes = 1024 * 4;
                break;
            default:
                chip->RamAmountKBytes = 1024 * 2;
                break;
        }
    }
    chip->CrystalFreqKHz = (NV_RD32(chip->PEXTDEV, 0x00000000) & 0x00000040) ? 14318 : 13500;
    chip->CURSOR = &(chip->PRAMIN[0x00008000/4 - 0x0800/4]);
    chip->VBlankBit = 0x00000100;
    chip->MaxVClockFreqKHz = 256000;



    chip->Busy = nv3Busy;
    chip->ShowHideCursor = ShowHideCursor;
    chip->LoadStateExt = LoadStateExt;
    chip->UnloadStateExt = UnloadStateExt;
    chip->SetStartAddress = SetStartAddress3;
    chip->SetSurfaces2D = nv3SetSurfaces2D;
    chip->SetSurfaces3D = nv3SetSurfaces3D;
    chip->LockUnlock = nv3LockUnlock;
}
