; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_devio.c_claimintf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_devio.c_claimintf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dev_state = type { i32, %struct.usb_device* }
%struct.usb_device = type { i32 }
%struct.usb_interface = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@usbfs_driver = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dev_state*, i32)* @claimintf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @claimintf(%struct.dev_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dev_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.usb_interface*, align 8
  %8 = alloca i32, align 4
  store %struct.dev_state* %0, %struct.dev_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.dev_state*, %struct.dev_state** %4, align 8
  %10 = getelementptr inbounds %struct.dev_state, %struct.dev_state* %9, i32 0, i32 1
  %11 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  store %struct.usb_device* %11, %struct.usb_device** %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = zext i32 %12 to i64
  %14 = icmp uge i64 %13, 32
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %48

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.dev_state*, %struct.dev_state** %4, align 8
  %21 = getelementptr inbounds %struct.dev_state, %struct.dev_state* %20, i32 0, i32 0
  %22 = call i64 @test_bit(i32 %19, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %48

25:                                               ; preds = %18
  %26 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call %struct.usb_interface* @usb_ifnum_to_if(%struct.usb_device* %26, i32 %27)
  store %struct.usb_interface* %28, %struct.usb_interface** %7, align 8
  %29 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %30 = icmp ne %struct.usb_interface* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %25
  %32 = load i32, i32* @ENOENT, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %8, align 4
  br label %38

34:                                               ; preds = %25
  %35 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %36 = load %struct.dev_state*, %struct.dev_state** %4, align 8
  %37 = call i32 @usb_driver_claim_interface(i32* @usbfs_driver, %struct.usb_interface* %35, %struct.dev_state* %36)
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %34, %31
  %39 = load i32, i32* %8, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.dev_state*, %struct.dev_state** %4, align 8
  %44 = getelementptr inbounds %struct.dev_state, %struct.dev_state* %43, i32 0, i32 0
  %45 = call i32 @set_bit(i32 %42, i32* %44)
  br label %46

46:                                               ; preds = %41, %38
  %47 = load i32, i32* %8, align 4
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %46, %24, %15
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local %struct.usb_interface* @usb_ifnum_to_if(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_driver_claim_interface(i32*, %struct.usb_interface*, %struct.dev_state*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
