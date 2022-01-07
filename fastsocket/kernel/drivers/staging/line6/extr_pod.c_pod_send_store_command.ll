; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/line6/extr_pod.c_pod_send_store_command.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/line6/extr_pod.c_pod_send_store_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.usb_interface = type { i32 }
%struct.usb_line6_pod = type { i32, i32 }

@POD_SYSEX_STORE = common dso_local global i32 0, align 4
@SYSEX_DATA_OFS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, i8*, i64, i16, i16)* @pod_send_store_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pod_send_store_command(%struct.device* %0, i8* %1, i64 %2, i16 signext %3, i16 signext %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca %struct.usb_interface*, align 8
  %13 = alloca %struct.usb_line6_pod*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i16 %3, i16* %10, align 2
  store i16 %4, i16* %11, align 2
  %16 = load %struct.device*, %struct.device** %7, align 8
  %17 = call %struct.usb_interface* @to_usb_interface(%struct.device* %16)
  store %struct.usb_interface* %17, %struct.usb_interface** %12, align 8
  %18 = load %struct.usb_interface*, %struct.usb_interface** %12, align 8
  %19 = call %struct.usb_line6_pod* @usb_get_intfdata(%struct.usb_interface* %18)
  store %struct.usb_line6_pod* %19, %struct.usb_line6_pod** %13, align 8
  store i32 7, i32* %14, align 4
  %20 = load %struct.usb_line6_pod*, %struct.usb_line6_pod** %13, align 8
  %21 = load i32, i32* @POD_SYSEX_STORE, align 4
  %22 = load i32, i32* %14, align 4
  %23 = call i8* @pod_alloc_sysex_buffer(%struct.usb_line6_pod* %20, i32 %21, i32 %22)
  store i8* %23, i8** %15, align 8
  %24 = load i8*, i8** %15, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %5
  store i64 0, i64* %6, align 8
  br label %54

27:                                               ; preds = %5
  %28 = load i8*, i8** %15, align 8
  %29 = load i64, i64* @SYSEX_DATA_OFS, align 8
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  store i8 5, i8* %30, align 1
  %31 = load i8*, i8** %8, align 8
  %32 = load i16, i16* %10, align 2
  %33 = load i16, i16* %11, align 2
  %34 = load i8*, i8** %15, align 8
  %35 = load i64, i64* @SYSEX_DATA_OFS, align 8
  %36 = getelementptr inbounds i8, i8* %34, i64 %35
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  %38 = call i32 @pod_resolve(i8* %31, i16 signext %32, i16 signext %33, i8* %37)
  %39 = load i8*, i8** %15, align 8
  %40 = load i64, i64* @SYSEX_DATA_OFS, align 8
  %41 = getelementptr inbounds i8, i8* %39, i64 %40
  %42 = getelementptr inbounds i8, i8* %41, i64 3
  %43 = load %struct.usb_line6_pod*, %struct.usb_line6_pod** %13, align 8
  %44 = getelementptr inbounds %struct.usb_line6_pod, %struct.usb_line6_pod* %43, i32 0, i32 1
  %45 = call i32 @memcpy(i8* %42, i32* %44, i32 4)
  %46 = load %struct.usb_line6_pod*, %struct.usb_line6_pod** %13, align 8
  %47 = getelementptr inbounds %struct.usb_line6_pod, %struct.usb_line6_pod* %46, i32 0, i32 0
  %48 = load i8*, i8** %15, align 8
  %49 = load i32, i32* %14, align 4
  %50 = call i32 @line6_send_sysex_message(i32* %47, i8* %48, i32 %49)
  %51 = load i8*, i8** %15, align 8
  %52 = call i32 @kfree(i8* %51)
  %53 = load i64, i64* %9, align 8
  store i64 %53, i64* %6, align 8
  br label %54

54:                                               ; preds = %27, %26
  %55 = load i64, i64* %6, align 8
  ret i64 %55
}

declare dso_local %struct.usb_interface* @to_usb_interface(%struct.device*) #1

declare dso_local %struct.usb_line6_pod* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i8* @pod_alloc_sysex_buffer(%struct.usb_line6_pod*, i32, i32) #1

declare dso_local i32 @pod_resolve(i8*, i16 signext, i16 signext, i8*) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @line6_send_sysex_message(i32*, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
