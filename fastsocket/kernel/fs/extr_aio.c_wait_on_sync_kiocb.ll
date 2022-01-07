; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_aio.c_wait_on_sync_kiocb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_aio.c_wait_on_sync_kiocb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i32, i64 }

@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wait_on_sync_kiocb(%struct.kiocb* %0) #0 {
  %2 = alloca %struct.kiocb*, align 8
  store %struct.kiocb* %0, %struct.kiocb** %2, align 8
  br label %3

3:                                                ; preds = %16, %1
  %4 = load %struct.kiocb*, %struct.kiocb** %2, align 8
  %5 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %18

8:                                                ; preds = %3
  %9 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %10 = call i32 @set_current_state(i32 %9)
  %11 = load %struct.kiocb*, %struct.kiocb** %2, align 8
  %12 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %8
  br label %18

16:                                               ; preds = %8
  %17 = call i32 (...) @io_schedule()
  br label %3

18:                                               ; preds = %15, %3
  %19 = load i32, i32* @TASK_RUNNING, align 4
  %20 = call i32 @__set_current_state(i32 %19)
  %21 = load %struct.kiocb*, %struct.kiocb** %2, align 8
  %22 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  ret i32 %23
}

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @io_schedule(...) #1

declare dso_local i32 @__set_current_state(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
