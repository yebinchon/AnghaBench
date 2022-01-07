; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/line6/extr_pod.c_pod_dump.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/line6/extr_pod.c_pod_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_line6_pod = type { i8, i32 }

@POD_SYSEX_DUMP = common dso_local global i32 0, align 4
@SYSEX_DATA_OFS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_line6_pod*, i8*)* @pod_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pod_dump(%struct.usb_line6_pod* %0, i8* %1) #0 {
  %3 = alloca %struct.usb_line6_pod*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.usb_line6_pod* %0, %struct.usb_line6_pod** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 2, i32* %5, align 4
  %7 = load %struct.usb_line6_pod*, %struct.usb_line6_pod** %3, align 8
  %8 = load i32, i32* @POD_SYSEX_DUMP, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i8* @pod_alloc_sysex_buffer(%struct.usb_line6_pod* %7, i32 %8, i32 %9)
  store i8* %10, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %37

14:                                               ; preds = %2
  %15 = load i8*, i8** %6, align 8
  %16 = load i64, i64* @SYSEX_DATA_OFS, align 8
  %17 = getelementptr inbounds i8, i8* %15, i64 %16
  store i8 5, i8* %17, align 1
  %18 = load i8*, i8** %6, align 8
  %19 = load i64, i64* @SYSEX_DATA_OFS, align 8
  %20 = getelementptr inbounds i8, i8* %18, i64 %19
  %21 = getelementptr inbounds i8, i8* %20, i64 1
  %22 = load i8*, i8** %4, align 8
  %23 = call i32 @memcpy(i8* %21, i8* %22, i32 1)
  %24 = load %struct.usb_line6_pod*, %struct.usb_line6_pod** %3, align 8
  %25 = getelementptr inbounds %struct.usb_line6_pod, %struct.usb_line6_pod* %24, i32 0, i32 1
  %26 = load i8*, i8** %6, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @line6_send_sysex_message(i32* %25, i8* %26, i32 %27)
  %29 = load %struct.usb_line6_pod*, %struct.usb_line6_pod** %3, align 8
  %30 = getelementptr inbounds %struct.usb_line6_pod, %struct.usb_line6_pod* %29, i32 0, i32 0
  %31 = load i8*, i8** %4, align 8
  %32 = call i32 @memcpy(i8* %30, i8* %31, i32 1)
  %33 = load %struct.usb_line6_pod*, %struct.usb_line6_pod** %3, align 8
  %34 = call i32 @pod_mark_batch_all_dirty(%struct.usb_line6_pod* %33)
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 @kfree(i8* %35)
  br label %37

37:                                               ; preds = %14, %13
  ret void
}

declare dso_local i8* @pod_alloc_sysex_buffer(%struct.usb_line6_pod*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @line6_send_sysex_message(i32*, i8*, i32) #1

declare dso_local i32 @pod_mark_batch_all_dirty(%struct.usb_line6_pod*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
