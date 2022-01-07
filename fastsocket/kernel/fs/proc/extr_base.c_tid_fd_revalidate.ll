; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_base.c_tid_fd_revalidate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_base.c_tid_fd_revalidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.inode* }
%struct.inode = type { i32, i64, i64 }
%struct.nameidata = type { i32 }
%struct.task_struct = type { i32 }
%struct.files_struct = type { i32 }
%struct.cred = type { i64, i64 }

@S_ISUID = common dso_local global i32 0, align 4
@S_ISGID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.nameidata*)* @tid_fd_revalidate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tid_fd_revalidate(%struct.dentry* %0, %struct.nameidata* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.nameidata*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.task_struct*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.files_struct*, align 8
  %10 = alloca %struct.cred*, align 8
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.nameidata* %1, %struct.nameidata** %5, align 8
  %11 = load %struct.dentry*, %struct.dentry** %4, align 8
  %12 = getelementptr inbounds %struct.dentry, %struct.dentry* %11, i32 0, i32 0
  %13 = load %struct.inode*, %struct.inode** %12, align 8
  store %struct.inode* %13, %struct.inode** %6, align 8
  %14 = load %struct.inode*, %struct.inode** %6, align 8
  %15 = call %struct.task_struct* @get_proc_task(%struct.inode* %14)
  store %struct.task_struct* %15, %struct.task_struct** %7, align 8
  %16 = load %struct.inode*, %struct.inode** %6, align 8
  %17 = call i32 @proc_fd(%struct.inode* %16)
  store i32 %17, i32* %8, align 4
  %18 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %19 = icmp ne %struct.task_struct* %18, null
  br i1 %19, label %20, label %79

20:                                               ; preds = %2
  %21 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %22 = call %struct.files_struct* @get_files_struct(%struct.task_struct* %21)
  store %struct.files_struct* %22, %struct.files_struct** %9, align 8
  %23 = load %struct.files_struct*, %struct.files_struct** %9, align 8
  %24 = icmp ne %struct.files_struct* %23, null
  br i1 %24, label %25, label %76

25:                                               ; preds = %20
  %26 = call i32 (...) @rcu_read_lock()
  %27 = load %struct.files_struct*, %struct.files_struct** %9, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i64 @fcheck_files(%struct.files_struct* %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %72

31:                                               ; preds = %25
  %32 = call i32 (...) @rcu_read_unlock()
  %33 = load %struct.files_struct*, %struct.files_struct** %9, align 8
  %34 = call i32 @put_files_struct(%struct.files_struct* %33)
  %35 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %36 = call i64 @task_dumpable(%struct.task_struct* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %53

38:                                               ; preds = %31
  %39 = call i32 (...) @rcu_read_lock()
  %40 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %41 = call %struct.cred* @__task_cred(%struct.task_struct* %40)
  store %struct.cred* %41, %struct.cred** %10, align 8
  %42 = load %struct.cred*, %struct.cred** %10, align 8
  %43 = getelementptr inbounds %struct.cred, %struct.cred* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.inode*, %struct.inode** %6, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 2
  store i64 %44, i64* %46, align 8
  %47 = load %struct.cred*, %struct.cred** %10, align 8
  %48 = getelementptr inbounds %struct.cred, %struct.cred* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.inode*, %struct.inode** %6, align 8
  %51 = getelementptr inbounds %struct.inode, %struct.inode* %50, i32 0, i32 1
  store i64 %49, i64* %51, align 8
  %52 = call i32 (...) @rcu_read_unlock()
  br label %58

53:                                               ; preds = %31
  %54 = load %struct.inode*, %struct.inode** %6, align 8
  %55 = getelementptr inbounds %struct.inode, %struct.inode* %54, i32 0, i32 2
  store i64 0, i64* %55, align 8
  %56 = load %struct.inode*, %struct.inode** %6, align 8
  %57 = getelementptr inbounds %struct.inode, %struct.inode* %56, i32 0, i32 1
  store i64 0, i64* %57, align 8
  br label %58

58:                                               ; preds = %53, %38
  %59 = load i32, i32* @S_ISUID, align 4
  %60 = load i32, i32* @S_ISGID, align 4
  %61 = or i32 %59, %60
  %62 = xor i32 %61, -1
  %63 = load %struct.inode*, %struct.inode** %6, align 8
  %64 = getelementptr inbounds %struct.inode, %struct.inode* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = and i32 %65, %62
  store i32 %66, i32* %64, align 8
  %67 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %68 = load %struct.inode*, %struct.inode** %6, align 8
  %69 = call i32 @security_task_to_inode(%struct.task_struct* %67, %struct.inode* %68)
  %70 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %71 = call i32 @put_task_struct(%struct.task_struct* %70)
  store i32 1, i32* %3, align 4
  br label %82

72:                                               ; preds = %25
  %73 = call i32 (...) @rcu_read_unlock()
  %74 = load %struct.files_struct*, %struct.files_struct** %9, align 8
  %75 = call i32 @put_files_struct(%struct.files_struct* %74)
  br label %76

76:                                               ; preds = %72, %20
  %77 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %78 = call i32 @put_task_struct(%struct.task_struct* %77)
  br label %79

79:                                               ; preds = %76, %2
  %80 = load %struct.dentry*, %struct.dentry** %4, align 8
  %81 = call i32 @d_drop(%struct.dentry* %80)
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %79, %58
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local %struct.task_struct* @get_proc_task(%struct.inode*) #1

declare dso_local i32 @proc_fd(%struct.inode*) #1

declare dso_local %struct.files_struct* @get_files_struct(%struct.task_struct*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i64 @fcheck_files(%struct.files_struct*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @put_files_struct(%struct.files_struct*) #1

declare dso_local i64 @task_dumpable(%struct.task_struct*) #1

declare dso_local %struct.cred* @__task_cred(%struct.task_struct*) #1

declare dso_local i32 @security_task_to_inode(%struct.task_struct*, %struct.inode*) #1

declare dso_local i32 @put_task_struct(%struct.task_struct*) #1

declare dso_local i32 @d_drop(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
