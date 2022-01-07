; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_fsl-diu-fb.c_enable_lcdc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_fsl-diu-fb.c_enable_lcdc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, %struct.diu* }
%struct.diu = type { i32 }
%struct.fb_info = type { %struct.mfb_info* }
%struct.mfb_info = type { %struct.fsl_diu_data* }
%struct.fsl_diu_data = type { i32 }

@dr = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*)* @enable_lcdc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enable_lcdc(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca %struct.diu*, align 8
  %4 = alloca %struct.mfb_info*, align 8
  %5 = alloca %struct.fsl_diu_data*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  %6 = load %struct.diu*, %struct.diu** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dr, i32 0, i32 1), align 8
  store %struct.diu* %6, %struct.diu** %3, align 8
  %7 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %8 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %7, i32 0, i32 0
  %9 = load %struct.mfb_info*, %struct.mfb_info** %8, align 8
  store %struct.mfb_info* %9, %struct.mfb_info** %4, align 8
  %10 = load %struct.mfb_info*, %struct.mfb_info** %4, align 8
  %11 = getelementptr inbounds %struct.mfb_info, %struct.mfb_info* %10, i32 0, i32 0
  %12 = load %struct.fsl_diu_data*, %struct.fsl_diu_data** %11, align 8
  store %struct.fsl_diu_data* %12, %struct.fsl_diu_data** %5, align 8
  %13 = load %struct.fsl_diu_data*, %struct.fsl_diu_data** %5, align 8
  %14 = getelementptr inbounds %struct.fsl_diu_data, %struct.fsl_diu_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %1
  %18 = load %struct.diu*, %struct.diu** %3, align 8
  %19 = getelementptr inbounds %struct.diu, %struct.diu* %18, i32 0, i32 0
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dr, i32 0, i32 0), align 8
  %21 = call i32 @out_be32(i32* %19, i32 %20)
  %22 = load %struct.fsl_diu_data*, %struct.fsl_diu_data** %5, align 8
  %23 = getelementptr inbounds %struct.fsl_diu_data, %struct.fsl_diu_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 4
  br label %26

26:                                               ; preds = %17, %1
  ret void
}

declare dso_local i32 @out_be32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
