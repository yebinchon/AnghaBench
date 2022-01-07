; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_base.c_proc_fdinfo_instantiate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_base.c_proc_fdinfo_instantiate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32*, i32 }
%struct.dentry = type { i32* }
%struct.task_struct = type { i32 }
%struct.proc_inode = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@proc_fdinfo_file_operations = common dso_local global i32 0, align 4
@tid_fd_dentry_operations = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.inode*, %struct.dentry*, %struct.task_struct*, i8*)* @proc_fdinfo_instantiate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @proc_fdinfo_instantiate(%struct.inode* %0, %struct.dentry* %1, %struct.task_struct* %2, i8* %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.task_struct*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.proc_inode*, align 8
  %12 = alloca %struct.dentry*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store %struct.task_struct* %2, %struct.task_struct** %7, align 8
  store i8* %3, i8** %8, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = bitcast i8* %13 to i32*
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* @ENOENT, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.dentry* @ERR_PTR(i32 %17)
  store %struct.dentry* %18, %struct.dentry** %12, align 8
  %19 = load %struct.inode*, %struct.inode** %5, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %23 = call %struct.inode* @proc_pid_make_inode(i32 %21, %struct.task_struct* %22)
  store %struct.inode* %23, %struct.inode** %10, align 8
  %24 = load %struct.inode*, %struct.inode** %10, align 8
  %25 = icmp ne %struct.inode* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %4
  br label %50

27:                                               ; preds = %4
  %28 = load %struct.inode*, %struct.inode** %10, align 8
  %29 = call %struct.proc_inode* @PROC_I(%struct.inode* %28)
  store %struct.proc_inode* %29, %struct.proc_inode** %11, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.proc_inode*, %struct.proc_inode** %11, align 8
  %32 = getelementptr inbounds %struct.proc_inode, %struct.proc_inode* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @S_IFREG, align 4
  %34 = load i32, i32* @S_IRUSR, align 4
  %35 = or i32 %33, %34
  %36 = load %struct.inode*, %struct.inode** %10, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.inode*, %struct.inode** %10, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 1
  store i32* @proc_fdinfo_file_operations, i32** %39, align 8
  %40 = load %struct.dentry*, %struct.dentry** %6, align 8
  %41 = getelementptr inbounds %struct.dentry, %struct.dentry* %40, i32 0, i32 0
  store i32* @tid_fd_dentry_operations, i32** %41, align 8
  %42 = load %struct.dentry*, %struct.dentry** %6, align 8
  %43 = load %struct.inode*, %struct.inode** %10, align 8
  %44 = call i32 @d_add(%struct.dentry* %42, %struct.inode* %43)
  %45 = load %struct.dentry*, %struct.dentry** %6, align 8
  %46 = call i64 @tid_fd_revalidate(%struct.dentry* %45, i32* null)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %27
  store %struct.dentry* null, %struct.dentry** %12, align 8
  br label %49

49:                                               ; preds = %48, %27
  br label %50

50:                                               ; preds = %49, %26
  %51 = load %struct.dentry*, %struct.dentry** %12, align 8
  ret %struct.dentry* %51
}

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local %struct.inode* @proc_pid_make_inode(i32, %struct.task_struct*) #1

declare dso_local %struct.proc_inode* @PROC_I(%struct.inode*) #1

declare dso_local i32 @d_add(%struct.dentry*, %struct.inode*) #1

declare dso_local i64 @tid_fd_revalidate(%struct.dentry*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
