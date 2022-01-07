; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_softirq.c_tasklet_kill.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_softirq.c_tasklet_kill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tasklet_struct = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"Attempt to kill tasklet from interrupt\0A\00", align 1
@TASKLET_STATE_SCHED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tasklet_kill(%struct.tasklet_struct* %0) #0 {
  %2 = alloca %struct.tasklet_struct*, align 8
  store %struct.tasklet_struct* %0, %struct.tasklet_struct** %2, align 8
  %3 = call i64 (...) @in_interrupt()
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = call i32 @printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %7

7:                                                ; preds = %5, %1
  br label %8

8:                                                ; preds = %23, %7
  %9 = load i32, i32* @TASKLET_STATE_SCHED, align 4
  %10 = load %struct.tasklet_struct*, %struct.tasklet_struct** %2, align 8
  %11 = getelementptr inbounds %struct.tasklet_struct, %struct.tasklet_struct* %10, i32 0, i32 0
  %12 = call i64 @test_and_set_bit(i32 %9, i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %8
  br label %15

15:                                               ; preds = %17, %14
  %16 = call i32 (...) @yield()
  br label %17

17:                                               ; preds = %15
  %18 = load i32, i32* @TASKLET_STATE_SCHED, align 4
  %19 = load %struct.tasklet_struct*, %struct.tasklet_struct** %2, align 8
  %20 = getelementptr inbounds %struct.tasklet_struct, %struct.tasklet_struct* %19, i32 0, i32 0
  %21 = call i64 @test_bit(i32 %18, i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %15, label %23

23:                                               ; preds = %17
  br label %8

24:                                               ; preds = %8
  %25 = load %struct.tasklet_struct*, %struct.tasklet_struct** %2, align 8
  %26 = call i32 @tasklet_unlock_wait(%struct.tasklet_struct* %25)
  %27 = load i32, i32* @TASKLET_STATE_SCHED, align 4
  %28 = load %struct.tasklet_struct*, %struct.tasklet_struct** %2, align 8
  %29 = getelementptr inbounds %struct.tasklet_struct, %struct.tasklet_struct* %28, i32 0, i32 0
  %30 = call i32 @clear_bit(i32 %27, i32* %29)
  ret void
}

declare dso_local i64 @in_interrupt(...) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @yield(...) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @tasklet_unlock_wait(%struct.tasklet_struct*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
