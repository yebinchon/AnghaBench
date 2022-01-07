; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_pid.c_find_ge_pid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_pid.c_find_ge_pid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pid = type { i32 }
%struct.pid_namespace = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pid* @find_ge_pid(i32 %0, %struct.pid_namespace* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pid_namespace*, align 8
  %5 = alloca %struct.pid*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.pid_namespace* %1, %struct.pid_namespace** %4, align 8
  br label %6

6:                                                ; preds = %17, %2
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.pid_namespace*, %struct.pid_namespace** %4, align 8
  %9 = call %struct.pid* @find_pid_ns(i32 %7, %struct.pid_namespace* %8)
  store %struct.pid* %9, %struct.pid** %5, align 8
  %10 = load %struct.pid*, %struct.pid** %5, align 8
  %11 = icmp ne %struct.pid* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %6
  br label %20

13:                                               ; preds = %6
  %14 = load %struct.pid_namespace*, %struct.pid_namespace** %4, align 8
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @next_pidmap(%struct.pid_namespace* %14, i32 %15)
  store i32 %16, i32* %3, align 4
  br label %17

17:                                               ; preds = %13
  %18 = load i32, i32* %3, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %6, label %20

20:                                               ; preds = %17, %12
  %21 = load %struct.pid*, %struct.pid** %5, align 8
  ret %struct.pid* %21
}

declare dso_local %struct.pid* @find_pid_ns(i32, %struct.pid_namespace*) #1

declare dso_local i32 @next_pidmap(%struct.pid_namespace*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
