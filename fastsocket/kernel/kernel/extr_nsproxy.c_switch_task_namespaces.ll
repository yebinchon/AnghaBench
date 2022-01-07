; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_nsproxy.c_switch_task_namespaces.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_nsproxy.c_switch_task_namespaces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.nsproxy* }
%struct.nsproxy = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @switch_task_namespaces(%struct.task_struct* %0, %struct.nsproxy* %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca %struct.nsproxy*, align 8
  %5 = alloca %struct.nsproxy*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store %struct.nsproxy* %1, %struct.nsproxy** %4, align 8
  %6 = call i32 (...) @might_sleep()
  %7 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %8 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %7, i32 0, i32 0
  %9 = load %struct.nsproxy*, %struct.nsproxy** %8, align 8
  store %struct.nsproxy* %9, %struct.nsproxy** %5, align 8
  %10 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %11 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %10, i32 0, i32 0
  %12 = load %struct.nsproxy*, %struct.nsproxy** %11, align 8
  %13 = load %struct.nsproxy*, %struct.nsproxy** %4, align 8
  %14 = call i32 @rcu_assign_pointer(%struct.nsproxy* %12, %struct.nsproxy* %13)
  %15 = load %struct.nsproxy*, %struct.nsproxy** %5, align 8
  %16 = icmp ne %struct.nsproxy* %15, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %2
  %18 = load %struct.nsproxy*, %struct.nsproxy** %5, align 8
  %19 = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %18, i32 0, i32 0
  %20 = call i64 @atomic_dec_and_test(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = call i32 (...) @synchronize_rcu()
  %24 = load %struct.nsproxy*, %struct.nsproxy** %5, align 8
  %25 = call i32 @free_nsproxy(%struct.nsproxy* %24)
  br label %26

26:                                               ; preds = %22, %17, %2
  ret void
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @rcu_assign_pointer(%struct.nsproxy*, %struct.nsproxy*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @free_nsproxy(%struct.nsproxy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
