; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_pid.c_attach_pid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_pid.c_attach_pid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.pid_link* }
%struct.pid_link = type { i32, %struct.pid* }
%struct.pid = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @attach_pid(%struct.task_struct* %0, i32 %1, %struct.pid* %2) #0 {
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pid*, align 8
  %7 = alloca %struct.pid_link*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.pid* %2, %struct.pid** %6, align 8
  %8 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %9 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %8, i32 0, i32 0
  %10 = load %struct.pid_link*, %struct.pid_link** %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds %struct.pid_link, %struct.pid_link* %10, i64 %12
  store %struct.pid_link* %13, %struct.pid_link** %7, align 8
  %14 = load %struct.pid*, %struct.pid** %6, align 8
  %15 = load %struct.pid_link*, %struct.pid_link** %7, align 8
  %16 = getelementptr inbounds %struct.pid_link, %struct.pid_link* %15, i32 0, i32 1
  store %struct.pid* %14, %struct.pid** %16, align 8
  %17 = load %struct.pid_link*, %struct.pid_link** %7, align 8
  %18 = getelementptr inbounds %struct.pid_link, %struct.pid_link* %17, i32 0, i32 0
  %19 = load %struct.pid*, %struct.pid** %6, align 8
  %20 = getelementptr inbounds %struct.pid, %struct.pid* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = call i32 @hlist_add_head_rcu(i32* %18, i32* %24)
  ret void
}

declare dso_local i32 @hlist_add_head_rcu(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
