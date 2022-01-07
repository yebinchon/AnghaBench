; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_devio.c_free_async.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_devio.c_free_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.async = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.async*, %struct.async* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.async*)* @free_async to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_async(%struct.async* %0) #0 {
  %2 = alloca %struct.async*, align 8
  store %struct.async* %0, %struct.async** %2, align 8
  %3 = load %struct.async*, %struct.async** %2, align 8
  %4 = getelementptr inbounds %struct.async, %struct.async* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 8
  %6 = call i32 @put_pid(i32 %5)
  %7 = load %struct.async*, %struct.async** %2, align 8
  %8 = getelementptr inbounds %struct.async, %struct.async* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load %struct.async*, %struct.async** %10, align 8
  %12 = call i32 @kfree(%struct.async* %11)
  %13 = load %struct.async*, %struct.async** %2, align 8
  %14 = getelementptr inbounds %struct.async, %struct.async* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.async*, %struct.async** %16, align 8
  %18 = call i32 @kfree(%struct.async* %17)
  %19 = load %struct.async*, %struct.async** %2, align 8
  %20 = getelementptr inbounds %struct.async, %struct.async* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = call i32 @usb_free_urb(%struct.TYPE_2__* %21)
  %23 = load %struct.async*, %struct.async** %2, align 8
  %24 = getelementptr inbounds %struct.async, %struct.async* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @usbfs_decrease_memory_usage(i32 %25)
  %27 = load %struct.async*, %struct.async** %2, align 8
  %28 = call i32 @kfree(%struct.async* %27)
  ret void
}

declare dso_local i32 @put_pid(i32) #1

declare dso_local i32 @kfree(%struct.async*) #1

declare dso_local i32 @usb_free_urb(%struct.TYPE_2__*) #1

declare dso_local i32 @usbfs_decrease_memory_usage(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
