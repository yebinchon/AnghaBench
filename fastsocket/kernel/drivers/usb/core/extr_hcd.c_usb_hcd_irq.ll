; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_hcd.c_usb_hcd_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_hcd.c_usb_hcd_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { %struct.TYPE_3__*, i32, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64 (%struct.usb_hcd*)* }

@IRQ_NONE = common dso_local global i64 0, align 8
@HCD_FLAG_SAW_IRQ = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @usb_hcd_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.usb_hcd*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.usb_hcd*
  store %struct.usb_hcd* %9, %struct.usb_hcd** %5, align 8
  %10 = load i64, i64* %6, align 8
  %11 = call i32 @local_irq_save(i64 %10)
  %12 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %13 = call i64 @HCD_DEAD(%struct.usb_hcd* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %2
  %16 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %17 = call i32 @HCD_HW_ACCESSIBLE(%struct.usb_hcd* %16)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  br label %20

20:                                               ; preds = %15, %2
  %21 = phi i1 [ true, %2 ], [ %19, %15 ]
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i64, i64* @IRQ_NONE, align 8
  store i64 %26, i64* %7, align 8
  br label %58

27:                                               ; preds = %20
  %28 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %29 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %28, i32 0, i32 2
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64 (%struct.usb_hcd*)*, i64 (%struct.usb_hcd*)** %31, align 8
  %33 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %34 = call i64 %32(%struct.usb_hcd* %33)
  %35 = load i64, i64* @IRQ_NONE, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %27
  %38 = load i64, i64* @IRQ_NONE, align 8
  store i64 %38, i64* %7, align 8
  br label %57

39:                                               ; preds = %27
  %40 = load i32, i32* @HCD_FLAG_SAW_IRQ, align 4
  %41 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %42 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %41, i32 0, i32 1
  %43 = call i32 @set_bit(i32 %40, i32* %42)
  %44 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %45 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %44, i32 0, i32 0
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = icmp ne %struct.TYPE_3__* %46, null
  br i1 %47, label %48, label %55

48:                                               ; preds = %39
  %49 = load i32, i32* @HCD_FLAG_SAW_IRQ, align 4
  %50 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %51 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %50, i32 0, i32 0
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = call i32 @set_bit(i32 %49, i32* %53)
  br label %55

55:                                               ; preds = %48, %39
  %56 = load i64, i64* @IRQ_HANDLED, align 8
  store i64 %56, i64* %7, align 8
  br label %57

57:                                               ; preds = %55, %37
  br label %58

58:                                               ; preds = %57, %25
  %59 = load i64, i64* %6, align 8
  %60 = call i32 @local_irq_restore(i64 %59)
  %61 = load i64, i64* %7, align 8
  ret i64 %61
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @HCD_DEAD(%struct.usb_hcd*) #1

declare dso_local i32 @HCD_HW_ACCESSIBLE(%struct.usb_hcd*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
