; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_base.c_proc_pid_instantiate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_base.c_proc_pid_instantiate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i64, i32, i32*, i32*, i32 }
%struct.dentry = type { i32* }
%struct.task_struct = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@S_IRUGO = common dso_local global i32 0, align 4
@S_IXUGO = common dso_local global i32 0, align 4
@proc_tgid_base_inode_operations = common dso_local global i32 0, align 4
@proc_tgid_base_operations = common dso_local global i32 0, align 4
@S_IMMUTABLE = common dso_local global i32 0, align 4
@tgid_base_stuff = common dso_local global i32 0, align 4
@pid_dentry_operations = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.inode*, %struct.dentry*, %struct.task_struct*, i8*)* @proc_pid_instantiate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @proc_pid_instantiate(%struct.inode* %0, %struct.dentry* %1, %struct.task_struct* %2, i8* %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.task_struct*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca %struct.inode*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store %struct.task_struct* %2, %struct.task_struct** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load i32, i32* @ENOENT, align 4
  %12 = sub nsw i32 0, %11
  %13 = call %struct.dentry* @ERR_PTR(i32 %12)
  store %struct.dentry* %13, %struct.dentry** %9, align 8
  %14 = load %struct.inode*, %struct.inode** %5, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %18 = call %struct.inode* @proc_pid_make_inode(i32 %16, %struct.task_struct* %17)
  store %struct.inode* %18, %struct.inode** %10, align 8
  %19 = load %struct.inode*, %struct.inode** %10, align 8
  %20 = icmp ne %struct.inode* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %4
  br label %56

22:                                               ; preds = %4
  %23 = load i32, i32* @S_IFDIR, align 4
  %24 = load i32, i32* @S_IRUGO, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @S_IXUGO, align 4
  %27 = or i32 %25, %26
  %28 = load %struct.inode*, %struct.inode** %10, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.inode*, %struct.inode** %10, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 4
  store i32* @proc_tgid_base_inode_operations, i32** %31, align 8
  %32 = load %struct.inode*, %struct.inode** %10, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 3
  store i32* @proc_tgid_base_operations, i32** %33, align 8
  %34 = load i32, i32* @S_IMMUTABLE, align 4
  %35 = load %struct.inode*, %struct.inode** %10, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 8
  %39 = load i32, i32* @tgid_base_stuff, align 4
  %40 = load i32, i32* @tgid_base_stuff, align 4
  %41 = call i32 @ARRAY_SIZE(i32 %40)
  %42 = call i64 @pid_entry_count_dirs(i32 %39, i32 %41)
  %43 = add nsw i64 2, %42
  %44 = load %struct.inode*, %struct.inode** %10, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 1
  store i64 %43, i64* %45, align 8
  %46 = load %struct.dentry*, %struct.dentry** %6, align 8
  %47 = getelementptr inbounds %struct.dentry, %struct.dentry* %46, i32 0, i32 0
  store i32* @pid_dentry_operations, i32** %47, align 8
  %48 = load %struct.dentry*, %struct.dentry** %6, align 8
  %49 = load %struct.inode*, %struct.inode** %10, align 8
  %50 = call i32 @d_add(%struct.dentry* %48, %struct.inode* %49)
  %51 = load %struct.dentry*, %struct.dentry** %6, align 8
  %52 = call i64 @pid_revalidate(%struct.dentry* %51, i32* null)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %22
  store %struct.dentry* null, %struct.dentry** %9, align 8
  br label %55

55:                                               ; preds = %54, %22
  br label %56

56:                                               ; preds = %55, %21
  %57 = load %struct.dentry*, %struct.dentry** %9, align 8
  ret %struct.dentry* %57
}

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local %struct.inode* @proc_pid_make_inode(i32, %struct.task_struct*) #1

declare dso_local i64 @pid_entry_count_dirs(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @d_add(%struct.dentry*, %struct.inode*) #1

declare dso_local i64 @pid_revalidate(%struct.dentry*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
