; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_usb.c_usb_lock_device_for_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_usb.c_usb_lock_device_for_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i64 }
%struct.usb_interface = type { i64 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@USB_STATE_NOTATTACHED = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@USB_STATE_SUSPENDED = common dso_local global i64 0, align 8
@EHOSTUNREACH = common dso_local global i32 0, align 4
@USB_INTERFACE_UNBINDING = common dso_local global i64 0, align 8
@USB_INTERFACE_UNBOUND = common dso_local global i64 0, align 8
@EINTR = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_lock_device_for_reset(%struct.usb_device* %0, %struct.usb_interface* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %struct.usb_interface*, align 8
  %6 = alloca i64, align 8
  store %struct.usb_device* %0, %struct.usb_device** %4, align 8
  store %struct.usb_interface* %1, %struct.usb_interface** %5, align 8
  %7 = load i64, i64* @jiffies, align 8
  %8 = load i64, i64* @HZ, align 8
  %9 = add i64 %7, %8
  store i64 %9, i64* %6, align 8
  %10 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %11 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @USB_STATE_NOTATTACHED, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %97

18:                                               ; preds = %2
  %19 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %20 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @USB_STATE_SUSPENDED, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i32, i32* @EHOSTUNREACH, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %97

27:                                               ; preds = %18
  %28 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %29 = icmp ne %struct.usb_interface* %28, null
  br i1 %29, label %30, label %45

30:                                               ; preds = %27
  %31 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %32 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @USB_INTERFACE_UNBINDING, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %42, label %36

36:                                               ; preds = %30
  %37 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %38 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @USB_INTERFACE_UNBOUND, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %36, %30
  %43 = load i32, i32* @EINTR, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %97

45:                                               ; preds = %36, %27
  br label %46

46:                                               ; preds = %95, %45
  %47 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %48 = call i64 @usb_trylock_device(%struct.usb_device* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %96

50:                                               ; preds = %46
  %51 = load i64, i64* @jiffies, align 8
  %52 = load i64, i64* %6, align 8
  %53 = call i64 @time_after(i64 %51, i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i32, i32* @EBUSY, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %97

58:                                               ; preds = %50
  %59 = call i32 @msleep(i32 15)
  %60 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %61 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @USB_STATE_NOTATTACHED, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %58
  %66 = load i32, i32* @ENODEV, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %97

68:                                               ; preds = %58
  %69 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %70 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @USB_STATE_SUSPENDED, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = load i32, i32* @EHOSTUNREACH, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  br label %97

77:                                               ; preds = %68
  %78 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %79 = icmp ne %struct.usb_interface* %78, null
  br i1 %79, label %80, label %95

80:                                               ; preds = %77
  %81 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %82 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @USB_INTERFACE_UNBINDING, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %92, label %86

86:                                               ; preds = %80
  %87 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %88 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @USB_INTERFACE_UNBOUND, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %86, %80
  %93 = load i32, i32* @EINTR, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %3, align 4
  br label %97

95:                                               ; preds = %86, %77
  br label %46

96:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %97

97:                                               ; preds = %96, %92, %74, %65, %55, %42, %24, %15
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i64 @usb_trylock_device(%struct.usb_device*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
