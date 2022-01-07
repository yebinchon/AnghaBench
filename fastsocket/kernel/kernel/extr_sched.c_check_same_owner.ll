; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sched.c_check_same_owner.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sched.c_check_same_owner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.cred = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*)* @check_same_owner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_same_owner(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  %3 = alloca %struct.cred*, align 8
  %4 = alloca %struct.cred*, align 8
  %5 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %2, align 8
  %6 = call %struct.cred* (...) @current_cred()
  store %struct.cred* %6, %struct.cred** %3, align 8
  %7 = call i32 (...) @rcu_read_lock()
  %8 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %9 = call %struct.cred* @__task_cred(%struct.task_struct* %8)
  store %struct.cred* %9, %struct.cred** %4, align 8
  %10 = load %struct.cred*, %struct.cred** %3, align 8
  %11 = getelementptr inbounds %struct.cred, %struct.cred* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.cred*, %struct.cred** %4, align 8
  %14 = getelementptr inbounds %struct.cred, %struct.cred* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %12, %15
  br i1 %16, label %25, label %17

17:                                               ; preds = %1
  %18 = load %struct.cred*, %struct.cred** %3, align 8
  %19 = getelementptr inbounds %struct.cred, %struct.cred* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.cred*, %struct.cred** %4, align 8
  %22 = getelementptr inbounds %struct.cred, %struct.cred* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %20, %23
  br label %25

25:                                               ; preds = %17, %1
  %26 = phi i1 [ true, %1 ], [ %24, %17 ]
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %5, align 4
  %28 = call i32 (...) @rcu_read_unlock()
  %29 = load i32, i32* %5, align 4
  ret i32 %29
}

declare dso_local %struct.cred* @current_cred(...) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.cred* @__task_cred(%struct.task_struct*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
