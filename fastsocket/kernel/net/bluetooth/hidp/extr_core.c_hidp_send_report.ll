; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/hidp/extr_core.c_hidp_send_report.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/hidp/extr_core.c_hidp_send_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hidp_session = type { i32 }
%struct.hid_report = type { i32, i64 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hidp_session*, %struct.hid_report*)* @hidp_send_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hidp_send_report(%struct.hidp_session* %0, %struct.hid_report* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hidp_session*, align 8
  %5 = alloca %struct.hid_report*, align 8
  %6 = alloca [32 x i8], align 16
  %7 = alloca i32, align 4
  store %struct.hidp_session* %0, %struct.hidp_session** %4, align 8
  store %struct.hid_report* %1, %struct.hid_report** %5, align 8
  %8 = load %struct.hid_report*, %struct.hid_report** %5, align 8
  %9 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = sub nsw i32 %10, 1
  %12 = ashr i32 %11, 3
  %13 = add nsw i32 %12, 1
  %14 = load %struct.hid_report*, %struct.hid_report** %5, align 8
  %15 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp sgt i64 %16, 0
  %18 = zext i1 %17 to i32
  %19 = add nsw i32 %13, %18
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = icmp ugt i64 %21, 32
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i32, i32* @EIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %34

26:                                               ; preds = %2
  %27 = load %struct.hid_report*, %struct.hid_report** %5, align 8
  %28 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %29 = call i32 @hid_output_report(%struct.hid_report* %27, i8* %28)
  %30 = load %struct.hidp_session*, %struct.hidp_session** %4, align 8
  %31 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @hidp_queue_report(%struct.hidp_session* %30, i8* %31, i32 %32)
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %26, %23
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @hid_output_report(%struct.hid_report*, i8*) #1

declare dso_local i32 @hidp_queue_report(%struct.hidp_session*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
