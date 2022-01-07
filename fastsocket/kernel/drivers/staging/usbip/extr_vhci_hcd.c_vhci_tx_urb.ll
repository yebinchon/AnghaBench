; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/usbip/extr_vhci_hcd.c_vhci_tx_urb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/usbip/extr_vhci_hcd.c_vhci_tx_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.urb = type { i8*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.vhci_device = type { i32, i32, i32, i32 }
%struct.vhci_priv = type { i32, i32, %struct.urb*, %struct.vhci_device* }

@.str = private unnamed_addr constant [29 x i8] c"could not get virtual device\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"malloc vhci_priv\0A\00", align 1
@VDEV_EVENT_ERROR_MALLOC = common dso_local global i32 0, align 4
@the_controller = common dso_local global %struct.TYPE_3__* null, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"seqnum max\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @vhci_tx_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vhci_tx_urb(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.vhci_device*, align 8
  %4 = alloca %struct.vhci_priv*, align 8
  %5 = alloca i64, align 8
  store %struct.urb* %0, %struct.urb** %2, align 8
  %6 = load %struct.urb*, %struct.urb** %2, align 8
  %7 = getelementptr inbounds %struct.urb, %struct.urb* %6, i32 0, i32 1
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = call %struct.vhci_device* @get_vdev(%struct.TYPE_4__* %8)
  store %struct.vhci_device* %9, %struct.vhci_device** %3, align 8
  %10 = load %struct.vhci_device*, %struct.vhci_device** %3, align 8
  %11 = icmp ne %struct.vhci_device* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %1
  %13 = call i32 @err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %72

14:                                               ; preds = %1
  %15 = load i32, i32* @GFP_ATOMIC, align 4
  %16 = call %struct.vhci_priv* @kzalloc(i32 24, i32 %15)
  store %struct.vhci_priv* %16, %struct.vhci_priv** %4, align 8
  %17 = load %struct.vhci_device*, %struct.vhci_device** %3, align 8
  %18 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %17, i32 0, i32 0
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.vhci_priv*, %struct.vhci_priv** %4, align 8
  %22 = icmp ne %struct.vhci_priv* %21, null
  br i1 %22, label %37, label %23

23:                                               ; preds = %14
  %24 = load %struct.urb*, %struct.urb** %2, align 8
  %25 = getelementptr inbounds %struct.urb, %struct.urb* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = call i32 @dev_err(i32* %27, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %29 = load %struct.vhci_device*, %struct.vhci_device** %3, align 8
  %30 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %29, i32 0, i32 0
  %31 = load i64, i64* %5, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* %30, i64 %31)
  %33 = load %struct.vhci_device*, %struct.vhci_device** %3, align 8
  %34 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %33, i32 0, i32 3
  %35 = load i32, i32* @VDEV_EVENT_ERROR_MALLOC, align 4
  %36 = call i32 @usbip_event_add(i32* %34, i32 %35)
  br label %72

37:                                               ; preds = %14
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** @the_controller, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = call i32 @atomic_inc_return(i32* %39)
  %41 = load %struct.vhci_priv*, %struct.vhci_priv** %4, align 8
  %42 = getelementptr inbounds %struct.vhci_priv, %struct.vhci_priv* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.vhci_priv*, %struct.vhci_priv** %4, align 8
  %44 = getelementptr inbounds %struct.vhci_priv, %struct.vhci_priv* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %45, 65535
  br i1 %46, label %47, label %49

47:                                               ; preds = %37
  %48 = call i32 @usbip_uinfo(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47, %37
  %50 = load %struct.vhci_device*, %struct.vhci_device** %3, align 8
  %51 = load %struct.vhci_priv*, %struct.vhci_priv** %4, align 8
  %52 = getelementptr inbounds %struct.vhci_priv, %struct.vhci_priv* %51, i32 0, i32 3
  store %struct.vhci_device* %50, %struct.vhci_device** %52, align 8
  %53 = load %struct.urb*, %struct.urb** %2, align 8
  %54 = load %struct.vhci_priv*, %struct.vhci_priv** %4, align 8
  %55 = getelementptr inbounds %struct.vhci_priv, %struct.vhci_priv* %54, i32 0, i32 2
  store %struct.urb* %53, %struct.urb** %55, align 8
  %56 = load %struct.vhci_priv*, %struct.vhci_priv** %4, align 8
  %57 = bitcast %struct.vhci_priv* %56 to i8*
  %58 = load %struct.urb*, %struct.urb** %2, align 8
  %59 = getelementptr inbounds %struct.urb, %struct.urb* %58, i32 0, i32 0
  store i8* %57, i8** %59, align 8
  %60 = load %struct.vhci_priv*, %struct.vhci_priv** %4, align 8
  %61 = getelementptr inbounds %struct.vhci_priv, %struct.vhci_priv* %60, i32 0, i32 1
  %62 = load %struct.vhci_device*, %struct.vhci_device** %3, align 8
  %63 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %62, i32 0, i32 2
  %64 = call i32 @list_add_tail(i32* %61, i32* %63)
  %65 = load %struct.vhci_device*, %struct.vhci_device** %3, align 8
  %66 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %65, i32 0, i32 1
  %67 = call i32 @wake_up(i32* %66)
  %68 = load %struct.vhci_device*, %struct.vhci_device** %3, align 8
  %69 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %68, i32 0, i32 0
  %70 = load i64, i64* %5, align 8
  %71 = call i32 @spin_unlock_irqrestore(i32* %69, i64 %70)
  br label %72

72:                                               ; preds = %49, %23, %12
  ret void
}

declare dso_local %struct.vhci_device* @get_vdev(%struct.TYPE_4__*) #1

declare dso_local i32 @err(i8*) #1

declare dso_local %struct.vhci_priv* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @usbip_event_add(i32*, i32) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @usbip_uinfo(i8*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
