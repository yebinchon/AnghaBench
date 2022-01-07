; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/class/extr_usbtmc.c_store_TermChar.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/class/extr_usbtmc.c_store_TermChar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.usb_interface = type { i32 }
%struct.usbtmc_device_data = type { i8 }

@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_TermChar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_TermChar(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.usb_interface*, align 8
  %11 = alloca %struct.usbtmc_device_data*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = call %struct.usb_interface* @to_usb_interface(%struct.device* %12)
  store %struct.usb_interface* %13, %struct.usb_interface** %10, align 8
  %14 = load %struct.usb_interface*, %struct.usb_interface** %10, align 8
  %15 = call %struct.usbtmc_device_data* @usb_get_intfdata(%struct.usb_interface* %14)
  store %struct.usbtmc_device_data* %15, %struct.usbtmc_device_data** %11, align 8
  %16 = load i64, i64* %9, align 8
  %17 = icmp ult i64 %16, 1
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i64, i64* @EINVAL, align 8
  %20 = sub i64 0, %19
  store i64 %20, i64* %5, align 8
  br label %28

21:                                               ; preds = %4
  %22 = load i8*, i8** %8, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = load %struct.usbtmc_device_data*, %struct.usbtmc_device_data** %11, align 8
  %26 = getelementptr inbounds %struct.usbtmc_device_data, %struct.usbtmc_device_data* %25, i32 0, i32 0
  store i8 %24, i8* %26, align 1
  %27 = load i64, i64* %9, align 8
  store i64 %27, i64* %5, align 8
  br label %28

28:                                               ; preds = %21, %18
  %29 = load i64, i64* %5, align 8
  ret i64 %29
}

declare dso_local %struct.usb_interface* @to_usb_interface(%struct.device*) #1

declare dso_local %struct.usbtmc_device_data* @usb_get_intfdata(%struct.usb_interface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
