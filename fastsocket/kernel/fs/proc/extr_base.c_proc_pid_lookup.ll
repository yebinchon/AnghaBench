; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_base.c_proc_pid_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_base.c_proc_pid_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.pid_namespace* }
%struct.pid_namespace = type { i32 }
%struct.nameidata = type { i32 }
%struct.task_struct = type { i32 }

@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dentry* @proc_pid_lookup(%struct.inode* %0, %struct.dentry* %1, %struct.nameidata* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.nameidata*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.task_struct*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.pid_namespace*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store %struct.nameidata* %2, %struct.nameidata** %6, align 8
  %11 = load i32, i32* @ENOENT, align 4
  %12 = sub nsw i32 0, %11
  %13 = call %struct.dentry* @ERR_PTR(i32 %12)
  store %struct.dentry* %13, %struct.dentry** %7, align 8
  %14 = load %struct.inode*, %struct.inode** %4, align 8
  %15 = load %struct.dentry*, %struct.dentry** %5, align 8
  %16 = call %struct.dentry* @proc_base_lookup(%struct.inode* %14, %struct.dentry* %15)
  store %struct.dentry* %16, %struct.dentry** %7, align 8
  %17 = load %struct.dentry*, %struct.dentry** %7, align 8
  %18 = call i32 @IS_ERR(%struct.dentry* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %3
  %21 = load %struct.dentry*, %struct.dentry** %7, align 8
  %22 = call i32 @PTR_ERR(%struct.dentry* %21)
  %23 = load i32, i32* @ENOENT, align 4
  %24 = sub nsw i32 0, %23
  %25 = icmp ne i32 %22, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20, %3
  br label %60

27:                                               ; preds = %20
  %28 = load %struct.dentry*, %struct.dentry** %5, align 8
  %29 = call i32 @name_to_int(%struct.dentry* %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %60

33:                                               ; preds = %27
  %34 = load %struct.dentry*, %struct.dentry** %5, align 8
  %35 = getelementptr inbounds %struct.dentry, %struct.dentry* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load %struct.pid_namespace*, %struct.pid_namespace** %37, align 8
  store %struct.pid_namespace* %38, %struct.pid_namespace** %10, align 8
  %39 = call i32 (...) @rcu_read_lock()
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.pid_namespace*, %struct.pid_namespace** %10, align 8
  %42 = call %struct.task_struct* @find_task_by_pid_ns(i32 %40, %struct.pid_namespace* %41)
  store %struct.task_struct* %42, %struct.task_struct** %8, align 8
  %43 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %44 = icmp ne %struct.task_struct* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %33
  %46 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %47 = call i32 @get_task_struct(%struct.task_struct* %46)
  br label %48

48:                                               ; preds = %45, %33
  %49 = call i32 (...) @rcu_read_unlock()
  %50 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %51 = icmp ne %struct.task_struct* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %48
  br label %60

53:                                               ; preds = %48
  %54 = load %struct.inode*, %struct.inode** %4, align 8
  %55 = load %struct.dentry*, %struct.dentry** %5, align 8
  %56 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %57 = call %struct.dentry* @proc_pid_instantiate(%struct.inode* %54, %struct.dentry* %55, %struct.task_struct* %56, i32* null)
  store %struct.dentry* %57, %struct.dentry** %7, align 8
  %58 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %59 = call i32 @put_task_struct(%struct.task_struct* %58)
  br label %60

60:                                               ; preds = %53, %52, %32, %26
  %61 = load %struct.dentry*, %struct.dentry** %7, align 8
  ret %struct.dentry* %61
}

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local %struct.dentry* @proc_base_lookup(%struct.inode*, %struct.dentry*) #1

declare dso_local i32 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @PTR_ERR(%struct.dentry*) #1

declare dso_local i32 @name_to_int(%struct.dentry*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.task_struct* @find_task_by_pid_ns(i32, %struct.pid_namespace*) #1

declare dso_local i32 @get_task_struct(%struct.task_struct*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local %struct.dentry* @proc_pid_instantiate(%struct.inode*, %struct.dentry*, %struct.task_struct*, i32*) #1

declare dso_local i32 @put_task_struct(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
