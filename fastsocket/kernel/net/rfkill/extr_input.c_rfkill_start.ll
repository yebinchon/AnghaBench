; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rfkill/extr_input.c_rfkill_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rfkill/extr_input.c_rfkill_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_handle = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@EV_SW = common dso_local global i32 0, align 4
@SW_RFKILL_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_handle*)* @rfkill_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rfkill_start(%struct.input_handle* %0) #0 {
  %2 = alloca %struct.input_handle*, align 8
  store %struct.input_handle* %0, %struct.input_handle** %2, align 8
  %3 = load %struct.input_handle*, %struct.input_handle** %2, align 8
  %4 = getelementptr inbounds %struct.input_handle, %struct.input_handle* %3, i32 0, i32 0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = call i32 @spin_lock_irq(i32* %6)
  %8 = load i32, i32* @EV_SW, align 4
  %9 = load %struct.input_handle*, %struct.input_handle** %2, align 8
  %10 = getelementptr inbounds %struct.input_handle, %struct.input_handle* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @test_bit(i32 %8, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %34

16:                                               ; preds = %1
  %17 = load i32, i32* @SW_RFKILL_ALL, align 4
  %18 = load %struct.input_handle*, %struct.input_handle** %2, align 8
  %19 = getelementptr inbounds %struct.input_handle, %struct.input_handle* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @test_bit(i32 %17, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %16
  %26 = load i32, i32* @SW_RFKILL_ALL, align 4
  %27 = load %struct.input_handle*, %struct.input_handle** %2, align 8
  %28 = getelementptr inbounds %struct.input_handle, %struct.input_handle* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @test_bit(i32 %26, i32 %31)
  %33 = call i32 @rfkill_schedule_evsw_rfkillall(i64 %32)
  br label %34

34:                                               ; preds = %25, %16, %1
  %35 = load %struct.input_handle*, %struct.input_handle** %2, align 8
  %36 = getelementptr inbounds %struct.input_handle, %struct.input_handle* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = call i32 @spin_unlock_irq(i32* %38)
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @rfkill_schedule_evsw_rfkillall(i64) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
