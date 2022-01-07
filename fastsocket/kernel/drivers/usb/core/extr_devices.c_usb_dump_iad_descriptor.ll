; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_devices.c_usb_dump_iad_descriptor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_devices.c_usb_dump_iad_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface_assoc_descriptor = type { i32, i32, i32, i32, i32 }

@format_iad = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, %struct.usb_interface_assoc_descriptor*)* @usb_dump_iad_descriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @usb_dump_iad_descriptor(i8* %0, i8* %1, %struct.usb_interface_assoc_descriptor* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.usb_interface_assoc_descriptor*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.usb_interface_assoc_descriptor* %2, %struct.usb_interface_assoc_descriptor** %7, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = icmp ugt i8* %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = load i8*, i8** %5, align 8
  store i8* %12, i8** %4, align 8
  br label %40

13:                                               ; preds = %3
  %14 = load i8*, i8** %5, align 8
  %15 = load i8*, i8** @format_iad, align 8
  %16 = load %struct.usb_interface_assoc_descriptor*, %struct.usb_interface_assoc_descriptor** %7, align 8
  %17 = getelementptr inbounds %struct.usb_interface_assoc_descriptor, %struct.usb_interface_assoc_descriptor* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.usb_interface_assoc_descriptor*, %struct.usb_interface_assoc_descriptor** %7, align 8
  %20 = getelementptr inbounds %struct.usb_interface_assoc_descriptor, %struct.usb_interface_assoc_descriptor* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.usb_interface_assoc_descriptor*, %struct.usb_interface_assoc_descriptor** %7, align 8
  %23 = getelementptr inbounds %struct.usb_interface_assoc_descriptor, %struct.usb_interface_assoc_descriptor* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.usb_interface_assoc_descriptor*, %struct.usb_interface_assoc_descriptor** %7, align 8
  %26 = getelementptr inbounds %struct.usb_interface_assoc_descriptor, %struct.usb_interface_assoc_descriptor* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @class_decode(i32 %27)
  %29 = load %struct.usb_interface_assoc_descriptor*, %struct.usb_interface_assoc_descriptor** %7, align 8
  %30 = getelementptr inbounds %struct.usb_interface_assoc_descriptor, %struct.usb_interface_assoc_descriptor* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.usb_interface_assoc_descriptor*, %struct.usb_interface_assoc_descriptor** %7, align 8
  %33 = getelementptr inbounds %struct.usb_interface_assoc_descriptor, %struct.usb_interface_assoc_descriptor* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @sprintf(i8* %14, i8* %15, i32 %18, i32 %21, i32 %24, i32 %28, i32 %31, i32 %34)
  %36 = load i8*, i8** %5, align 8
  %37 = sext i32 %35 to i64
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  store i8* %38, i8** %5, align 8
  %39 = load i8*, i8** %5, align 8
  store i8* %39, i8** %4, align 8
  br label %40

40:                                               ; preds = %13, %11
  %41 = load i8*, i8** %4, align 8
  ret i8* %41
}

declare dso_local i32 @sprintf(i8*, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @class_decode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
