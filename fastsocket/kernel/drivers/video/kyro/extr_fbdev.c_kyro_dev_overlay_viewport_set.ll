; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/kyro/extr_fbdev.c_kyro_dev_overlay_viewport_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/kyro/extr_fbdev.c_kyro_dev_overlay_viewport_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }

@deviceInfo = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i64, i64)* @kyro_dev_overlay_viewport_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kyro_dev_overlay_viewport_set(i64 %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @deviceInfo, i32 0, i32 0), align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %4
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %5, align 4
  br label %34

15:                                               ; preds = %4
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @deviceInfo, i32 0, i32 1), align 8
  %17 = call i32 @DisableRamdacOutput(i32 %16)
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @deviceInfo, i32 0, i32 1), align 8
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* %8, align 8
  %23 = add nsw i64 %21, %22
  %24 = sub nsw i64 %23, 1
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* %9, align 8
  %27 = add nsw i64 %25, %26
  %28 = sub nsw i64 %27, 1
  %29 = call i32 @SetOverlayViewPort(i32 %18, i64 %19, i64 %20, i64 %24, i64 %28)
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @deviceInfo, i32 0, i32 1), align 8
  %31 = call i32 @EnableOverlayPlane(i32 %30)
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @deviceInfo, i32 0, i32 1), align 8
  %33 = call i32 @EnableRamdacOutput(i32 %32)
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %15, %12
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

declare dso_local i32 @DisableRamdacOutput(i32) #1

declare dso_local i32 @SetOverlayViewPort(i32, i64, i64, i64, i64) #1

declare dso_local i32 @EnableOverlayPlane(i32) #1

declare dso_local i32 @EnableRamdacOutput(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
