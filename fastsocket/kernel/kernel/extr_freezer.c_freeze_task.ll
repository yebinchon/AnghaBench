; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_freezer.c_freeze_task.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_freezer.c_freeze_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }

@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @freeze_task(%struct.task_struct* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %7 = call i32 @freezing(%struct.task_struct* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %27, label %9

9:                                                ; preds = %2
  %10 = call i32 (...) @rmb()
  %11 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %12 = call i64 @frozen(%struct.task_struct* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %49

15:                                               ; preds = %9
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %20 = call i64 @should_send_signal(%struct.task_struct* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18, %15
  %23 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %24 = call i32 @set_freeze_flag(%struct.task_struct* %23)
  br label %26

25:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %49

26:                                               ; preds = %22
  br label %27

27:                                               ; preds = %26, %2
  %28 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %29 = call i64 @should_send_signal(%struct.task_struct* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %27
  %32 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %33 = call i32 @signal_pending(%struct.task_struct* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %37 = call i32 @fake_signal_wake_up(%struct.task_struct* %36)
  br label %38

38:                                               ; preds = %35, %31
  br label %48

39:                                               ; preds = %27
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %49

43:                                               ; preds = %39
  %44 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %45 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %46 = call i32 @wake_up_state(%struct.task_struct* %44, i32 %45)
  br label %47

47:                                               ; preds = %43
  br label %48

48:                                               ; preds = %47, %38
  store i32 1, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %42, %25, %14
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @freezing(%struct.task_struct*) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i64 @frozen(%struct.task_struct*) #1

declare dso_local i64 @should_send_signal(%struct.task_struct*) #1

declare dso_local i32 @set_freeze_flag(%struct.task_struct*) #1

declare dso_local i32 @signal_pending(%struct.task_struct*) #1

declare dso_local i32 @fake_signal_wake_up(%struct.task_struct*) #1

declare dso_local i32 @wake_up_state(%struct.task_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
