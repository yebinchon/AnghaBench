; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_pid.c___change_pid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_pid.c___change_pid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.pid_link* }
%struct.pid_link = type { %struct.pid*, i32 }
%struct.pid = type { i32* }

@PIDTYPE_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.task_struct*, i32, %struct.pid*)* @__change_pid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__change_pid(%struct.task_struct* %0, i32 %1, %struct.pid* %2) #0 {
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pid*, align 8
  %7 = alloca %struct.pid_link*, align 8
  %8 = alloca %struct.pid*, align 8
  %9 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.pid* %2, %struct.pid** %6, align 8
  %10 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %11 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %10, i32 0, i32 0
  %12 = load %struct.pid_link*, %struct.pid_link** %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.pid_link, %struct.pid_link* %12, i64 %14
  store %struct.pid_link* %15, %struct.pid_link** %7, align 8
  %16 = load %struct.pid_link*, %struct.pid_link** %7, align 8
  %17 = getelementptr inbounds %struct.pid_link, %struct.pid_link* %16, i32 0, i32 0
  %18 = load %struct.pid*, %struct.pid** %17, align 8
  store %struct.pid* %18, %struct.pid** %8, align 8
  %19 = load %struct.pid_link*, %struct.pid_link** %7, align 8
  %20 = getelementptr inbounds %struct.pid_link, %struct.pid_link* %19, i32 0, i32 1
  %21 = call i32 @hlist_del_rcu(i32* %20)
  %22 = load %struct.pid*, %struct.pid** %6, align 8
  %23 = load %struct.pid_link*, %struct.pid_link** %7, align 8
  %24 = getelementptr inbounds %struct.pid_link, %struct.pid_link* %23, i32 0, i32 0
  store %struct.pid* %22, %struct.pid** %24, align 8
  %25 = load i32, i32* @PIDTYPE_MAX, align 4
  store i32 %25, i32* %9, align 4
  br label %26

26:                                               ; preds = %40, %3
  %27 = load i32, i32* %9, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %9, align 4
  %29 = icmp sge i32 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %26
  %31 = load %struct.pid*, %struct.pid** %8, align 8
  %32 = getelementptr inbounds %struct.pid, %struct.pid* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = call i32 @hlist_empty(i32* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %30
  br label %44

40:                                               ; preds = %30
  br label %26

41:                                               ; preds = %26
  %42 = load %struct.pid*, %struct.pid** %8, align 8
  %43 = call i32 @free_pid(%struct.pid* %42)
  br label %44

44:                                               ; preds = %41, %39
  ret void
}

declare dso_local i32 @hlist_del_rcu(i32*) #1

declare dso_local i32 @hlist_empty(i32*) #1

declare dso_local i32 @free_pid(%struct.pid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
