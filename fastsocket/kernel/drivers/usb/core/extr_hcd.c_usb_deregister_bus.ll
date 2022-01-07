; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_hcd.c_usb_deregister_bus.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_hcd.c_usb_deregister_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.usb_bus = type { i32, i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"USB bus %d deregistered\0A\00", align 1
@usb_bus_list_lock = common dso_local global i32 0, align 4
@busmap = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_bus*)* @usb_deregister_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb_deregister_bus(%struct.usb_bus* %0) #0 {
  %2 = alloca %struct.usb_bus*, align 8
  store %struct.usb_bus* %0, %struct.usb_bus** %2, align 8
  %3 = load %struct.usb_bus*, %struct.usb_bus** %2, align 8
  %4 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.usb_bus*, %struct.usb_bus** %2, align 8
  %7 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @dev_info(i32 %5, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = call i32 @mutex_lock(i32* @usb_bus_list_lock)
  %11 = load %struct.usb_bus*, %struct.usb_bus** %2, align 8
  %12 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %11, i32 0, i32 1
  %13 = call i32 @list_del(i32* %12)
  %14 = call i32 @mutex_unlock(i32* @usb_bus_list_lock)
  %15 = load %struct.usb_bus*, %struct.usb_bus** %2, align 8
  %16 = call i32 @usb_notify_remove_bus(%struct.usb_bus* %15)
  %17 = load %struct.usb_bus*, %struct.usb_bus** %2, align 8
  %18 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @busmap, i32 0, i32 0), align 4
  %21 = call i32 @clear_bit(i32 %19, i32 %20)
  ret void
}

declare dso_local i32 @dev_info(i32, i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @usb_notify_remove_bus(%struct.usb_bus*) #1

declare dso_local i32 @clear_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
