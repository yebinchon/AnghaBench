; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe7x.c_vfe_7x_convert.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe7x.c_vfe_7x_convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_vfe_phy_info = type { i32, i32, i32 }
%struct.vfe_endframe = type { i32, i32, i32, i32, i32, i32 }
%struct.vfe_frame_extra = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [47 x i8] c"vfe_7x_convert, y_phy = 0x%x, cbcr_phy = 0x%x\0A\00", align 1
@extdata = common dso_local global i8* null, align 8
@extlen = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msm_vfe_phy_info*, i32, i8*, i8**, i32*)* @vfe_7x_convert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vfe_7x_convert(%struct.msm_vfe_phy_info* %0, i32 %1, i8* %2, i8** %3, i32* %4) #0 {
  %6 = alloca %struct.msm_vfe_phy_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32*, align 8
  store %struct.msm_vfe_phy_info* %0, %struct.msm_vfe_phy_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  store i32* %4, i32** %10, align 8
  %11 = load i32, i32* %7, align 4
  switch i32 %11, label %70 [
    i32 131, label %12
    i32 130, label %12
    i32 129, label %64
    i32 128, label %64
  ]

12:                                               ; preds = %5, %5
  %13 = load i8*, i8** %8, align 8
  %14 = bitcast i8* %13 to %struct.vfe_endframe*
  %15 = getelementptr inbounds %struct.vfe_endframe, %struct.vfe_endframe* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.msm_vfe_phy_info*, %struct.msm_vfe_phy_info** %6, align 8
  %18 = getelementptr inbounds %struct.msm_vfe_phy_info, %struct.msm_vfe_phy_info* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 4
  %19 = load i8*, i8** %8, align 8
  %20 = bitcast i8* %19 to %struct.vfe_endframe*
  %21 = getelementptr inbounds %struct.vfe_endframe, %struct.vfe_endframe* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.msm_vfe_phy_info*, %struct.msm_vfe_phy_info** %6, align 8
  %24 = getelementptr inbounds %struct.msm_vfe_phy_info, %struct.msm_vfe_phy_info* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.msm_vfe_phy_info*, %struct.msm_vfe_phy_info** %6, align 8
  %26 = getelementptr inbounds %struct.msm_vfe_phy_info, %struct.msm_vfe_phy_info* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.msm_vfe_phy_info*, %struct.msm_vfe_phy_info** %6, align 8
  %29 = getelementptr inbounds %struct.msm_vfe_phy_info, %struct.msm_vfe_phy_info* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @CDBG(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %30)
  %32 = load i8*, i8** %8, align 8
  %33 = bitcast i8* %32 to %struct.vfe_endframe*
  %34 = getelementptr inbounds %struct.vfe_endframe, %struct.vfe_endframe* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load i8*, i8** @extdata, align 8
  %37 = bitcast i8* %36 to %struct.vfe_frame_extra*
  %38 = getelementptr inbounds %struct.vfe_frame_extra, %struct.vfe_frame_extra* %37, i32 0, i32 3
  store i32 %35, i32* %38, align 4
  %39 = load i8*, i8** %8, align 8
  %40 = bitcast i8* %39 to %struct.vfe_endframe*
  %41 = getelementptr inbounds %struct.vfe_endframe, %struct.vfe_endframe* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load i8*, i8** @extdata, align 8
  %44 = bitcast i8* %43 to %struct.vfe_frame_extra*
  %45 = getelementptr inbounds %struct.vfe_frame_extra, %struct.vfe_frame_extra* %44, i32 0, i32 2
  store i32 %42, i32* %45, align 4
  %46 = load i8*, i8** %8, align 8
  %47 = bitcast i8* %46 to %struct.vfe_endframe*
  %48 = getelementptr inbounds %struct.vfe_endframe, %struct.vfe_endframe* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i8*, i8** @extdata, align 8
  %51 = bitcast i8* %50 to %struct.vfe_frame_extra*
  %52 = getelementptr inbounds %struct.vfe_frame_extra, %struct.vfe_frame_extra* %51, i32 0, i32 1
  store i32 %49, i32* %52, align 4
  %53 = load i8*, i8** %8, align 8
  %54 = bitcast i8* %53 to %struct.vfe_endframe*
  %55 = getelementptr inbounds %struct.vfe_endframe, %struct.vfe_endframe* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i8*, i8** @extdata, align 8
  %58 = bitcast i8* %57 to %struct.vfe_frame_extra*
  %59 = getelementptr inbounds %struct.vfe_frame_extra, %struct.vfe_frame_extra* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 4
  %60 = load i8*, i8** @extdata, align 8
  %61 = load i8**, i8*** %9, align 8
  store i8* %60, i8** %61, align 8
  %62 = load i32, i32* @extlen, align 4
  %63 = load i32*, i32** %10, align 8
  store i32 %62, i32* %63, align 4
  br label %71

64:                                               ; preds = %5, %5
  %65 = load i8*, i8** %8, align 8
  %66 = bitcast i8* %65 to i32*
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.msm_vfe_phy_info*, %struct.msm_vfe_phy_info** %6, align 8
  %69 = getelementptr inbounds %struct.msm_vfe_phy_info, %struct.msm_vfe_phy_info* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  br label %71

70:                                               ; preds = %5
  br label %71

71:                                               ; preds = %70, %64, %12
  ret void
}

declare dso_local i32 @CDBG(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
