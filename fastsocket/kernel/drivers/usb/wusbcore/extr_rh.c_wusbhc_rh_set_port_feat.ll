; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/wusbcore/extr_rh.c_wusbhc_rh_set_port_feat.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/wusbcore/extr_rh.c_wusbhc_rh_set_port_feat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wusbhc = type { i64, i32, %struct.device* }
%struct.device = type { i32 }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@USB_PORT_STAT_POWER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"(port_idx %d) set feat %d/%d UNIMPLEMENTED\0A\00", align 1
@ENOSYS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"(port_idx %d) set feat %d/%d UNKNOWN\0A\00", align 1
@EPIPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wusbhc*, i32, i64, i64)* @wusbhc_rh_set_port_feat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wusbhc_rh_set_port_feat(%struct.wusbhc* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wusbhc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.device*, align 8
  store %struct.wusbhc* %0, %struct.wusbhc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load %struct.wusbhc*, %struct.wusbhc** %6, align 8
  %12 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %11, i32 0, i32 2
  %13 = load %struct.device*, %struct.device** %12, align 8
  store %struct.device* %13, %struct.device** %10, align 8
  %14 = load i64, i64* %9, align 8
  %15 = load %struct.wusbhc*, %struct.wusbhc** %6, align 8
  %16 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %14, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %59

22:                                               ; preds = %4
  %23 = load i32, i32* %7, align 4
  switch i32 %23, label %51 [
    i32 134, label %24
    i32 135, label %24
    i32 132, label %24
    i32 136, label %24
    i32 133, label %24
    i32 130, label %25
    i32 129, label %39
    i32 131, label %43
    i32 128, label %43
  ]

24:                                               ; preds = %22, %22, %22, %22, %22
  store i32 0, i32* %5, align 4
  br label %59

25:                                               ; preds = %22
  %26 = load %struct.wusbhc*, %struct.wusbhc** %6, align 8
  %27 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %26, i32 0, i32 1
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load i32, i32* @USB_PORT_STAT_POWER, align 4
  %30 = load %struct.wusbhc*, %struct.wusbhc** %6, align 8
  %31 = load i64, i64* %9, align 8
  %32 = call %struct.TYPE_2__* @wusb_port_by_idx(%struct.wusbhc* %30, i64 %31)
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %29
  store i32 %35, i32* %33, align 4
  %36 = load %struct.wusbhc*, %struct.wusbhc** %6, align 8
  %37 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %36, i32 0, i32 1
  %38 = call i32 @mutex_unlock(i32* %37)
  store i32 0, i32* %5, align 4
  br label %59

39:                                               ; preds = %22
  %40 = load %struct.wusbhc*, %struct.wusbhc** %6, align 8
  %41 = load i64, i64* %9, align 8
  %42 = call i32 @wusbhc_rh_port_reset(%struct.wusbhc* %40, i64 %41)
  store i32 %42, i32* %5, align 4
  br label %59

43:                                               ; preds = %22, %22
  %44 = load %struct.device*, %struct.device** %10, align 8
  %45 = load i64, i64* %9, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load i64, i64* %8, align 8
  %48 = call i32 @dev_err(%struct.device* %44, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %45, i32 %46, i64 %47)
  %49 = load i32, i32* @ENOSYS, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %59

51:                                               ; preds = %22
  %52 = load %struct.device*, %struct.device** %10, align 8
  %53 = load i64, i64* %9, align 8
  %54 = load i32, i32* %7, align 4
  %55 = load i64, i64* %8, align 8
  %56 = call i32 @dev_err(%struct.device* %52, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i64 %53, i32 %54, i64 %55)
  %57 = load i32, i32* @EPIPE, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %51, %43, %39, %25, %24, %19
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.TYPE_2__* @wusb_port_by_idx(%struct.wusbhc*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wusbhc_rh_port_reset(%struct.wusbhc*, i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
