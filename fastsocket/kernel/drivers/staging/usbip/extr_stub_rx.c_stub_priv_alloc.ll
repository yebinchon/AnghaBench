; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/usbip/extr_stub_rx.c_stub_priv_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/usbip/extr_stub_rx.c_stub_priv_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stub_priv = type { i32, %struct.stub_device*, i32 }
%struct.stub_device = type { i32, i32, %struct.TYPE_3__*, %struct.usbip_device }
%struct.TYPE_3__ = type { i32 }
%struct.usbip_device = type { i32 }
%struct.usbip_header = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@stub_priv_cache = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"alloc stub_priv\0A\00", align 1
@SDEV_EVENT_ERROR_MALLOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.stub_priv* (%struct.stub_device*, %struct.usbip_header*)* @stub_priv_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.stub_priv* @stub_priv_alloc(%struct.stub_device* %0, %struct.usbip_header* %1) #0 {
  %3 = alloca %struct.stub_priv*, align 8
  %4 = alloca %struct.stub_device*, align 8
  %5 = alloca %struct.usbip_header*, align 8
  %6 = alloca %struct.stub_priv*, align 8
  %7 = alloca %struct.usbip_device*, align 8
  %8 = alloca i64, align 8
  store %struct.stub_device* %0, %struct.stub_device** %4, align 8
  store %struct.usbip_header* %1, %struct.usbip_header** %5, align 8
  %9 = load %struct.stub_device*, %struct.stub_device** %4, align 8
  %10 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %9, i32 0, i32 3
  store %struct.usbip_device* %10, %struct.usbip_device** %7, align 8
  %11 = load %struct.stub_device*, %struct.stub_device** %4, align 8
  %12 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %11, i32 0, i32 0
  %13 = load i64, i64* %8, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load i32, i32* @stub_priv_cache, align 4
  %16 = load i32, i32* @GFP_ATOMIC, align 4
  %17 = call %struct.stub_priv* @kmem_cache_zalloc(i32 %15, i32 %16)
  store %struct.stub_priv* %17, %struct.stub_priv** %6, align 8
  %18 = load %struct.stub_priv*, %struct.stub_priv** %6, align 8
  %19 = icmp ne %struct.stub_priv* %18, null
  br i1 %19, label %33, label %20

20:                                               ; preds = %2
  %21 = load %struct.stub_device*, %struct.stub_device** %4, align 8
  %22 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %21, i32 0, i32 2
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = call i32 @dev_err(i32* %24, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.stub_device*, %struct.stub_device** %4, align 8
  %27 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %26, i32 0, i32 0
  %28 = load i64, i64* %8, align 8
  %29 = call i32 @spin_unlock_irqrestore(i32* %27, i64 %28)
  %30 = load %struct.usbip_device*, %struct.usbip_device** %7, align 8
  %31 = load i32, i32* @SDEV_EVENT_ERROR_MALLOC, align 4
  %32 = call i32 @usbip_event_add(%struct.usbip_device* %30, i32 %31)
  store %struct.stub_priv* null, %struct.stub_priv** %3, align 8
  br label %53

33:                                               ; preds = %2
  %34 = load %struct.usbip_header*, %struct.usbip_header** %5, align 8
  %35 = getelementptr inbounds %struct.usbip_header, %struct.usbip_header* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.stub_priv*, %struct.stub_priv** %6, align 8
  %39 = getelementptr inbounds %struct.stub_priv, %struct.stub_priv* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  %40 = load %struct.stub_device*, %struct.stub_device** %4, align 8
  %41 = load %struct.stub_priv*, %struct.stub_priv** %6, align 8
  %42 = getelementptr inbounds %struct.stub_priv, %struct.stub_priv* %41, i32 0, i32 1
  store %struct.stub_device* %40, %struct.stub_device** %42, align 8
  %43 = load %struct.stub_priv*, %struct.stub_priv** %6, align 8
  %44 = getelementptr inbounds %struct.stub_priv, %struct.stub_priv* %43, i32 0, i32 0
  %45 = load %struct.stub_device*, %struct.stub_device** %4, align 8
  %46 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %45, i32 0, i32 1
  %47 = call i32 @list_add_tail(i32* %44, i32* %46)
  %48 = load %struct.stub_device*, %struct.stub_device** %4, align 8
  %49 = getelementptr inbounds %struct.stub_device, %struct.stub_device* %48, i32 0, i32 0
  %50 = load i64, i64* %8, align 8
  %51 = call i32 @spin_unlock_irqrestore(i32* %49, i64 %50)
  %52 = load %struct.stub_priv*, %struct.stub_priv** %6, align 8
  store %struct.stub_priv* %52, %struct.stub_priv** %3, align 8
  br label %53

53:                                               ; preds = %33, %20
  %54 = load %struct.stub_priv*, %struct.stub_priv** %3, align 8
  ret %struct.stub_priv* %54
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.stub_priv* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @usbip_event_add(%struct.usbip_device*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
