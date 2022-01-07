; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_proc_net.c_get_proc_task_net.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_proc_net.c_get_proc_task_net.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.inode = type { i32 }
%struct.task_struct = type { i32 }
%struct.nsproxy = type { i32 }

@PIDTYPE_PID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net* (%struct.inode*)* @get_proc_task_net to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net* @get_proc_task_net(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca %struct.nsproxy*, align 8
  %5 = alloca %struct.net*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  store %struct.net* null, %struct.net** %5, align 8
  %6 = call i32 (...) @rcu_read_lock()
  %7 = load %struct.inode*, %struct.inode** %2, align 8
  %8 = call i32 @proc_pid(%struct.inode* %7)
  %9 = load i32, i32* @PIDTYPE_PID, align 4
  %10 = call %struct.task_struct* @pid_task(i32 %8, i32 %9)
  store %struct.task_struct* %10, %struct.task_struct** %3, align 8
  %11 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %12 = icmp ne %struct.task_struct* %11, null
  br i1 %12, label %13, label %24

13:                                               ; preds = %1
  %14 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %15 = call %struct.nsproxy* @task_nsproxy(%struct.task_struct* %14)
  store %struct.nsproxy* %15, %struct.nsproxy** %4, align 8
  %16 = load %struct.nsproxy*, %struct.nsproxy** %4, align 8
  %17 = icmp ne %struct.nsproxy* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load %struct.nsproxy*, %struct.nsproxy** %4, align 8
  %20 = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.net* @get_net(i32 %21)
  store %struct.net* %22, %struct.net** %5, align 8
  br label %23

23:                                               ; preds = %18, %13
  br label %24

24:                                               ; preds = %23, %1
  %25 = call i32 (...) @rcu_read_unlock()
  %26 = load %struct.net*, %struct.net** %5, align 8
  ret %struct.net* %26
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.task_struct* @pid_task(i32, i32) #1

declare dso_local i32 @proc_pid(%struct.inode*) #1

declare dso_local %struct.nsproxy* @task_nsproxy(%struct.task_struct*) #1

declare dso_local %struct.net* @get_net(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
