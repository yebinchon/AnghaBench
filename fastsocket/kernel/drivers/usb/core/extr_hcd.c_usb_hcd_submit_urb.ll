; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_hcd.c_usb_hcd_submit_urb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_hcd.c_usb_hcd_submit_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, %struct.TYPE_4__*, i32, i32, i32* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.usb_hcd = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.usb_hcd*, %struct.urb*, i32)* }

@usb_kill_urb_queue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_hcd_submit_urb(%struct.urb* %0, i32 %1) #0 {
  %3 = alloca %struct.urb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_hcd*, align 8
  store %struct.urb* %0, %struct.urb** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.urb*, %struct.urb** %3, align 8
  %8 = getelementptr inbounds %struct.urb, %struct.urb* %7, i32 0, i32 1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.usb_hcd* @bus_to_hcd(i32 %11)
  store %struct.usb_hcd* %12, %struct.usb_hcd** %6, align 8
  %13 = load %struct.urb*, %struct.urb** %3, align 8
  %14 = call i32 @usb_get_urb(%struct.urb* %13)
  %15 = load %struct.urb*, %struct.urb** %3, align 8
  %16 = getelementptr inbounds %struct.urb, %struct.urb* %15, i32 0, i32 2
  %17 = call i32 @atomic_inc(i32* %16)
  %18 = load %struct.urb*, %struct.urb** %3, align 8
  %19 = getelementptr inbounds %struct.urb, %struct.urb* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = call i32 @atomic_inc(i32* %21)
  %23 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  %24 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %23, i32 0, i32 0
  %25 = load %struct.urb*, %struct.urb** %3, align 8
  %26 = call i32 @usbmon_urb_submit(i32* %24, %struct.urb* %25)
  %27 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  %28 = load %struct.urb*, %struct.urb** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @map_urb_for_dma(%struct.usb_hcd* %27, %struct.urb* %28, i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %2
  %35 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  %36 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %35, i32 0, i32 0
  %37 = load %struct.urb*, %struct.urb** %3, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @usbmon_urb_submit_error(i32* %36, %struct.urb* %37, i32 %38)
  br label %73

40:                                               ; preds = %2
  %41 = load %struct.urb*, %struct.urb** %3, align 8
  %42 = getelementptr inbounds %struct.urb, %struct.urb* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = call i64 @is_root_hub(%struct.TYPE_4__* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  %48 = load %struct.urb*, %struct.urb** %3, align 8
  %49 = call i32 @rh_urb_enqueue(%struct.usb_hcd* %47, %struct.urb* %48)
  store i32 %49, i32* %5, align 4
  br label %60

50:                                               ; preds = %40
  %51 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  %52 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %51, i32 0, i32 1
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32 (%struct.usb_hcd*, %struct.urb*, i32)*, i32 (%struct.usb_hcd*, %struct.urb*, i32)** %54, align 8
  %56 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  %57 = load %struct.urb*, %struct.urb** %3, align 8
  %58 = load i32, i32* %4, align 4
  %59 = call i32 %55(%struct.usb_hcd* %56, %struct.urb* %57, i32 %58)
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %50, %46
  %61 = load i32, i32* %5, align 4
  %62 = call i64 @unlikely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %96

64:                                               ; preds = %60
  %65 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  %66 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %65, i32 0, i32 0
  %67 = load %struct.urb*, %struct.urb** %3, align 8
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @usbmon_urb_submit_error(i32* %66, %struct.urb* %67, i32 %68)
  %70 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  %71 = load %struct.urb*, %struct.urb** %3, align 8
  %72 = call i32 @unmap_urb_for_dma(%struct.usb_hcd* %70, %struct.urb* %71)
  br label %73

73:                                               ; preds = %64, %34
  %74 = load %struct.urb*, %struct.urb** %3, align 8
  %75 = getelementptr inbounds %struct.urb, %struct.urb* %74, i32 0, i32 4
  store i32* null, i32** %75, align 8
  %76 = load %struct.urb*, %struct.urb** %3, align 8
  %77 = getelementptr inbounds %struct.urb, %struct.urb* %76, i32 0, i32 3
  %78 = call i32 @INIT_LIST_HEAD(i32* %77)
  %79 = load %struct.urb*, %struct.urb** %3, align 8
  %80 = getelementptr inbounds %struct.urb, %struct.urb* %79, i32 0, i32 2
  %81 = call i32 @atomic_dec(i32* %80)
  %82 = load %struct.urb*, %struct.urb** %3, align 8
  %83 = getelementptr inbounds %struct.urb, %struct.urb* %82, i32 0, i32 1
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = call i32 @atomic_dec(i32* %85)
  %87 = load %struct.urb*, %struct.urb** %3, align 8
  %88 = getelementptr inbounds %struct.urb, %struct.urb* %87, i32 0, i32 0
  %89 = call i64 @atomic_read(i32* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %73
  %92 = call i32 @wake_up(i32* @usb_kill_urb_queue)
  br label %93

93:                                               ; preds = %91, %73
  %94 = load %struct.urb*, %struct.urb** %3, align 8
  %95 = call i32 @usb_put_urb(%struct.urb* %94)
  br label %96

96:                                               ; preds = %93, %60
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local %struct.usb_hcd* @bus_to_hcd(i32) #1

declare dso_local i32 @usb_get_urb(%struct.urb*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @usbmon_urb_submit(i32*, %struct.urb*) #1

declare dso_local i32 @map_urb_for_dma(%struct.usb_hcd*, %struct.urb*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @usbmon_urb_submit_error(i32*, %struct.urb*, i32) #1

declare dso_local i64 @is_root_hub(%struct.TYPE_4__*) #1

declare dso_local i32 @rh_urb_enqueue(%struct.usb_hcd*, %struct.urb*) #1

declare dso_local i32 @unmap_urb_for_dma(%struct.usb_hcd*, %struct.urb*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @usb_put_urb(%struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
