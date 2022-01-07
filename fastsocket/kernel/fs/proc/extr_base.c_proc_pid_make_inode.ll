; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_base.c_proc_pid_make_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_base.c_proc_pid_make_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32*, i32, i32, i32 }
%struct.super_block = type { i32 }
%struct.task_struct = type { i32 }
%struct.proc_inode = type { i32 }
%struct.cred = type { i32, i32 }

@CURRENT_TIME = common dso_local global i32 0, align 4
@proc_def_inode_operations = common dso_local global i32 0, align 4
@PIDTYPE_PID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @proc_pid_make_inode(%struct.super_block* %0, %struct.task_struct* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.proc_inode*, align 8
  %8 = alloca %struct.cred*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.task_struct* %1, %struct.task_struct** %5, align 8
  %9 = load %struct.super_block*, %struct.super_block** %4, align 8
  %10 = call %struct.inode* @new_inode(%struct.super_block* %9)
  store %struct.inode* %10, %struct.inode** %6, align 8
  %11 = load %struct.inode*, %struct.inode** %6, align 8
  %12 = icmp ne %struct.inode* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %59

14:                                               ; preds = %2
  %15 = load %struct.inode*, %struct.inode** %6, align 8
  %16 = call %struct.proc_inode* @PROC_I(%struct.inode* %15)
  store %struct.proc_inode* %16, %struct.proc_inode** %7, align 8
  %17 = load i32, i32* @CURRENT_TIME, align 4
  %18 = load %struct.inode*, %struct.inode** %6, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 3
  store i32 %17, i32* %19, align 8
  %20 = load %struct.inode*, %struct.inode** %6, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 4
  store i32 %17, i32* %21, align 4
  %22 = load %struct.inode*, %struct.inode** %6, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 5
  store i32 %17, i32* %23, align 8
  %24 = load %struct.inode*, %struct.inode** %6, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 2
  store i32* @proc_def_inode_operations, i32** %25, align 8
  %26 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %27 = load i32, i32* @PIDTYPE_PID, align 4
  %28 = call i32 @get_task_pid(%struct.task_struct* %26, i32 %27)
  %29 = load %struct.proc_inode*, %struct.proc_inode** %7, align 8
  %30 = getelementptr inbounds %struct.proc_inode, %struct.proc_inode* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.proc_inode*, %struct.proc_inode** %7, align 8
  %32 = getelementptr inbounds %struct.proc_inode, %struct.proc_inode* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %14
  br label %61

36:                                               ; preds = %14
  %37 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %38 = call i64 @task_dumpable(%struct.task_struct* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %36
  %41 = call i32 (...) @rcu_read_lock()
  %42 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %43 = call %struct.cred* @__task_cred(%struct.task_struct* %42)
  store %struct.cred* %43, %struct.cred** %8, align 8
  %44 = load %struct.cred*, %struct.cred** %8, align 8
  %45 = getelementptr inbounds %struct.cred, %struct.cred* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.inode*, %struct.inode** %6, align 8
  %48 = getelementptr inbounds %struct.inode, %struct.inode* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.cred*, %struct.cred** %8, align 8
  %50 = getelementptr inbounds %struct.cred, %struct.cred* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.inode*, %struct.inode** %6, align 8
  %53 = getelementptr inbounds %struct.inode, %struct.inode* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = call i32 (...) @rcu_read_unlock()
  br label %55

55:                                               ; preds = %40, %36
  %56 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %57 = load %struct.inode*, %struct.inode** %6, align 8
  %58 = call i32 @security_task_to_inode(%struct.task_struct* %56, %struct.inode* %57)
  br label %59

59:                                               ; preds = %55, %13
  %60 = load %struct.inode*, %struct.inode** %6, align 8
  store %struct.inode* %60, %struct.inode** %3, align 8
  br label %64

61:                                               ; preds = %35
  %62 = load %struct.inode*, %struct.inode** %6, align 8
  %63 = call i32 @iput(%struct.inode* %62)
  store %struct.inode* null, %struct.inode** %3, align 8
  br label %64

64:                                               ; preds = %61, %59
  %65 = load %struct.inode*, %struct.inode** %3, align 8
  ret %struct.inode* %65
}

declare dso_local %struct.inode* @new_inode(%struct.super_block*) #1

declare dso_local %struct.proc_inode* @PROC_I(%struct.inode*) #1

declare dso_local i32 @get_task_pid(%struct.task_struct*, i32) #1

declare dso_local i64 @task_dumpable(%struct.task_struct*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.cred* @__task_cred(%struct.task_struct*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @security_task_to_inode(%struct.task_struct*, %struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
