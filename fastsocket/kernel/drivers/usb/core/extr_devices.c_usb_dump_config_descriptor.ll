; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_devices.c_usb_dump_config_descriptor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_devices.c_usb_dump_config_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_config_descriptor = type { i32, i32, i32, i32 }

@format_config = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, %struct.usb_config_descriptor*, i32)* @usb_dump_config_descriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @usb_dump_config_descriptor(i8* %0, i8* %1, %struct.usb_config_descriptor* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.usb_config_descriptor*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.usb_config_descriptor* %2, %struct.usb_config_descriptor** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = icmp ugt i8* %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %4
  %14 = load i8*, i8** %6, align 8
  store i8* %14, i8** %5, align 8
  br label %41

15:                                               ; preds = %4
  %16 = load i8*, i8** %6, align 8
  %17 = load i8*, i8** @format_config, align 8
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 42, i32 32
  %22 = trunc i32 %21 to i8
  %23 = load %struct.usb_config_descriptor*, %struct.usb_config_descriptor** %8, align 8
  %24 = getelementptr inbounds %struct.usb_config_descriptor, %struct.usb_config_descriptor* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.usb_config_descriptor*, %struct.usb_config_descriptor** %8, align 8
  %27 = getelementptr inbounds %struct.usb_config_descriptor, %struct.usb_config_descriptor* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.usb_config_descriptor*, %struct.usb_config_descriptor** %8, align 8
  %30 = getelementptr inbounds %struct.usb_config_descriptor, %struct.usb_config_descriptor* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.usb_config_descriptor*, %struct.usb_config_descriptor** %8, align 8
  %33 = getelementptr inbounds %struct.usb_config_descriptor, %struct.usb_config_descriptor* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = mul nsw i32 %34, 2
  %36 = call i32 @sprintf(i8* %16, i8* %17, i8 signext %22, i32 %25, i32 %28, i32 %31, i32 %35)
  %37 = load i8*, i8** %6, align 8
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds i8, i8* %37, i64 %38
  store i8* %39, i8** %6, align 8
  %40 = load i8*, i8** %6, align 8
  store i8* %40, i8** %5, align 8
  br label %41

41:                                               ; preds = %15, %13
  %42 = load i8*, i8** %5, align 8
  ret i8* %42
}

declare dso_local i32 @sprintf(i8*, i8*, i8 signext, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
