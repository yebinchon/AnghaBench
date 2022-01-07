; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_namespaces.c_proc_ns_follow_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_namespaces.c_proc_ns_follow_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.inode* }
%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.nameidata = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.dentry* }
%struct.proc_inode = type { i32 }
%struct.task_struct = type { i32 }

@EACCES = common dso_local global i32 0, align 4
@PTRACE_MODE_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.dentry*, %struct.nameidata*)* @proc_ns_follow_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @proc_ns_follow_link(%struct.dentry* %0, %struct.nameidata* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.nameidata*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.proc_inode*, align 8
  %8 = alloca %struct.task_struct*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca i8*, align 8
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.nameidata* %1, %struct.nameidata** %4, align 8
  %11 = load %struct.dentry*, %struct.dentry** %3, align 8
  %12 = getelementptr inbounds %struct.dentry, %struct.dentry* %11, i32 0, i32 0
  %13 = load %struct.inode*, %struct.inode** %12, align 8
  store %struct.inode* %13, %struct.inode** %5, align 8
  %14 = load %struct.inode*, %struct.inode** %5, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 0
  %16 = load %struct.super_block*, %struct.super_block** %15, align 8
  store %struct.super_block* %16, %struct.super_block** %6, align 8
  %17 = load %struct.inode*, %struct.inode** %5, align 8
  %18 = call %struct.proc_inode* @PROC_I(%struct.inode* %17)
  store %struct.proc_inode* %18, %struct.proc_inode** %7, align 8
  %19 = load i32, i32* @EACCES, align 4
  %20 = sub nsw i32 0, %19
  %21 = call i8* @ERR_PTR(i32 %20)
  store i8* %21, i8** %10, align 8
  %22 = load %struct.inode*, %struct.inode** %5, align 8
  %23 = call %struct.task_struct* @get_proc_task(%struct.inode* %22)
  store %struct.task_struct* %23, %struct.task_struct** %8, align 8
  %24 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %25 = icmp ne %struct.task_struct* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %2
  br label %59

27:                                               ; preds = %2
  %28 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %29 = load i32, i32* @PTRACE_MODE_READ, align 4
  %30 = call i32 @ptrace_may_access(%struct.task_struct* %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  br label %56

33:                                               ; preds = %27
  %34 = load %struct.super_block*, %struct.super_block** %6, align 8
  %35 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %36 = load %struct.proc_inode*, %struct.proc_inode** %7, align 8
  %37 = getelementptr inbounds %struct.proc_inode, %struct.proc_inode* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.dentry* @proc_ns_get_dentry(%struct.super_block* %34, %struct.task_struct* %35, i32 %38)
  store %struct.dentry* %39, %struct.dentry** %9, align 8
  %40 = load %struct.dentry*, %struct.dentry** %9, align 8
  %41 = call i64 @IS_ERR(%struct.dentry* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %33
  %44 = load %struct.dentry*, %struct.dentry** %9, align 8
  %45 = call i8* @ERR_CAST(%struct.dentry* %44)
  store i8* %45, i8** %10, align 8
  br label %56

46:                                               ; preds = %33
  %47 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %48 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load %struct.dentry*, %struct.dentry** %49, align 8
  %51 = call i32 @dput(%struct.dentry* %50)
  %52 = load %struct.dentry*, %struct.dentry** %9, align 8
  %53 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %54 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store %struct.dentry* %52, %struct.dentry** %55, align 8
  store i8* null, i8** %10, align 8
  br label %56

56:                                               ; preds = %46, %43, %32
  %57 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %58 = call i32 @put_task_struct(%struct.task_struct* %57)
  br label %59

59:                                               ; preds = %56, %26
  %60 = load i8*, i8** %10, align 8
  ret i8* %60
}

declare dso_local %struct.proc_inode* @PROC_I(%struct.inode*) #1

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local %struct.task_struct* @get_proc_task(%struct.inode*) #1

declare dso_local i32 @ptrace_may_access(%struct.task_struct*, i32) #1

declare dso_local %struct.dentry* @proc_ns_get_dentry(%struct.super_block*, %struct.task_struct*, i32) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i8* @ERR_CAST(%struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @put_task_struct(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
