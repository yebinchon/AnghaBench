; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_hyperv_fb.c_synthvid_send_ptr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_hyperv_fb.c_synthvid_send_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_device = type { i32 }
%struct.synthvid_msg = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32*, i64, i64, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i64, i64, i64 }

@SYNTHVID_POINTER_POSITION = common dso_local global i32 0, align 4
@SYNTHVID_POINTER_SHAPE = common dso_local global i32 0, align 4
@CURSOR_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hv_device*)* @synthvid_send_ptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @synthvid_send_ptr(%struct.hv_device* %0) #0 {
  %2 = alloca %struct.hv_device*, align 8
  %3 = alloca %struct.synthvid_msg, align 8
  store %struct.hv_device* %0, %struct.hv_device** %2, align 8
  %4 = call i32 @memset(%struct.synthvid_msg* %3, i32 0, i32 88)
  %5 = load i32, i32* @SYNTHVID_POINTER_POSITION, align 4
  %6 = getelementptr inbounds %struct.synthvid_msg, %struct.synthvid_msg* %3, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  store i32 %5, i32* %7, align 4
  %8 = getelementptr inbounds %struct.synthvid_msg, %struct.synthvid_msg* %3, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  store i32 8, i32* %9, align 8
  %10 = getelementptr inbounds %struct.synthvid_msg, %struct.synthvid_msg* %3, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store i32 1, i32* %11, align 8
  %12 = getelementptr inbounds %struct.synthvid_msg, %struct.synthvid_msg* %3, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 3
  store i64 0, i64* %13, align 8
  %14 = getelementptr inbounds %struct.synthvid_msg, %struct.synthvid_msg* %3, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 2
  store i64 0, i64* %15, align 8
  %16 = getelementptr inbounds %struct.synthvid_msg, %struct.synthvid_msg* %3, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  store i64 0, i64* %17, align 8
  %18 = load %struct.hv_device*, %struct.hv_device** %2, align 8
  %19 = call i32 @synthvid_send(%struct.hv_device* %18, %struct.synthvid_msg* %3)
  %20 = call i32 @memset(%struct.synthvid_msg* %3, i32 0, i32 88)
  %21 = load i32, i32* @SYNTHVID_POINTER_SHAPE, align 4
  %22 = getelementptr inbounds %struct.synthvid_msg, %struct.synthvid_msg* %3, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = getelementptr inbounds %struct.synthvid_msg, %struct.synthvid_msg* %3, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  store i32 8, i32* %25, align 8
  %26 = load i32, i32* @CURSOR_COMPLETE, align 4
  %27 = getelementptr inbounds %struct.synthvid_msg, %struct.synthvid_msg* %3, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 6
  store i32 %26, i32* %28, align 8
  %29 = getelementptr inbounds %struct.synthvid_msg, %struct.synthvid_msg* %3, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  %31 = getelementptr inbounds %struct.synthvid_msg, %struct.synthvid_msg* %3, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  store i32 1, i32* %32, align 4
  %33 = getelementptr inbounds %struct.synthvid_msg, %struct.synthvid_msg* %3, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 2
  store i32 1, i32* %34, align 8
  %35 = getelementptr inbounds %struct.synthvid_msg, %struct.synthvid_msg* %3, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 5
  store i64 0, i64* %36, align 8
  %37 = getelementptr inbounds %struct.synthvid_msg, %struct.synthvid_msg* %3, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 4
  store i64 0, i64* %38, align 8
  %39 = getelementptr inbounds %struct.synthvid_msg, %struct.synthvid_msg* %3, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 3
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  store i32 0, i32* %42, align 4
  %43 = getelementptr inbounds %struct.synthvid_msg, %struct.synthvid_msg* %3, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 3
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  store i32 1, i32* %46, align 4
  %47 = getelementptr inbounds %struct.synthvid_msg, %struct.synthvid_msg* %3, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 3
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 2
  store i32 1, i32* %50, align 4
  %51 = getelementptr inbounds %struct.synthvid_msg, %struct.synthvid_msg* %3, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 3
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 3
  store i32 1, i32* %54, align 4
  %55 = load %struct.hv_device*, %struct.hv_device** %2, align 8
  %56 = call i32 @synthvid_send(%struct.hv_device* %55, %struct.synthvid_msg* %3)
  ret i32 0
}

declare dso_local i32 @memset(%struct.synthvid_msg*, i32, i32) #1

declare dso_local i32 @synthvid_send(%struct.hv_device*, %struct.synthvid_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
