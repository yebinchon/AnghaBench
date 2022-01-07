; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/extr_evtchn.c_evtchn_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/extr_evtchn.c_evtchn_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.per_user_data = type { i64, i64, i32*, i32, i32, i32 }

@port_user_lock = common dso_local global i32 0, align 4
@port_user = common dso_local global %struct.per_user_data** null, align 8
@EVTCHN_RING_SIZE = common dso_local global i64 0, align 8
@SIGIO = common dso_local global i32 0, align 4
@POLL_IN = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evtchn_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.per_user_data*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = ptrtoint i8* %7 to i64
  %9 = trunc i64 %8 to i32
  store i32 %9, i32* %5, align 4
  %10 = call i32 @spin_lock(i32* @port_user_lock)
  %11 = load %struct.per_user_data**, %struct.per_user_data*** @port_user, align 8
  %12 = load i32, i32* %5, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.per_user_data*, %struct.per_user_data** %11, i64 %13
  %15 = load %struct.per_user_data*, %struct.per_user_data** %14, align 8
  store %struct.per_user_data* %15, %struct.per_user_data** %6, align 8
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @disable_irq_nosync(i32 %16)
  %18 = load %struct.per_user_data*, %struct.per_user_data** %6, align 8
  %19 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.per_user_data*, %struct.per_user_data** %6, align 8
  %22 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = sub nsw i64 %20, %23
  %25 = load i64, i64* @EVTCHN_RING_SIZE, align 8
  %26 = icmp slt i64 %24, %25
  br i1 %26, label %27, label %56

27:                                               ; preds = %2
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.per_user_data*, %struct.per_user_data** %6, align 8
  %30 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.per_user_data*, %struct.per_user_data** %6, align 8
  %33 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @EVTCHN_RING_MASK(i64 %34)
  %36 = getelementptr inbounds i32, i32* %31, i64 %35
  store i32 %28, i32* %36, align 4
  %37 = call i32 (...) @wmb()
  %38 = load %struct.per_user_data*, %struct.per_user_data** %6, align 8
  %39 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.per_user_data*, %struct.per_user_data** %6, align 8
  %42 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* %42, align 8
  %45 = icmp eq i64 %40, %43
  br i1 %45, label %46, label %55

46:                                               ; preds = %27
  %47 = load %struct.per_user_data*, %struct.per_user_data** %6, align 8
  %48 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %47, i32 0, i32 5
  %49 = call i32 @wake_up_interruptible(i32* %48)
  %50 = load %struct.per_user_data*, %struct.per_user_data** %6, align 8
  %51 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %50, i32 0, i32 4
  %52 = load i32, i32* @SIGIO, align 4
  %53 = load i32, i32* @POLL_IN, align 4
  %54 = call i32 @kill_fasync(i32* %51, i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %46, %27
  br label %59

56:                                               ; preds = %2
  %57 = load %struct.per_user_data*, %struct.per_user_data** %6, align 8
  %58 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %57, i32 0, i32 3
  store i32 1, i32* %58, align 8
  br label %59

59:                                               ; preds = %56, %55
  %60 = call i32 @spin_unlock(i32* @port_user_lock)
  %61 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %61
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @disable_irq_nosync(i32) #1

declare dso_local i64 @EVTCHN_RING_MASK(i64) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @kill_fasync(i32*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
