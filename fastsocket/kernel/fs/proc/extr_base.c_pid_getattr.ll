; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_base.c_pid_getattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_base.c_pid_getattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfsmount = type { i32 }
%struct.dentry = type { %struct.TYPE_2__*, %struct.inode* }
%struct.TYPE_2__ = type { %struct.pid_namespace* }
%struct.pid_namespace = type { i32 }
%struct.inode = type { i32 }
%struct.kstat = type { i32, i32 }
%struct.task_struct = type { i32 }
%struct.cred = type { i32, i32 }

@PIDTYPE_PID = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@S_IRUGO = common dso_local global i32 0, align 4
@S_IXUGO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pid_getattr(%struct.vfsmount* %0, %struct.dentry* %1, %struct.kstat* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vfsmount*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.kstat*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.task_struct*, align 8
  %10 = alloca %struct.cred*, align 8
  %11 = alloca %struct.pid_namespace*, align 8
  store %struct.vfsmount* %0, %struct.vfsmount** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store %struct.kstat* %2, %struct.kstat** %7, align 8
  %12 = load %struct.dentry*, %struct.dentry** %6, align 8
  %13 = getelementptr inbounds %struct.dentry, %struct.dentry* %12, i32 0, i32 1
  %14 = load %struct.inode*, %struct.inode** %13, align 8
  store %struct.inode* %14, %struct.inode** %8, align 8
  %15 = load %struct.dentry*, %struct.dentry** %6, align 8
  %16 = getelementptr inbounds %struct.dentry, %struct.dentry* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.pid_namespace*, %struct.pid_namespace** %18, align 8
  store %struct.pid_namespace* %19, %struct.pid_namespace** %11, align 8
  %20 = load %struct.inode*, %struct.inode** %8, align 8
  %21 = load %struct.kstat*, %struct.kstat** %7, align 8
  %22 = call i32 @generic_fillattr(%struct.inode* %20, %struct.kstat* %21)
  %23 = call i32 (...) @rcu_read_lock()
  %24 = load %struct.kstat*, %struct.kstat** %7, align 8
  %25 = getelementptr inbounds %struct.kstat, %struct.kstat* %24, i32 0, i32 1
  store i32 0, i32* %25, align 4
  %26 = load %struct.kstat*, %struct.kstat** %7, align 8
  %27 = getelementptr inbounds %struct.kstat, %struct.kstat* %26, i32 0, i32 0
  store i32 0, i32* %27, align 4
  %28 = load %struct.inode*, %struct.inode** %8, align 8
  %29 = call i32 @proc_pid(%struct.inode* %28)
  %30 = load i32, i32* @PIDTYPE_PID, align 4
  %31 = call %struct.task_struct* @pid_task(i32 %29, i32 %30)
  store %struct.task_struct* %31, %struct.task_struct** %9, align 8
  %32 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %33 = icmp ne %struct.task_struct* %32, null
  br i1 %33, label %34, label %71

34:                                               ; preds = %3
  %35 = load %struct.pid_namespace*, %struct.pid_namespace** %11, align 8
  %36 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %37 = call i32 @has_pid_permissions(%struct.pid_namespace* %35, %struct.task_struct* %36, i32 2)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %34
  %40 = call i32 (...) @rcu_read_unlock()
  %41 = load i32, i32* @ENOENT, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %73

43:                                               ; preds = %34
  %44 = load %struct.inode*, %struct.inode** %8, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @S_IFDIR, align 4
  %48 = load i32, i32* @S_IRUGO, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @S_IXUGO, align 4
  %51 = or i32 %49, %50
  %52 = icmp eq i32 %46, %51
  br i1 %52, label %57, label %53

53:                                               ; preds = %43
  %54 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %55 = call i64 @task_dumpable(%struct.task_struct* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %53, %43
  %58 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %59 = call %struct.cred* @__task_cred(%struct.task_struct* %58)
  store %struct.cred* %59, %struct.cred** %10, align 8
  %60 = load %struct.cred*, %struct.cred** %10, align 8
  %61 = getelementptr inbounds %struct.cred, %struct.cred* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.kstat*, %struct.kstat** %7, align 8
  %64 = getelementptr inbounds %struct.kstat, %struct.kstat* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load %struct.cred*, %struct.cred** %10, align 8
  %66 = getelementptr inbounds %struct.cred, %struct.cred* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.kstat*, %struct.kstat** %7, align 8
  %69 = getelementptr inbounds %struct.kstat, %struct.kstat* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  br label %70

70:                                               ; preds = %57, %53
  br label %71

71:                                               ; preds = %70, %3
  %72 = call i32 (...) @rcu_read_unlock()
  store i32 0, i32* %4, align 4
  br label %73

73:                                               ; preds = %71, %39
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i32 @generic_fillattr(%struct.inode*, %struct.kstat*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.task_struct* @pid_task(i32, i32) #1

declare dso_local i32 @proc_pid(%struct.inode*) #1

declare dso_local i32 @has_pid_permissions(%struct.pid_namespace*, %struct.task_struct*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i64 @task_dumpable(%struct.task_struct*) #1

declare dso_local %struct.cred* @__task_cred(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
