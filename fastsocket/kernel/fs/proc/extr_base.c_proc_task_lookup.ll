; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_base.c_proc_task_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_base.c_proc_task_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.pid_namespace* }
%struct.pid_namespace = type { i32 }
%struct.nameidata = type { i32 }
%struct.task_struct = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.inode*, %struct.dentry*, %struct.nameidata*)* @proc_task_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @proc_task_lookup(%struct.inode* %0, %struct.dentry* %1, %struct.nameidata* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.nameidata*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.task_struct*, align 8
  %9 = alloca %struct.task_struct*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.pid_namespace*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store %struct.nameidata* %2, %struct.nameidata** %6, align 8
  %12 = load i32, i32* @ENOENT, align 4
  %13 = sub nsw i32 0, %12
  %14 = call %struct.dentry* @ERR_PTR(i32 %13)
  store %struct.dentry* %14, %struct.dentry** %7, align 8
  %15 = load %struct.inode*, %struct.inode** %4, align 8
  %16 = call %struct.task_struct* @get_proc_task(%struct.inode* %15)
  store %struct.task_struct* %16, %struct.task_struct** %9, align 8
  %17 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %18 = icmp ne %struct.task_struct* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  br label %63

20:                                               ; preds = %3
  %21 = load %struct.dentry*, %struct.dentry** %5, align 8
  %22 = call i32 @name_to_int(%struct.dentry* %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %60

26:                                               ; preds = %20
  %27 = load %struct.dentry*, %struct.dentry** %5, align 8
  %28 = getelementptr inbounds %struct.dentry, %struct.dentry* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load %struct.pid_namespace*, %struct.pid_namespace** %30, align 8
  store %struct.pid_namespace* %31, %struct.pid_namespace** %11, align 8
  %32 = call i32 (...) @rcu_read_lock()
  %33 = load i32, i32* %10, align 4
  %34 = load %struct.pid_namespace*, %struct.pid_namespace** %11, align 8
  %35 = call %struct.task_struct* @find_task_by_pid_ns(i32 %33, %struct.pid_namespace* %34)
  store %struct.task_struct* %35, %struct.task_struct** %8, align 8
  %36 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %37 = icmp ne %struct.task_struct* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %26
  %39 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %40 = call i32 @get_task_struct(%struct.task_struct* %39)
  br label %41

41:                                               ; preds = %38, %26
  %42 = call i32 (...) @rcu_read_unlock()
  %43 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %44 = icmp ne %struct.task_struct* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  br label %60

46:                                               ; preds = %41
  %47 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %48 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %49 = call i32 @same_thread_group(%struct.task_struct* %47, %struct.task_struct* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %46
  br label %57

52:                                               ; preds = %46
  %53 = load %struct.inode*, %struct.inode** %4, align 8
  %54 = load %struct.dentry*, %struct.dentry** %5, align 8
  %55 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %56 = call %struct.dentry* @proc_task_instantiate(%struct.inode* %53, %struct.dentry* %54, %struct.task_struct* %55, i32* null)
  store %struct.dentry* %56, %struct.dentry** %7, align 8
  br label %57

57:                                               ; preds = %52, %51
  %58 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %59 = call i32 @put_task_struct(%struct.task_struct* %58)
  br label %60

60:                                               ; preds = %57, %45, %25
  %61 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %62 = call i32 @put_task_struct(%struct.task_struct* %61)
  br label %63

63:                                               ; preds = %60, %19
  %64 = load %struct.dentry*, %struct.dentry** %7, align 8
  ret %struct.dentry* %64
}

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local %struct.task_struct* @get_proc_task(%struct.inode*) #1

declare dso_local i32 @name_to_int(%struct.dentry*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.task_struct* @find_task_by_pid_ns(i32, %struct.pid_namespace*) #1

declare dso_local i32 @get_task_struct(%struct.task_struct*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @same_thread_group(%struct.task_struct*, %struct.task_struct*) #1

declare dso_local %struct.dentry* @proc_task_instantiate(%struct.inode*, %struct.dentry*, %struct.task_struct*, i32*) #1

declare dso_local i32 @put_task_struct(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
