; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_pid_namespace.c_copy_pid_ns.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_pid_namespace.c_copy_pid_ns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pid_namespace = type { i32 }

@CLONE_NEWPID = common dso_local global i64 0, align 8
@current = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pid_namespace* @copy_pid_ns(i64 %0, %struct.pid_namespace* %1) #0 {
  %3 = alloca %struct.pid_namespace*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.pid_namespace*, align 8
  store i64 %0, i64* %4, align 8
  store %struct.pid_namespace* %1, %struct.pid_namespace** %5, align 8
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* @CLONE_NEWPID, align 8
  %8 = and i64 %6, %7
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load %struct.pid_namespace*, %struct.pid_namespace** %5, align 8
  %12 = call %struct.pid_namespace* @get_pid_ns(%struct.pid_namespace* %11)
  store %struct.pid_namespace* %12, %struct.pid_namespace** %3, align 8
  br label %25

13:                                               ; preds = %2
  %14 = load i32, i32* @current, align 4
  %15 = call %struct.pid_namespace* @task_active_pid_ns(i32 %14)
  %16 = load %struct.pid_namespace*, %struct.pid_namespace** %5, align 8
  %17 = icmp ne %struct.pid_namespace* %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.pid_namespace* @ERR_PTR(i32 %20)
  store %struct.pid_namespace* %21, %struct.pid_namespace** %3, align 8
  br label %25

22:                                               ; preds = %13
  %23 = load %struct.pid_namespace*, %struct.pid_namespace** %5, align 8
  %24 = call %struct.pid_namespace* @create_pid_namespace(%struct.pid_namespace* %23)
  store %struct.pid_namespace* %24, %struct.pid_namespace** %3, align 8
  br label %25

25:                                               ; preds = %22, %18, %10
  %26 = load %struct.pid_namespace*, %struct.pid_namespace** %3, align 8
  ret %struct.pid_namespace* %26
}

declare dso_local %struct.pid_namespace* @get_pid_ns(%struct.pid_namespace*) #1

declare dso_local %struct.pid_namespace* @task_active_pid_ns(i32) #1

declare dso_local %struct.pid_namespace* @ERR_PTR(i32) #1

declare dso_local %struct.pid_namespace* @create_pid_namespace(%struct.pid_namespace*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
