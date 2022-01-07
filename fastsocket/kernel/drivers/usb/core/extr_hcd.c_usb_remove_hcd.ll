; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_hcd.c_usb_remove_hcd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_hcd.c_usb_remove_hcd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i64, %struct.TYPE_6__, i32, i32, i32, %struct.TYPE_5__*, i32, i64 }
%struct.TYPE_6__ = type { %struct.usb_device*, i32 }
%struct.usb_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 (%struct.usb_hcd*)* }

@.str = private unnamed_addr constant [18 x i8] c"remove, state %x\0A\00", align 1
@usb_bus_attr_group = common dso_local global i32 0, align 4
@HCD_FLAG_RH_RUNNING = common dso_local global i32 0, align 4
@HC_STATE_QUIESCING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"roothub graceful disconnect\0A\00", align 1
@hcd_root_hub_lock = common dso_local global i32 0, align 4
@usb_bus_list_lock = common dso_local global i32 0, align 4
@HCD_FLAG_RH_POLLABLE = common dso_local global i32 0, align 4
@HCD_FLAG_POLL_RH = common dso_local global i32 0, align 4
@HC_STATE_HALT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usb_remove_hcd(%struct.usb_hcd* %0) #0 {
  %2 = alloca %struct.usb_hcd*, align 8
  %3 = alloca %struct.usb_device*, align 8
  store %struct.usb_hcd* %0, %struct.usb_hcd** %2, align 8
  %4 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %5 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  store %struct.usb_device* %7, %struct.usb_device** %3, align 8
  %8 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %9 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %13 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @dev_info(i32 %11, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %17 = call i32 @usb_get_dev(%struct.usb_device* %16)
  %18 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %19 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = call i32 @sysfs_remove_group(i32* %20, i32* @usb_bus_attr_group)
  %22 = load i32, i32* @HCD_FLAG_RH_RUNNING, align 4
  %23 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %24 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %23, i32 0, i32 3
  %25 = call i32 @clear_bit(i32 %22, i32* %24)
  %26 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %27 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @HC_IS_RUNNING(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %1
  %32 = load i32, i32* @HC_STATE_QUIESCING, align 4
  %33 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %34 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %33, i32 0, i32 4
  store i32 %32, i32* %34, align 8
  br label %35

35:                                               ; preds = %31, %1
  %36 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %37 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @dev_dbg(i32 %39, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %41 = call i32 @spin_lock_irq(i32* @hcd_root_hub_lock)
  %42 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %43 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %42, i32 0, i32 7
  store i64 0, i64* %43, align 8
  %44 = call i32 @spin_unlock_irq(i32* @hcd_root_hub_lock)
  %45 = call i32 @mutex_lock(i32* @usb_bus_list_lock)
  %46 = call i32 @usb_disconnect(%struct.usb_device** %3)
  %47 = call i32 @mutex_unlock(i32* @usb_bus_list_lock)
  %48 = load i32, i32* @HCD_FLAG_RH_POLLABLE, align 4
  %49 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %50 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %49, i32 0, i32 3
  %51 = call i32 @clear_bit(i32 %48, i32* %50)
  %52 = load i32, i32* @HCD_FLAG_POLL_RH, align 4
  %53 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %54 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %53, i32 0, i32 3
  %55 = call i32 @clear_bit(i32 %52, i32* %54)
  %56 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %57 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %56, i32 0, i32 2
  %58 = call i32 @del_timer_sync(i32* %57)
  %59 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %60 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %59, i32 0, i32 5
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32 (%struct.usb_hcd*)*, i32 (%struct.usb_hcd*)** %62, align 8
  %64 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %65 = call i32 %63(%struct.usb_hcd* %64)
  %66 = load i32, i32* @HC_STATE_HALT, align 4
  %67 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %68 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %67, i32 0, i32 4
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* @HCD_FLAG_POLL_RH, align 4
  %70 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %71 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %70, i32 0, i32 3
  %72 = call i32 @clear_bit(i32 %69, i32* %71)
  %73 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %74 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %73, i32 0, i32 2
  %75 = call i32 @del_timer_sync(i32* %74)
  %76 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %77 = call i64 @usb_hcd_is_primary_hcd(%struct.usb_hcd* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %91

79:                                               ; preds = %35
  %80 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %81 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp sge i64 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %79
  %85 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %86 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %89 = call i32 @free_irq(i64 %87, %struct.usb_hcd* %88)
  br label %90

90:                                               ; preds = %84, %79
  br label %91

91:                                               ; preds = %90, %35
  %92 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %93 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load %struct.usb_device*, %struct.usb_device** %94, align 8
  %96 = call i32 @usb_put_dev(%struct.usb_device* %95)
  %97 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %98 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %97, i32 0, i32 1
  %99 = call i32 @usb_deregister_bus(%struct.TYPE_6__* %98)
  %100 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %101 = call i32 @hcd_buffer_destroy(%struct.usb_hcd* %100)
  ret void
}

declare dso_local i32 @dev_info(i32, i8*, i32) #1

declare dso_local i32 @usb_get_dev(%struct.usb_device*) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i64 @HC_IS_RUNNING(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @usb_disconnect(%struct.usb_device**) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i64 @usb_hcd_is_primary_hcd(%struct.usb_hcd*) #1

declare dso_local i32 @free_irq(i64, %struct.usb_hcd*) #1

declare dso_local i32 @usb_put_dev(%struct.usb_device*) #1

declare dso_local i32 @usb_deregister_bus(%struct.TYPE_6__*) #1

declare dso_local i32 @hcd_buffer_destroy(%struct.usb_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
