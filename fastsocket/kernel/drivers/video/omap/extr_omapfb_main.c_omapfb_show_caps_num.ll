; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_omapfb_main.c_omapfb_show_caps_num.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_omapfb_main.c_omapfb_show_caps_num.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.omapfb_device = type { i32 }
%struct.omapfb_caps = type { i32, i32, i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@OMAPFB_PLANE_NUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"plane#%d %#010x %#010x %#010x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*)* @omapfb_show_caps_num to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @omapfb_show_caps_num(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.omapfb_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.omapfb_caps, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.omapfb_device* @dev_get_drvdata(%struct.device* %11)
  store %struct.omapfb_device* %12, %struct.omapfb_device** %7, align 8
  store i32 0, i32* %8, align 4
  store i64 0, i64* %9, align 8
  br label %13

13:                                               ; preds = %23, %3
  %14 = load i64, i64* %9, align 8
  %15 = load i64, i64* @PAGE_SIZE, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @OMAPFB_PLANE_NUM, align 4
  %20 = icmp slt i32 %18, %19
  br label %21

21:                                               ; preds = %17, %13
  %22 = phi i1 [ false, %13 ], [ %20, %17 ]
  br i1 %22, label %23, label %45

23:                                               ; preds = %21
  %24 = load %struct.omapfb_device*, %struct.omapfb_device** %7, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @omapfb_get_caps(%struct.omapfb_device* %24, i32 %25, %struct.omapfb_caps* %10)
  %27 = load i8*, i8** %6, align 8
  %28 = load i64, i64* %9, align 8
  %29 = getelementptr inbounds i8, i8* %27, i64 %28
  %30 = load i64, i64* @PAGE_SIZE, align 8
  %31 = load i64, i64* %9, align 8
  %32 = sub i64 %30, %31
  %33 = load i32, i32* %8, align 4
  %34 = getelementptr inbounds %struct.omapfb_caps, %struct.omapfb_caps* %10, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.omapfb_caps, %struct.omapfb_caps* %10, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.omapfb_caps, %struct.omapfb_caps* %10, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @snprintf(i8* %29, i64 %32, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %35, i32 %37, i32 %39)
  %41 = load i64, i64* %9, align 8
  %42 = add i64 %41, %40
  store i64 %42, i64* %9, align 8
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %8, align 4
  br label %13

45:                                               ; preds = %21
  %46 = load i64, i64* %9, align 8
  ret i64 %46
}

declare dso_local %struct.omapfb_device* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @omapfb_get_caps(%struct.omapfb_device*, i32, %struct.omapfb_caps*) #1

declare dso_local i64 @snprintf(i8*, i64, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
