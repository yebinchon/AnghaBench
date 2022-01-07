
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* uint32_t ;
struct vfe_cmd_test_gen_start {int testGenRandomSeed; int colorBarsRotatePeriod; scalar_t__ colorBarsPixelPattern; int colorBarsSplitEnable; int unicolorBarEnable; int unicolorBarSelect; int endOfFrameDummyLine; int startOfFrameDummyLine; int vblEnable; int vbl; int hbi; int endOfLineNOffset; int startOfLineOffset; int endOfFrameNOffset; int startOfFrameOffset; int imageHeight; int imageWidth; scalar_t__ vsyncEdge; scalar_t__ hsyncEdge; scalar_t__ pixelDataSize; int systematicDataSelect; int pixelDataSelect; int numFrame; } ;
struct VFE_TestGen_ConfigCmdType {int randomSeed; int rotatePeriod; void* pixelPattern; int splitEnable; int unicolorBarEnable; int unicolorBarSelect; int eofDummy; int sofDummy; int vBlankIntervalEnable; int vBlankInterval; int hBlankInterval; int eolNOffset; int solOffset; int eofNOffset; int sofOffset; int imageHeight; int imageWidth; void* vsyncEdge; void* hsyncEdge; void* pixelDataSize; int systematicDataSelect; int pixelDataSelect; int numFrame; } ;
typedef int cmd ;
struct TYPE_2__ {scalar_t__ vfebase; } ;


 scalar_t__ VFE_HW_TESTGEN_CFG ;
 TYPE_1__* ctrl ;
 int memset (struct VFE_TestGen_ConfigCmdType*,int ,int) ;
 int vfe_prog_hw (scalar_t__,void**,int) ;

void vfe_test_gen_start(struct vfe_cmd_test_gen_start *in)
{
 struct VFE_TestGen_ConfigCmdType cmd;

 memset(&cmd, 0, sizeof(cmd));

 cmd.numFrame = in->numFrame;
 cmd.pixelDataSelect = in->pixelDataSelect;
 cmd.systematicDataSelect = in->systematicDataSelect;
 cmd.pixelDataSize = (uint32_t)in->pixelDataSize;
 cmd.hsyncEdge = (uint32_t)in->hsyncEdge;
 cmd.vsyncEdge = (uint32_t)in->vsyncEdge;
 cmd.imageWidth = in->imageWidth;
 cmd.imageHeight = in->imageHeight;
 cmd.sofOffset = in->startOfFrameOffset;
 cmd.eofNOffset = in->endOfFrameNOffset;
 cmd.solOffset = in->startOfLineOffset;
 cmd.eolNOffset = in->endOfLineNOffset;
 cmd.hBlankInterval = in->hbi;
 cmd.vBlankInterval = in->vbl;
 cmd.vBlankIntervalEnable = in->vblEnable;
 cmd.sofDummy = in->startOfFrameDummyLine;
 cmd.eofDummy = in->endOfFrameDummyLine;
 cmd.unicolorBarSelect = in->unicolorBarSelect;
 cmd.unicolorBarEnable = in->unicolorBarEnable;
 cmd.splitEnable = in->colorBarsSplitEnable;
 cmd.pixelPattern = (uint32_t)in->colorBarsPixelPattern;
 cmd.rotatePeriod = in->colorBarsRotatePeriod;
 cmd.randomSeed = in->testGenRandomSeed;

 vfe_prog_hw(ctrl->vfebase + VFE_HW_TESTGEN_CFG,
  (uint32_t *) &cmd, sizeof(cmd));
}
