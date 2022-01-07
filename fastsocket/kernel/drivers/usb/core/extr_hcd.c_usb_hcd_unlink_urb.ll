; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_hcd.c_usb_hcd_unlink_urb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_hcd.c_usb_hcd_unlink_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.usb_hcd = type { i32 }

@EIDRM = common dso_local global i32 0, align 4
@hcd_urb_unlink_lock = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"hcd_unlink_urb %p fail %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_hcd_unlink_urb(%struct.urb* %0, i32 %1) #0 {
  %3 = alloca %struct.urb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_hcd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.urb* %0, %struct.urb** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @EIDRM, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %6, align 4
  %10 = load i64, i64* %7, align 8
  %11 = call i32 @spin_lock_irqsave(i32* @hcd_urb_unlink_lock, i64 %10)
  %12 = load %struct.urb*, %struct.urb** %3, align 8
  %13 = getelementptr inbounds %struct.urb, %struct.urb* %12, i32 0, i32 1
  %14 = call i64 @atomic_read(i32* %13)
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  %17 = load %struct.urb*, %struct.urb** %3, align 8
  %18 = getelementptr inbounds %struct.urb, %struct.urb* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = call i32 @usb_get_dev(%struct.TYPE_3__* %19)
  br label %21

21:                                               ; preds = %16, %2
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @spin_unlock_irqrestore(i32* @hcd_urb_unlink_lock, i64 %22)
  %24 = load i32, i32* %6, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %21
  %27 = load %struct.urb*, %struct.urb** %3, align 8
  %28 = getelementptr inbounds %struct.urb, %struct.urb* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.usb_hcd* @bus_to_hcd(i32 %31)
  store %struct.usb_hcd* %32, %struct.usb_hcd** %5, align 8
  %33 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %34 = load %struct.urb*, %struct.urb** %3, align 8
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @unlink1(%struct.usb_hcd* %33, %struct.urb* %34, i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load %struct.urb*, %struct.urb** %3, align 8
  %38 = getelementptr inbounds %struct.urb, %struct.urb* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = call i32 @usb_put_dev(%struct.TYPE_3__* %39)
  br label %41

41:                                               ; preds = %26, %21
  %42 = load i32, i32* %6, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i32, i32* @EINPROGRESS, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %6, align 4
  br label %66

47:                                               ; preds = %41
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @EIDRM, align 4
  %50 = sub nsw i32 0, %49
  %51 = icmp ne i32 %48, %50
  br i1 %51, label %52, label %65

52:                                               ; preds = %47
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @EBUSY, align 4
  %55 = sub nsw i32 0, %54
  %56 = icmp ne i32 %53, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %52
  %58 = load %struct.urb*, %struct.urb** %3, align 8
  %59 = getelementptr inbounds %struct.urb, %struct.urb* %58, i32 0, i32 0
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load %struct.urb*, %struct.urb** %3, align 8
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @dev_dbg(i32* %61, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), %struct.urb* %62, i32 %63)
  br label %65

65:                                               ; preds = %57, %52, %47
  br label %66

66:                                               ; preds = %65, %44
  %67 = load i32, i32* %6, align 4
  ret i32 %67
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @usb_get_dev(%struct.TYPE_3__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.usb_hcd* @bus_to_hcd(i32) #1

declare dso_local i32 @unlink1(%struct.usb_hcd*, %struct.urb*, i32) #1

declare dso_local i32 @usb_put_dev(%struct.TYPE_3__*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, %struct.urb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
