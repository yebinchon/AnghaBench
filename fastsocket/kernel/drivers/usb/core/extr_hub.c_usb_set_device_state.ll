; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_hub.c_usb_set_device_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_hub.c_usb_set_device_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i64, i32, i32, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@device_state_lock = common dso_local global i32 0, align 4
@USB_STATE_NOTATTACHED = common dso_local global i64 0, align 8
@USB_STATE_SUSPENDED = common dso_local global i64 0, align 8
@USB_STATE_CONFIGURED = common dso_local global i32 0, align 4
@USB_CONFIG_ATT_WAKEUP = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usb_set_device_state(%struct.usb_device* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.usb_device* %0, %struct.usb_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i64, i64* %5, align 8
  %7 = call i32 @spin_lock_irqsave(i32* @device_state_lock, i64 %6)
  %8 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %9 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @USB_STATE_NOTATTACHED, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %106

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* @USB_STATE_NOTATTACHED, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %102

19:                                               ; preds = %14
  %20 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %21 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %58

24:                                               ; preds = %19
  %25 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %26 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @USB_STATE_SUSPENDED, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %35, label %30

30:                                               ; preds = %24
  %31 = load i32, i32* %4, align 4
  %32 = zext i32 %31 to i64
  %33 = load i64, i64* @USB_STATE_SUSPENDED, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %30, %24
  br label %57

36:                                               ; preds = %30
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @USB_STATE_CONFIGURED, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %52

40:                                               ; preds = %36
  %41 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %42 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %41, i32 0, i32 2
  %43 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %44 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %43, i32 0, i32 3
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @USB_CONFIG_ATT_WAKEUP, align 4
  %50 = and i32 %48, %49
  %51 = call i32 @device_set_wakeup_capable(i32* %42, i32 %50)
  br label %56

52:                                               ; preds = %36
  %53 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %54 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %53, i32 0, i32 2
  %55 = call i32 @device_set_wakeup_capable(i32* %54, i32 0)
  br label %56

56:                                               ; preds = %52, %40
  br label %57

57:                                               ; preds = %56, %35
  br label %58

58:                                               ; preds = %57, %19
  %59 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %60 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @USB_STATE_SUSPENDED, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %77

64:                                               ; preds = %58
  %65 = load i32, i32* %4, align 4
  %66 = zext i32 %65 to i64
  %67 = load i64, i64* @USB_STATE_SUSPENDED, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %77

69:                                               ; preds = %64
  %70 = load i64, i64* @jiffies, align 8
  %71 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %72 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = sext i32 %73 to i64
  %75 = sub nsw i64 %74, %70
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %72, align 8
  br label %97

77:                                               ; preds = %64, %58
  %78 = load i32, i32* %4, align 4
  %79 = zext i32 %78 to i64
  %80 = load i64, i64* @USB_STATE_SUSPENDED, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %96

82:                                               ; preds = %77
  %83 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %84 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @USB_STATE_SUSPENDED, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %96

88:                                               ; preds = %82
  %89 = load i64, i64* @jiffies, align 8
  %90 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %91 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = sext i32 %92 to i64
  %94 = add nsw i64 %93, %89
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %91, align 8
  br label %96

96:                                               ; preds = %88, %82, %77
  br label %97

97:                                               ; preds = %96, %69
  %98 = load i32, i32* %4, align 4
  %99 = zext i32 %98 to i64
  %100 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %101 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %100, i32 0, i32 0
  store i64 %99, i64* %101, align 8
  br label %105

102:                                              ; preds = %14
  %103 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %104 = call i32 @recursively_mark_NOTATTACHED(%struct.usb_device* %103)
  br label %105

105:                                              ; preds = %102, %97
  br label %106

106:                                              ; preds = %105, %13
  %107 = load i64, i64* %5, align 8
  %108 = call i32 @spin_unlock_irqrestore(i32* @device_state_lock, i64 %107)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @device_set_wakeup_capable(i32*, i32) #1

declare dso_local i32 @recursively_mark_NOTATTACHED(%struct.usb_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
