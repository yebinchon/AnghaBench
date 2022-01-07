; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/hidp/extr_core.c_hidp_output_raw_report.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/hidp/extr_core.c_hidp_output_raw_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }

@HIDP_TRANS_SET_REPORT = common dso_local global i8 0, align 1
@HIDP_DATA_RTYPE_FEATURE = common dso_local global i8 0, align 1
@HIDP_TRANS_DATA = common dso_local global i8 0, align 1
@HIDP_DATA_RTYPE_OUPUT = common dso_local global i8 0, align 1
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, i8*, i64, i8)* @hidp_output_raw_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hidp_output_raw_report(%struct.hid_device* %0, i8* %1, i64 %2, i8 zeroext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hid_device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  store %struct.hid_device* %0, %struct.hid_device** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8 %3, i8* %9, align 1
  %10 = load i8, i8* %9, align 1
  %11 = zext i8 %10 to i32
  switch i32 %11, label %26 [
    i32 129, label %12
    i32 128, label %19
  ]

12:                                               ; preds = %4
  %13 = load i8, i8* @HIDP_TRANS_SET_REPORT, align 1
  %14 = zext i8 %13 to i32
  %15 = load i8, i8* @HIDP_DATA_RTYPE_FEATURE, align 1
  %16 = zext i8 %15 to i32
  %17 = or i32 %14, %16
  %18 = trunc i32 %17 to i8
  store i8 %18, i8* %9, align 1
  br label %29

19:                                               ; preds = %4
  %20 = load i8, i8* @HIDP_TRANS_DATA, align 1
  %21 = zext i8 %20 to i32
  %22 = load i8, i8* @HIDP_DATA_RTYPE_OUPUT, align 1
  %23 = zext i8 %22 to i32
  %24 = or i32 %21, %23
  %25 = trunc i32 %24 to i8
  store i8 %25, i8* %9, align 1
  br label %29

26:                                               ; preds = %4
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %44

29:                                               ; preds = %19, %12
  %30 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %31 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i8, i8* %9, align 1
  %34 = load i8*, i8** %7, align 8
  %35 = load i64, i64* %8, align 8
  %36 = call i64 @hidp_send_ctrl_message(i32 %32, i8 zeroext %33, i8* %34, i64 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %29
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %44

41:                                               ; preds = %29
  %42 = load i64, i64* %8, align 8
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %41, %38, %26
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i64 @hidp_send_ctrl_message(i32, i8 zeroext, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
