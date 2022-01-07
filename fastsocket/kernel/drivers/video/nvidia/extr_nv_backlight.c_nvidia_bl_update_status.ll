; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/nvidia/extr_nv_backlight.c_nvidia_bl_update_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/nvidia/extr_nv_backlight.c_nvidia_bl_update_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backlight_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i32 }
%struct.nvidia_par = type { i32, i32, i32, i32, i32 }

@FB_BLANK_UNBLANK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.backlight_device*)* @nvidia_bl_update_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvidia_bl_update_status(%struct.backlight_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.backlight_device*, align 8
  %4 = alloca %struct.nvidia_par*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.backlight_device* %0, %struct.backlight_device** %3, align 8
  %9 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %10 = call %struct.nvidia_par* @bl_get_data(%struct.backlight_device* %9)
  store %struct.nvidia_par* %10, %struct.nvidia_par** %4, align 8
  %11 = load %struct.nvidia_par*, %struct.nvidia_par** %4, align 8
  %12 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %89

16:                                               ; preds = %1
  %17 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %18 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @FB_BLANK_UNBLANK, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %30, label %23

23:                                               ; preds = %16
  %24 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %25 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @FB_BLANK_UNBLANK, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %23, %16
  store i32 0, i32* %8, align 4
  br label %36

31:                                               ; preds = %23
  %32 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %33 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %8, align 4
  br label %36

36:                                               ; preds = %31, %30
  %37 = load %struct.nvidia_par*, %struct.nvidia_par** %4, align 8
  %38 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @NV_RD32(i32 %39, i32 4336)
  %41 = and i32 %40, 65535
  store i32 %41, i32* %6, align 4
  %42 = load %struct.nvidia_par*, %struct.nvidia_par** %4, align 8
  %43 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @NV_RD32(i32 %44, i32 2076)
  %46 = and i32 %45, -4
  store i32 %46, i32* %5, align 4
  %47 = load %struct.nvidia_par*, %struct.nvidia_par** %4, align 8
  %48 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @NV_RD32(i32 %49, i32 2120)
  %51 = and i32 %50, -805306420
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %70

54:                                               ; preds = %36
  %55 = load i32, i32* %5, align 4
  %56 = or i32 %55, 1
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %6, align 4
  %58 = or i32 %57, -2147483648
  store i32 %58, i32* %6, align 4
  %59 = load %struct.nvidia_par*, %struct.nvidia_par** %4, align 8
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @nvidia_bl_get_level_brightness(%struct.nvidia_par* %59, i32 %60)
  %62 = shl i32 %61, 16
  %63 = load i32, i32* %6, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %6, align 4
  %65 = load %struct.nvidia_par*, %struct.nvidia_par** %4, align 8
  %66 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %7, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %7, align 4
  br label %73

70:                                               ; preds = %36
  %71 = load i32, i32* %7, align 4
  %72 = or i32 %71, 536870946
  store i32 %72, i32* %7, align 4
  br label %73

73:                                               ; preds = %70, %54
  %74 = load %struct.nvidia_par*, %struct.nvidia_par** %4, align 8
  %75 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @NV_WR32(i32 %76, i32 2076, i32 %77)
  %79 = load %struct.nvidia_par*, %struct.nvidia_par** %4, align 8
  %80 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @NV_WR32(i32 %81, i32 4336, i32 %82)
  %84 = load %struct.nvidia_par*, %struct.nvidia_par** %4, align 8
  %85 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @NV_WR32(i32 %86, i32 2120, i32 %87)
  store i32 0, i32* %2, align 4
  br label %89

89:                                               ; preds = %73, %15
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local %struct.nvidia_par* @bl_get_data(%struct.backlight_device*) #1

declare dso_local i32 @NV_RD32(i32, i32) #1

declare dso_local i32 @nvidia_bl_get_level_brightness(%struct.nvidia_par*, i32) #1

declare dso_local i32 @NV_WR32(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
