
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct vfe_cmd_asf_update {int * filter2Coefficients; int * filter1Coefficients; int sharpThreshE5; int sharpThreshE4; int sharpThreshE3; int sharpThreshE2; int normalizeFactor; int sharpK2; int sharpK1; int sharpThreshE1; int cropEnable; int smoothCoefSurr; int smoothCoefCenter; int sharpMode; int smoothFilterEnabled; int enable; } ;
struct vfe_asf_update {int F2Coeff8; int F2Coeff7; int F2Coeff6; int F2Coeff5; int F2Coeff4; int F2Coeff3; int F2Coeff2; int F2Coeff1; int F2Coeff0; int F1Coeff8; int F1Coeff7; int F1Coeff6; int F1Coeff5; int F1Coeff4; int F1Coeff3; int F1Coeff2; int F1Coeff1; int F1Coeff0; int sharpThresholdE5; int sharpThresholdE4; int sharpThresholdE3; int sharpThresholdE2; int normalizeFactor; int sharpDegreeK2; int sharpDegreeK1; int sharpThresholdE1; int cropEnable; int smoothCoeff0; int smoothCoeff1; int sharpMode; int smoothEnable; } ;
typedef int cmd ;
struct TYPE_3__ {int asfEnable; } ;
struct TYPE_4__ {scalar_t__ vfebase; TYPE_1__ vfeModuleEnableLocal; } ;


 scalar_t__ VFE_ASF_CFG ;
 TYPE_2__* ctrl ;
 int memset (struct vfe_asf_update*,int ,int) ;
 int vfe_prog_hw (scalar_t__,int *,int) ;

void vfe_asf_update(struct vfe_cmd_asf_update *in)
{
 struct vfe_asf_update cmd;
 memset(&cmd, 0, sizeof(cmd));

 ctrl->vfeModuleEnableLocal.asfEnable = in->enable;

 cmd.smoothEnable = in->smoothFilterEnabled;
 cmd.sharpMode = in->sharpMode;
 cmd.smoothCoeff1 = in->smoothCoefCenter;
 cmd.smoothCoeff0 = in->smoothCoefSurr;
 cmd.cropEnable = in->cropEnable;
 cmd.sharpThresholdE1 = in->sharpThreshE1;
 cmd.sharpDegreeK1 = in->sharpK1;
 cmd.sharpDegreeK2 = in->sharpK2;
 cmd.normalizeFactor = in->normalizeFactor;
 cmd.sharpThresholdE2 = in->sharpThreshE2;
 cmd.sharpThresholdE3 = in->sharpThreshE3;
 cmd.sharpThresholdE4 = in->sharpThreshE4;
 cmd.sharpThresholdE5 = in->sharpThreshE5;
 cmd.F1Coeff0 = in->filter1Coefficients[0];
 cmd.F1Coeff1 = in->filter1Coefficients[1];
 cmd.F1Coeff2 = in->filter1Coefficients[2];
 cmd.F1Coeff3 = in->filter1Coefficients[3];
 cmd.F1Coeff4 = in->filter1Coefficients[4];
 cmd.F1Coeff5 = in->filter1Coefficients[5];
 cmd.F1Coeff6 = in->filter1Coefficients[6];
 cmd.F1Coeff7 = in->filter1Coefficients[7];
 cmd.F1Coeff8 = in->filter1Coefficients[8];
 cmd.F2Coeff0 = in->filter2Coefficients[0];
 cmd.F2Coeff1 = in->filter2Coefficients[1];
 cmd.F2Coeff2 = in->filter2Coefficients[2];
 cmd.F2Coeff3 = in->filter2Coefficients[3];
 cmd.F2Coeff4 = in->filter2Coefficients[4];
 cmd.F2Coeff5 = in->filter2Coefficients[5];
 cmd.F2Coeff6 = in->filter2Coefficients[6];
 cmd.F2Coeff7 = in->filter2Coefficients[7];
 cmd.F2Coeff8 = in->filter2Coefficients[8];

 vfe_prog_hw(ctrl->vfebase + VFE_ASF_CFG,
  (uint32_t *)&cmd, sizeof(cmd));
}
