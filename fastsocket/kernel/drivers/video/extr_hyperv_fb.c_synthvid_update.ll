; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_hyperv_fb.c_synthvid_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_hyperv_fb.c_synthvid_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.hv_device = type { i32 }
%struct.synthvid_msg = type { %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__*, i64 }
%struct.TYPE_6__ = type { i32, i32, i64, i64 }
%struct.TYPE_5__ = type { i32, i32 }

@SYNTHVID_DIRT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*)* @synthvid_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @synthvid_update(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca %struct.hv_device*, align 8
  %4 = alloca %struct.synthvid_msg, align 8
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  %5 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %6 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.hv_device* @device_to_hv_device(i32 %7)
  store %struct.hv_device* %8, %struct.hv_device** %3, align 8
  %9 = call i32 @memset(%struct.synthvid_msg* %4, i32 0, i32 32)
  %10 = load i32, i32* @SYNTHVID_DIRT, align 4
  %11 = getelementptr inbounds %struct.synthvid_msg, %struct.synthvid_msg* %4, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 4
  %13 = getelementptr inbounds %struct.synthvid_msg, %struct.synthvid_msg* %4, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  store i32 8, i32* %14, align 8
  %15 = getelementptr inbounds %struct.synthvid_msg, %struct.synthvid_msg* %4, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 2
  store i64 0, i64* %16, align 8
  %17 = getelementptr inbounds %struct.synthvid_msg, %struct.synthvid_msg* %4, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  %19 = getelementptr inbounds %struct.synthvid_msg, %struct.synthvid_msg* %4, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i64 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 3
  store i64 0, i64* %23, align 8
  %24 = getelementptr inbounds %struct.synthvid_msg, %struct.synthvid_msg* %4, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i64 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 2
  store i64 0, i64* %28, align 8
  %29 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %30 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.synthvid_msg, %struct.synthvid_msg* %4, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i64 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  store i32 %32, i32* %37, align 4
  %38 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %39 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.synthvid_msg, %struct.synthvid_msg* %4, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i64 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  store i32 %41, i32* %46, align 8
  %47 = load %struct.hv_device*, %struct.hv_device** %3, align 8
  %48 = call i32 @synthvid_send(%struct.hv_device* %47, %struct.synthvid_msg* %4)
  ret i32 0
}

declare dso_local %struct.hv_device* @device_to_hv_device(i32) #1

declare dso_local i32 @memset(%struct.synthvid_msg*, i32, i32) #1

declare dso_local i32 @synthvid_send(%struct.hv_device*, %struct.synthvid_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
