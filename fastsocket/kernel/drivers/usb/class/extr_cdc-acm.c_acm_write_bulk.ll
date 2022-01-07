; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/class/extr_cdc-acm.c_acm_write_bulk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/class/extr_cdc-acm.c_acm_write_bulk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i32, i32, %struct.acm_wb* }
%struct.acm_wb = type { %struct.acm* }
%struct.acm = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@verbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"tx %d/%d bytes -- > %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @acm_write_bulk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acm_write_bulk(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.acm_wb*, align 8
  %4 = alloca %struct.acm*, align 8
  %5 = alloca i64, align 8
  store %struct.urb* %0, %struct.urb** %2, align 8
  %6 = load %struct.urb*, %struct.urb** %2, align 8
  %7 = getelementptr inbounds %struct.urb, %struct.urb* %6, i32 0, i32 3
  %8 = load %struct.acm_wb*, %struct.acm_wb** %7, align 8
  store %struct.acm_wb* %8, %struct.acm_wb** %3, align 8
  %9 = load %struct.acm_wb*, %struct.acm_wb** %3, align 8
  %10 = getelementptr inbounds %struct.acm_wb, %struct.acm_wb* %9, i32 0, i32 0
  %11 = load %struct.acm*, %struct.acm** %10, align 8
  store %struct.acm* %11, %struct.acm** %4, align 8
  %12 = load i64, i64* @verbose, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %27, label %14

14:                                               ; preds = %1
  %15 = load %struct.urb*, %struct.urb** %2, align 8
  %16 = getelementptr inbounds %struct.urb, %struct.urb* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %14
  %20 = load %struct.urb*, %struct.urb** %2, align 8
  %21 = getelementptr inbounds %struct.urb, %struct.urb* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.urb*, %struct.urb** %2, align 8
  %24 = getelementptr inbounds %struct.urb, %struct.urb* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %22, %25
  br i1 %26, label %27, label %42

27:                                               ; preds = %19, %14, %1
  %28 = load %struct.acm*, %struct.acm** %4, align 8
  %29 = getelementptr inbounds %struct.acm, %struct.acm* %28, i32 0, i32 3
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load %struct.urb*, %struct.urb** %2, align 8
  %33 = getelementptr inbounds %struct.urb, %struct.urb* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.urb*, %struct.urb** %2, align 8
  %36 = getelementptr inbounds %struct.urb, %struct.urb* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.urb*, %struct.urb** %2, align 8
  %39 = getelementptr inbounds %struct.urb, %struct.urb* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @dev_dbg(i32* %31, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %37, i32 %40)
  br label %42

42:                                               ; preds = %27, %19
  %43 = load %struct.acm*, %struct.acm** %4, align 8
  %44 = getelementptr inbounds %struct.acm, %struct.acm* %43, i32 0, i32 2
  %45 = load i64, i64* %5, align 8
  %46 = call i32 @spin_lock_irqsave(i32* %44, i64 %45)
  %47 = load %struct.acm*, %struct.acm** %4, align 8
  %48 = load %struct.acm_wb*, %struct.acm_wb** %3, align 8
  %49 = call i32 @acm_write_done(%struct.acm* %47, %struct.acm_wb* %48)
  %50 = load %struct.acm*, %struct.acm** %4, align 8
  %51 = getelementptr inbounds %struct.acm, %struct.acm* %50, i32 0, i32 2
  %52 = load i64, i64* %5, align 8
  %53 = call i32 @spin_unlock_irqrestore(i32* %51, i64 %52)
  %54 = load %struct.acm*, %struct.acm** %4, align 8
  %55 = call i64 @ACM_READY(%struct.acm* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %42
  %58 = load %struct.acm*, %struct.acm** %4, align 8
  %59 = getelementptr inbounds %struct.acm, %struct.acm* %58, i32 0, i32 1
  %60 = call i32 @schedule_work(i32* %59)
  br label %65

61:                                               ; preds = %42
  %62 = load %struct.acm*, %struct.acm** %4, align 8
  %63 = getelementptr inbounds %struct.acm, %struct.acm* %62, i32 0, i32 0
  %64 = call i32 @wake_up_interruptible(i32* %63)
  br label %65

65:                                               ; preds = %61, %57
  ret void
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @acm_write_done(%struct.acm*, %struct.acm_wb*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @ACM_READY(%struct.acm*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
