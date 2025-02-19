; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt2870/extr_2870_main_dev.c__rtusb_disconnect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt2870/extr_2870_main_dev.c__rtusb_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { %struct.net_device* }
%struct.net_device = type { i32 }

@RT_DEBUG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"rtusb_disconnect: unregister usbnet usb-%s-%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"rtusb_disconnect: pAd == NULL!\0A\00", align 1
@fRTMP_ADAPTER_NIC_NOT_EXIST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"rtusb_disconnect: unregister_netdev(), dev->name=%s!\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c" RTUSB disconnect successfully\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_device*, %struct.TYPE_7__*)* @_rtusb_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtusb_disconnect(%struct.usb_device* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca %struct.usb_device*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.net_device*, align 8
  store %struct.usb_device* %0, %struct.usb_device** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  store %struct.net_device* null, %struct.net_device** %5, align 8
  %6 = load i32, i32* @RT_DEBUG_ERROR, align 4
  %7 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %8 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %7, i32 0, i32 1
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %13 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sext i32 %14 to i64
  %16 = inttoptr i64 %15 to i8*
  %17 = call i32 @DBGPRINT(i32 %6, i8* %16)
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %19 = icmp ne %struct.TYPE_7__* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %2
  %21 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %22 = call i32 @usb_put_dev(%struct.usb_device* %21)
  %23 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %58

24:                                               ; preds = %2
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %26 = load i32, i32* @fRTMP_ADAPTER_NIC_NOT_EXIST, align 4
  %27 = call i32 @RTMP_SET_FLAG(%struct.TYPE_7__* %25, i32 %26)
  %28 = call i32 @udelay(i32 1)
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load %struct.net_device*, %struct.net_device** %30, align 8
  store %struct.net_device* %31, %struct.net_device** %5, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load %struct.net_device*, %struct.net_device** %33, align 8
  %35 = icmp ne %struct.net_device* %34, null
  br i1 %35, label %36, label %45

36:                                               ; preds = %24
  %37 = load %struct.net_device*, %struct.net_device** %5, align 8
  %38 = getelementptr inbounds %struct.net_device, %struct.net_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %39)
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load %struct.net_device*, %struct.net_device** %42, align 8
  %44 = call i32 @unregister_netdev(%struct.net_device* %43)
  br label %45

45:                                               ; preds = %36, %24
  %46 = call i32 @udelay(i32 1)
  %47 = call i32 (...) @flush_scheduled_work()
  %48 = call i32 @udelay(i32 1)
  %49 = load %struct.net_device*, %struct.net_device** %5, align 8
  %50 = call i32 @free_netdev(%struct.net_device* %49)
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %52 = call i32 @RTMPFreeAdapter(%struct.TYPE_7__* %51)
  %53 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %54 = call i32 @usb_put_dev(%struct.usb_device* %53)
  %55 = call i32 @udelay(i32 1)
  %56 = load i32, i32* @RT_DEBUG_ERROR, align 4
  %57 = call i32 @DBGPRINT(i32 %56, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %58

58:                                               ; preds = %45, %20
  ret void
}

declare dso_local i32 @DBGPRINT(i32, i8*) #1

declare dso_local i32 @usb_put_dev(%struct.usb_device*) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @RTMP_SET_FLAG(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @flush_scheduled_work(...) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @RTMPFreeAdapter(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
