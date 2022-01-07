; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cred.c_get_task_cred.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cred.c_get_task_cred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cred = type { i32 }
%struct.task_struct = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cred* @get_task_cred(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  %3 = alloca %struct.cred*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %2, align 8
  %4 = call i32 (...) @rcu_read_lock()
  br label %5

5:                                                ; preds = %13, %1
  %6 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %7 = call %struct.cred* @__task_cred(%struct.task_struct* %6)
  store %struct.cred* %7, %struct.cred** %3, align 8
  %8 = load %struct.cred*, %struct.cred** %3, align 8
  %9 = icmp ne %struct.cred* %8, null
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @BUG_ON(i32 %11)
  br label %13

13:                                               ; preds = %5
  %14 = load %struct.cred*, %struct.cred** %3, align 8
  %15 = getelementptr inbounds %struct.cred, %struct.cred* %14, i32 0, i32 0
  %16 = call i32 @atomic_inc_not_zero(i32* %15)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  br i1 %18, label %5, label %19

19:                                               ; preds = %13
  %20 = call i32 (...) @rcu_read_unlock()
  %21 = load %struct.cred*, %struct.cred** %3, align 8
  ret %struct.cred* %21
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.cred* @__task_cred(%struct.task_struct*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @atomic_inc_not_zero(i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
