; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_hub.c_usb_set_lpm_sel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_hub.c_usb_set_lpm_sel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { %struct.usb_device* }
%struct.usb3_lpm_parameters = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_device*, %struct.usb3_lpm_parameters*)* @usb_set_lpm_sel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb_set_lpm_sel(%struct.usb_device* %0, %struct.usb3_lpm_parameters* %1) #0 {
  %3 = alloca %struct.usb_device*, align 8
  %4 = alloca %struct.usb3_lpm_parameters*, align 8
  %5 = alloca %struct.usb_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %3, align 8
  store %struct.usb3_lpm_parameters* %1, %struct.usb3_lpm_parameters** %4, align 8
  %8 = load %struct.usb3_lpm_parameters*, %struct.usb3_lpm_parameters** %4, align 8
  %9 = getelementptr inbounds %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %7, align 4
  %11 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %12 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %11, i32 0, i32 0
  %13 = load %struct.usb_device*, %struct.usb_device** %12, align 8
  store %struct.usb_device* %13, %struct.usb_device** %5, align 8
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %22, %2
  %15 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %16 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %15, i32 0, i32 0
  %17 = load %struct.usb_device*, %struct.usb_device** %16, align 8
  %18 = icmp ne %struct.usb_device* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %14
  %20 = load i32, i32* %6, align 4
  %21 = add i32 %20, 1
  store i32 %21, i32* %6, align 4
  br label %22

22:                                               ; preds = %19
  %23 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %24 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %23, i32 0, i32 0
  %25 = load %struct.usb_device*, %struct.usb_device** %24, align 8
  store %struct.usb_device* %25, %struct.usb_device** %5, align 8
  br label %14

26:                                               ; preds = %14
  %27 = load i32, i32* %6, align 4
  %28 = icmp ugt i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %26
  %30 = load i32, i32* %6, align 4
  %31 = sub i32 %30, 1
  %32 = mul i32 250, %31
  %33 = add i32 2100, %32
  %34 = load i32, i32* %7, align 4
  %35 = add i32 %34, %33
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %29, %26
  %37 = load i32, i32* %6, align 4
  %38 = mul i32 250, %37
  %39 = load i32, i32* %7, align 4
  %40 = add i32 %39, %38
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.usb3_lpm_parameters*, %struct.usb3_lpm_parameters** %4, align 8
  %43 = getelementptr inbounds %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
