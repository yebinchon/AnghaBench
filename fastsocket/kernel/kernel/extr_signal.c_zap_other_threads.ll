; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_signal.c_zap_other_threads.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_signal.c_zap_other_threads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_4__, i64, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@SIGKILL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zap_other_threads(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  %3 = alloca %struct.task_struct*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %2, align 8
  %4 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %5 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %4, i32 0, i32 2
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  store i64 0, i64* %7, align 8
  %8 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %9 = call %struct.task_struct* @next_thread(%struct.task_struct* %8)
  store %struct.task_struct* %9, %struct.task_struct** %3, align 8
  br label %10

10:                                               ; preds = %28, %1
  %11 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %12 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %13 = icmp ne %struct.task_struct* %11, %12
  br i1 %13, label %14, label %31

14:                                               ; preds = %10
  %15 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %16 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %28

20:                                               ; preds = %14
  %21 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %22 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* @SIGKILL, align 4
  %25 = call i32 @sigaddset(i32* %23, i32 %24)
  %26 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %27 = call i32 @signal_wake_up(%struct.task_struct* %26, i32 1)
  br label %28

28:                                               ; preds = %20, %19
  %29 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %30 = call %struct.task_struct* @next_thread(%struct.task_struct* %29)
  store %struct.task_struct* %30, %struct.task_struct** %3, align 8
  br label %10

31:                                               ; preds = %10
  ret void
}

declare dso_local %struct.task_struct* @next_thread(%struct.task_struct*) #1

declare dso_local i32 @sigaddset(i32*, i32) #1

declare dso_local i32 @signal_wake_up(%struct.task_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
