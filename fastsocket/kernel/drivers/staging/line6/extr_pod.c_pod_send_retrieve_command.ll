; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/line6/extr_pod.c_pod_send_retrieve_command.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/line6/extr_pod.c_pod_send_retrieve_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.usb_interface = type { i32 }
%struct.usb_line6_pod = type { i32, i32 }

@POD_SYSEX_DUMPMEM = common dso_local global i32 0, align 4
@SYSEX_DATA_OFS = common dso_local global i32 0, align 4
@POD_DUMP_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, i8*, i64, i16, i16)* @pod_send_retrieve_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pod_send_retrieve_command(%struct.device* %0, i8* %1, i64 %2, i16 signext %3, i16 signext %4) #0 {
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
  store i32 4, i32* %14, align 4
  %20 = load %struct.usb_line6_pod*, %struct.usb_line6_pod** %13, align 8
  %21 = load i32, i32* @POD_SYSEX_DUMPMEM, align 4
  %22 = load i32, i32* %14, align 4
  %23 = call i8* @pod_alloc_sysex_buffer(%struct.usb_line6_pod* %20, i32 %21, i32 %22)
  store i8* %23, i8** %15, align 8
  %24 = load i8*, i8** %15, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %5
  store i64 0, i64* %6, align 8
  br label %65

27:                                               ; preds = %5
  %28 = load i8*, i8** %8, align 8
  %29 = load i16, i16* %10, align 2
  %30 = load i16, i16* %11, align 2
  %31 = load i8*, i8** %15, align 8
  %32 = load i32, i32* @SYSEX_DATA_OFS, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = call i32 @pod_resolve(i8* %28, i16 signext %29, i16 signext %30, i8* %34)
  %36 = load i8*, i8** %15, align 8
  %37 = load i32, i32* @SYSEX_DATA_OFS, align 4
  %38 = add nsw i32 %37, 2
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %36, i64 %39
  store i8 0, i8* %40, align 1
  %41 = load i8*, i8** %15, align 8
  %42 = load i32, i32* @SYSEX_DATA_OFS, align 4
  %43 = add nsw i32 %42, 3
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %41, i64 %44
  store i8 0, i8* %45, align 1
  %46 = load %struct.usb_line6_pod*, %struct.usb_line6_pod** %13, align 8
  %47 = getelementptr inbounds %struct.usb_line6_pod, %struct.usb_line6_pod* %46, i32 0, i32 0
  %48 = load i32, i32* @POD_DUMP_MEMORY, align 4
  %49 = call i32 @line6_dump_started(i32* %47, i32 %48)
  %50 = load %struct.usb_line6_pod*, %struct.usb_line6_pod** %13, align 8
  %51 = getelementptr inbounds %struct.usb_line6_pod, %struct.usb_line6_pod* %50, i32 0, i32 1
  %52 = load i8*, i8** %15, align 8
  %53 = load i32, i32* %14, align 4
  %54 = call i32 @line6_send_sysex_message(i32* %51, i8* %52, i32 %53)
  %55 = load i32, i32* %14, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %27
  %58 = load %struct.usb_line6_pod*, %struct.usb_line6_pod** %13, align 8
  %59 = getelementptr inbounds %struct.usb_line6_pod, %struct.usb_line6_pod* %58, i32 0, i32 0
  %60 = call i32 @line6_dump_finished(i32* %59)
  br label %61

61:                                               ; preds = %57, %27
  %62 = load i8*, i8** %15, align 8
  %63 = call i32 @kfree(i8* %62)
  %64 = load i64, i64* %9, align 8
  store i64 %64, i64* %6, align 8
  br label %65

65:                                               ; preds = %61, %26
  %66 = load i64, i64* %6, align 8
  ret i64 %66
}

declare dso_local %struct.usb_interface* @to_usb_interface(%struct.device*) #1

declare dso_local %struct.usb_line6_pod* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i8* @pod_alloc_sysex_buffer(%struct.usb_line6_pod*, i32, i32) #1

declare dso_local i32 @pod_resolve(i8*, i16 signext, i16 signext, i8*) #1

declare dso_local i32 @line6_dump_started(i32*, i32) #1

declare dso_local i32 @line6_send_sysex_message(i32*, i8*, i32) #1

declare dso_local i32 @line6_dump_finished(i32*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
