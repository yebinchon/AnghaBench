; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_base.c_pid_revalidate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_base.c_pid_revalidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.inode* }
%struct.inode = type { i32, i64, i64 }
%struct.nameidata = type { i32 }
%struct.task_struct = type { i32 }
%struct.cred = type { i64, i64 }

@S_IFDIR = common dso_local global i32 0, align 4
@S_IRUGO = common dso_local global i32 0, align 4
@S_IXUGO = common dso_local global i32 0, align 4
@S_ISUID = common dso_local global i32 0, align 4
@S_ISGID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pid_revalidate(%struct.dentry* %0, %struct.nameidata* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.nameidata*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.task_struct*, align 8
  %8 = alloca %struct.cred*, align 8
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.nameidata* %1, %struct.nameidata** %5, align 8
  %9 = load %struct.dentry*, %struct.dentry** %4, align 8
  %10 = getelementptr inbounds %struct.dentry, %struct.dentry* %9, i32 0, i32 0
  %11 = load %struct.inode*, %struct.inode** %10, align 8
  store %struct.inode* %11, %struct.inode** %6, align 8
  %12 = load %struct.inode*, %struct.inode** %6, align 8
  %13 = call %struct.task_struct* @get_proc_task(%struct.inode* %12)
  store %struct.task_struct* %13, %struct.task_struct** %7, align 8
  %14 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %15 = icmp ne %struct.task_struct* %14, null
  br i1 %15, label %16, label %64

16:                                               ; preds = %2
  %17 = load %struct.inode*, %struct.inode** %6, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @S_IFDIR, align 4
  %21 = load i32, i32* @S_IRUGO, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @S_IXUGO, align 4
  %24 = or i32 %22, %23
  %25 = icmp eq i32 %19, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %16
  %27 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %28 = call i64 @task_dumpable(%struct.task_struct* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %45

30:                                               ; preds = %26, %16
  %31 = call i32 (...) @rcu_read_lock()
  %32 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %33 = call %struct.cred* @__task_cred(%struct.task_struct* %32)
  store %struct.cred* %33, %struct.cred** %8, align 8
  %34 = load %struct.cred*, %struct.cred** %8, align 8
  %35 = getelementptr inbounds %struct.cred, %struct.cred* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.inode*, %struct.inode** %6, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 2
  store i64 %36, i64* %38, align 8
  %39 = load %struct.cred*, %struct.cred** %8, align 8
  %40 = getelementptr inbounds %struct.cred, %struct.cred* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.inode*, %struct.inode** %6, align 8
  %43 = getelementptr inbounds %struct.inode, %struct.inode* %42, i32 0, i32 1
  store i64 %41, i64* %43, align 8
  %44 = call i32 (...) @rcu_read_unlock()
  br label %50

45:                                               ; preds = %26
  %46 = load %struct.inode*, %struct.inode** %6, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 2
  store i64 0, i64* %47, align 8
  %48 = load %struct.inode*, %struct.inode** %6, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 1
  store i64 0, i64* %49, align 8
  br label %50

50:                                               ; preds = %45, %30
  %51 = load i32, i32* @S_ISUID, align 4
  %52 = load i32, i32* @S_ISGID, align 4
  %53 = or i32 %51, %52
  %54 = xor i32 %53, -1
  %55 = load %struct.inode*, %struct.inode** %6, align 8
  %56 = getelementptr inbounds %struct.inode, %struct.inode* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = and i32 %57, %54
  store i32 %58, i32* %56, align 8
  %59 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %60 = load %struct.inode*, %struct.inode** %6, align 8
  %61 = call i32 @security_task_to_inode(%struct.task_struct* %59, %struct.inode* %60)
  %62 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %63 = call i32 @put_task_struct(%struct.task_struct* %62)
  store i32 1, i32* %3, align 4
  br label %67

64:                                               ; preds = %2
  %65 = load %struct.dentry*, %struct.dentry** %4, align 8
  %66 = call i32 @d_drop(%struct.dentry* %65)
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %64, %50
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local %struct.task_struct* @get_proc_task(%struct.inode*) #1

declare dso_local i64 @task_dumpable(%struct.task_struct*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.cred* @__task_cred(%struct.task_struct*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @security_task_to_inode(%struct.task_struct*, %struct.inode*) #1

declare dso_local i32 @put_task_struct(%struct.task_struct*) #1

declare dso_local i32 @d_drop(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
