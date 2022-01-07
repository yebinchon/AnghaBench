; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_hcd.c_usb_hcd_giveback_urb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_hcd.c_usb_hcd_giveback_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.urb = type { i32, i32, i64, i64, i32, i32, i32, i32 (%struct.urb*)*, i32* }

@URB_SHORT_NOT_OK = common dso_local global i32 0, align 4
@EREMOTEIO = common dso_local global i32 0, align 4
@usb_kill_urb_queue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usb_hcd_giveback_urb(%struct.usb_hcd* %0, %struct.urb* %1, i32 %2) #0 {
  %4 = alloca %struct.usb_hcd*, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca i32, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %4, align 8
  store %struct.urb* %1, %struct.urb** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.urb*, %struct.urb** %5, align 8
  %8 = getelementptr inbounds %struct.urb, %struct.urb* %7, i32 0, i32 8
  store i32* null, i32** %8, align 8
  %9 = load %struct.urb*, %struct.urb** %5, align 8
  %10 = getelementptr inbounds %struct.urb, %struct.urb* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i64 @unlikely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load %struct.urb*, %struct.urb** %5, align 8
  %16 = getelementptr inbounds %struct.urb, %struct.urb* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %6, align 4
  br label %46

18:                                               ; preds = %3
  %19 = load %struct.urb*, %struct.urb** %5, align 8
  %20 = getelementptr inbounds %struct.urb, %struct.urb* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @URB_SHORT_NOT_OK, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %18
  %26 = load %struct.urb*, %struct.urb** %5, align 8
  %27 = getelementptr inbounds %struct.urb, %struct.urb* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.urb*, %struct.urb** %5, align 8
  %30 = getelementptr inbounds %struct.urb, %struct.urb* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = icmp slt i64 %28, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %25
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  br label %37

37:                                               ; preds = %33, %25, %18
  %38 = phi i1 [ false, %25 ], [ false, %18 ], [ %36, %33 ]
  %39 = zext i1 %38 to i32
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32, i32* @EREMOTEIO, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %42, %37
  br label %46

46:                                               ; preds = %45, %14
  %47 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %48 = load %struct.urb*, %struct.urb** %5, align 8
  %49 = call i32 @unmap_urb_for_dma(%struct.usb_hcd* %47, %struct.urb* %48)
  %50 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %51 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %50, i32 0, i32 0
  %52 = load %struct.urb*, %struct.urb** %5, align 8
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @usbmon_urb_complete(i32* %51, %struct.urb* %52, i32 %53)
  %55 = load %struct.urb*, %struct.urb** %5, align 8
  %56 = call i32 @usb_unanchor_urb(%struct.urb* %55)
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.urb*, %struct.urb** %5, align 8
  %59 = getelementptr inbounds %struct.urb, %struct.urb* %58, i32 0, i32 4
  store i32 %57, i32* %59, align 8
  %60 = load %struct.urb*, %struct.urb** %5, align 8
  %61 = getelementptr inbounds %struct.urb, %struct.urb* %60, i32 0, i32 7
  %62 = load i32 (%struct.urb*)*, i32 (%struct.urb*)** %61, align 8
  %63 = load %struct.urb*, %struct.urb** %5, align 8
  %64 = call i32 %62(%struct.urb* %63)
  %65 = load %struct.urb*, %struct.urb** %5, align 8
  %66 = getelementptr inbounds %struct.urb, %struct.urb* %65, i32 0, i32 6
  %67 = call i32 @atomic_dec(i32* %66)
  %68 = load %struct.urb*, %struct.urb** %5, align 8
  %69 = getelementptr inbounds %struct.urb, %struct.urb* %68, i32 0, i32 5
  %70 = call i32 @atomic_read(i32* %69)
  %71 = call i64 @unlikely(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %46
  %74 = call i32 @wake_up(i32* @usb_kill_urb_queue)
  br label %75

75:                                               ; preds = %73, %46
  %76 = load %struct.urb*, %struct.urb** %5, align 8
  %77 = call i32 @usb_put_urb(%struct.urb* %76)
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @unmap_urb_for_dma(%struct.usb_hcd*, %struct.urb*) #1

declare dso_local i32 @usbmon_urb_complete(i32*, %struct.urb*, i32) #1

declare dso_local i32 @usb_unanchor_urb(%struct.urb*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @usb_put_urb(%struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
