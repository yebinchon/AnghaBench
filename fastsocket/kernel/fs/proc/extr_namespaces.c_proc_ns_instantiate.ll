; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_namespaces.c_proc_ns_instantiate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_namespaces.c_proc_ns_instantiate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32*, i32 }
%struct.dentry = type { i32* }
%struct.task_struct = type { i32 }
%struct.proc_ns_operations = type { i32 }
%struct.proc_inode = type { %struct.proc_ns_operations* }

@ENOENT = common dso_local global i32 0, align 4
@S_IFLNK = common dso_local global i32 0, align 4
@S_IRWXUGO = common dso_local global i32 0, align 4
@proc_ns_link_inode_operations = common dso_local global i32 0, align 4
@pid_dentry_operations = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.inode*, %struct.dentry*, %struct.task_struct*, i8*)* @proc_ns_instantiate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @proc_ns_instantiate(%struct.inode* %0, %struct.dentry* %1, %struct.task_struct* %2, i8* %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.task_struct*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.proc_ns_operations*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.proc_inode*, align 8
  %12 = alloca %struct.dentry*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store %struct.task_struct* %2, %struct.task_struct** %7, align 8
  store i8* %3, i8** %8, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = bitcast i8* %13 to %struct.proc_ns_operations*
  store %struct.proc_ns_operations* %14, %struct.proc_ns_operations** %9, align 8
  %15 = load i32, i32* @ENOENT, align 4
  %16 = sub nsw i32 0, %15
  %17 = call %struct.dentry* @ERR_PTR(i32 %16)
  store %struct.dentry* %17, %struct.dentry** %12, align 8
  %18 = load %struct.inode*, %struct.inode** %5, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %22 = call %struct.inode* @proc_pid_make_inode(i32 %20, %struct.task_struct* %21)
  store %struct.inode* %22, %struct.inode** %10, align 8
  %23 = load %struct.inode*, %struct.inode** %10, align 8
  %24 = icmp ne %struct.inode* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %4
  br label %49

26:                                               ; preds = %4
  %27 = load %struct.inode*, %struct.inode** %10, align 8
  %28 = call %struct.proc_inode* @PROC_I(%struct.inode* %27)
  store %struct.proc_inode* %28, %struct.proc_inode** %11, align 8
  %29 = load i32, i32* @S_IFLNK, align 4
  %30 = load i32, i32* @S_IRWXUGO, align 4
  %31 = or i32 %29, %30
  %32 = load %struct.inode*, %struct.inode** %10, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.inode*, %struct.inode** %10, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 1
  store i32* @proc_ns_link_inode_operations, i32** %35, align 8
  %36 = load %struct.proc_ns_operations*, %struct.proc_ns_operations** %9, align 8
  %37 = load %struct.proc_inode*, %struct.proc_inode** %11, align 8
  %38 = getelementptr inbounds %struct.proc_inode, %struct.proc_inode* %37, i32 0, i32 0
  store %struct.proc_ns_operations* %36, %struct.proc_ns_operations** %38, align 8
  %39 = load %struct.dentry*, %struct.dentry** %6, align 8
  %40 = getelementptr inbounds %struct.dentry, %struct.dentry* %39, i32 0, i32 0
  store i32* @pid_dentry_operations, i32** %40, align 8
  %41 = load %struct.dentry*, %struct.dentry** %6, align 8
  %42 = load %struct.inode*, %struct.inode** %10, align 8
  %43 = call i32 @d_add(%struct.dentry* %41, %struct.inode* %42)
  %44 = load %struct.dentry*, %struct.dentry** %6, align 8
  %45 = call i64 @pid_revalidate(%struct.dentry* %44, i32* null)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %26
  store %struct.dentry* null, %struct.dentry** %12, align 8
  br label %48

48:                                               ; preds = %47, %26
  br label %49

49:                                               ; preds = %48, %25
  %50 = load %struct.dentry*, %struct.dentry** %12, align 8
  ret %struct.dentry* %50
}

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local %struct.inode* @proc_pid_make_inode(i32, %struct.task_struct*) #1

declare dso_local %struct.proc_inode* @PROC_I(%struct.inode*) #1

declare dso_local i32 @d_add(%struct.dentry*, %struct.inode*) #1

declare dso_local i64 @pid_revalidate(%struct.dentry*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
