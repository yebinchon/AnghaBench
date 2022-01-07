; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_program_lut_bank_sel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_program_lut_bank_sel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.vfe_gamma_lut_sel = type { i32, i32, i32 }
%struct.VFE_GammaLutSelect_ConfigCmdType = type { i32, i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"VFE gamma lut bank selection is 0x%x\0A\00", align 1
@ctrl = common dso_local global %struct.TYPE_2__* null, align 8
@VFE_LUT_BANK_SEL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vfe_gamma_lut_sel*)* @vfe_program_lut_bank_sel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vfe_program_lut_bank_sel(%struct.vfe_gamma_lut_sel* %0) #0 {
  %2 = alloca %struct.vfe_gamma_lut_sel*, align 8
  %3 = alloca %struct.VFE_GammaLutSelect_ConfigCmdType, align 4
  store %struct.vfe_gamma_lut_sel* %0, %struct.vfe_gamma_lut_sel** %2, align 8
  %4 = call i32 @memset(%struct.VFE_GammaLutSelect_ConfigCmdType* %3, i32 0, i32 12)
  %5 = load %struct.vfe_gamma_lut_sel*, %struct.vfe_gamma_lut_sel** %2, align 8
  %6 = getelementptr inbounds %struct.vfe_gamma_lut_sel, %struct.vfe_gamma_lut_sel* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = getelementptr inbounds %struct.VFE_GammaLutSelect_ConfigCmdType, %struct.VFE_GammaLutSelect_ConfigCmdType* %3, i32 0, i32 2
  store i32 %7, i32* %8, align 4
  %9 = load %struct.vfe_gamma_lut_sel*, %struct.vfe_gamma_lut_sel** %2, align 8
  %10 = getelementptr inbounds %struct.vfe_gamma_lut_sel, %struct.vfe_gamma_lut_sel* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds %struct.VFE_GammaLutSelect_ConfigCmdType, %struct.VFE_GammaLutSelect_ConfigCmdType* %3, i32 0, i32 1
  store i32 %11, i32* %12, align 4
  %13 = load %struct.vfe_gamma_lut_sel*, %struct.vfe_gamma_lut_sel** %2, align 8
  %14 = getelementptr inbounds %struct.vfe_gamma_lut_sel, %struct.vfe_gamma_lut_sel* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.VFE_GammaLutSelect_ConfigCmdType, %struct.VFE_GammaLutSelect_ConfigCmdType* %3, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = bitcast %struct.VFE_GammaLutSelect_ConfigCmdType* %3 to i32*
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @CDBG(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctrl, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @VFE_LUT_BANK_SEL, align 8
  %24 = add nsw i64 %22, %23
  %25 = bitcast %struct.VFE_GammaLutSelect_ConfigCmdType* %3 to i32*
  %26 = call i32 @vfe_prog_hw(i64 %24, i32* %25, i32 12)
  ret void
}

declare dso_local i32 @memset(%struct.VFE_GammaLutSelect_ConfigCmdType*, i32, i32) #1

declare dso_local i32 @CDBG(i8*, i32) #1

declare dso_local i32 @vfe_prog_hw(i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
