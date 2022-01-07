; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/kyro/extr_fbdev.c_kyro_dev_video_mode_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/kyro/extr_fbdev.c_kyro_dev_video_mode_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i32 }
%struct.fb_info = type { %struct.TYPE_3__, %struct.kyrofb_info* }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.kyrofb_info = type { i32, i32, i32 }

@deviceInfo = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*)* @kyro_dev_video_mode_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kyro_dev_video_mode_set(%struct.fb_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.kyrofb_info*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  %5 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %6 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %5, i32 0, i32 1
  %7 = load %struct.kyrofb_info*, %struct.kyrofb_info** %6, align 8
  store %struct.kyrofb_info* %7, %struct.kyrofb_info** %4, align 8
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @deviceInfo, i32 0, i32 2), align 8
  %9 = call i32 @StopVTG(i32 %8)
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @deviceInfo, i32 0, i32 2), align 8
  %11 = call i32 @DisableRamdacOutput(i32 %10)
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @deviceInfo, i32 0, i32 2), align 8
  %13 = call i32 @DisableVGA(i32 %12)
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @deviceInfo, i32 0, i32 2), align 8
  %15 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %16 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %20 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %24 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.kyrofb_info*, %struct.kyrofb_info** %4, align 8
  %28 = getelementptr inbounds %struct.kyrofb_info, %struct.kyrofb_info* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.kyrofb_info*, %struct.kyrofb_info** %4, align 8
  %31 = getelementptr inbounds %struct.kyrofb_info, %struct.kyrofb_info* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.kyrofb_info*, %struct.kyrofb_info** %4, align 8
  %34 = getelementptr inbounds %struct.kyrofb_info, %struct.kyrofb_info* %33, i32 0, i32 0
  %35 = call i64 @InitialiseRamdac(i32 %14, i32 %18, i32 %22, i32 %26, i32 %29, i32 %32, i32* %34)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %1
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %64

40:                                               ; preds = %1
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @deviceInfo, i32 0, i32 2), align 8
  %42 = load %struct.kyrofb_info*, %struct.kyrofb_info** %4, align 8
  %43 = call i32 @SetupVTG(i32 %41, %struct.kyrofb_info* %42)
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @deviceInfo, i32 0, i32 2), align 8
  %45 = call i32 @ResetOverlayRegisters(i32 %44)
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @deviceInfo, i32 0, i32 2), align 8
  %47 = call i32 @EnableRamdacOutput(i32 %46)
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @deviceInfo, i32 0, i32 2), align 8
  %49 = call i32 @StartVTG(i32 %48)
  %50 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %51 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %55 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = mul nsw i32 %53, %57
  %59 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %60 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = mul nsw i32 %58, %62
  store i32 %63, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @deviceInfo, i32 0, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @deviceInfo, i32 0, i32 1), align 8
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %40, %37
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @StopVTG(i32) #1

declare dso_local i32 @DisableRamdacOutput(i32) #1

declare dso_local i32 @DisableVGA(i32) #1

declare dso_local i64 @InitialiseRamdac(i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @SetupVTG(i32, %struct.kyrofb_info*) #1

declare dso_local i32 @ResetOverlayRegisters(i32) #1

declare dso_local i32 @EnableRamdacOutput(i32) #1

declare dso_local i32 @StartVTG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
