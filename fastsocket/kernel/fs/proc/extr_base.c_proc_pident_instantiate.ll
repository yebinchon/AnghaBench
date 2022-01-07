; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_base.c_proc_pident_instantiate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_base.c_proc_pident_instantiate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i64, i64, i32, i32 }
%struct.dentry = type { i32* }
%struct.task_struct = type { i32 }
%struct.pid_entry = type { i32, i64, i64, i32 }
%struct.proc_inode = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@pid_dentry_operations = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.inode*, %struct.dentry*, %struct.task_struct*, i8*)* @proc_pident_instantiate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @proc_pident_instantiate(%struct.inode* %0, %struct.dentry* %1, %struct.task_struct* %2, i8* %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.task_struct*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.pid_entry*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.proc_inode*, align 8
  %12 = alloca %struct.dentry*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store %struct.task_struct* %2, %struct.task_struct** %7, align 8
  store i8* %3, i8** %8, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = bitcast i8* %13 to %struct.pid_entry*
  store %struct.pid_entry* %14, %struct.pid_entry** %9, align 8
  %15 = load i32, i32* @ENOENT, align 4
  %16 = sub nsw i32 0, %15
  %17 = call %struct.dentry* @ERR_PTR(i32 %16)
  store %struct.dentry* %17, %struct.dentry** %12, align 8
  %18 = load %struct.inode*, %struct.inode** %5, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %22 = call %struct.inode* @proc_pid_make_inode(i32 %20, %struct.task_struct* %21)
  store %struct.inode* %22, %struct.inode** %10, align 8
  %23 = load %struct.inode*, %struct.inode** %10, align 8
  %24 = icmp ne %struct.inode* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %4
  br label %80

26:                                               ; preds = %4
  %27 = load %struct.inode*, %struct.inode** %10, align 8
  %28 = call %struct.proc_inode* @PROC_I(%struct.inode* %27)
  store %struct.proc_inode* %28, %struct.proc_inode** %11, align 8
  %29 = load %struct.pid_entry*, %struct.pid_entry** %9, align 8
  %30 = getelementptr inbounds %struct.pid_entry, %struct.pid_entry* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.inode*, %struct.inode** %10, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 8
  %34 = load %struct.inode*, %struct.inode** %10, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @S_ISDIR(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %26
  %40 = load %struct.inode*, %struct.inode** %10, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 0
  store i32 2, i32* %41, align 8
  br label %42

42:                                               ; preds = %39, %26
  %43 = load %struct.pid_entry*, %struct.pid_entry** %9, align 8
  %44 = getelementptr inbounds %struct.pid_entry, %struct.pid_entry* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load %struct.pid_entry*, %struct.pid_entry** %9, align 8
  %49 = getelementptr inbounds %struct.pid_entry, %struct.pid_entry* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.inode*, %struct.inode** %10, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 2
  store i64 %50, i64* %52, align 8
  br label %53

53:                                               ; preds = %47, %42
  %54 = load %struct.pid_entry*, %struct.pid_entry** %9, align 8
  %55 = getelementptr inbounds %struct.pid_entry, %struct.pid_entry* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %53
  %59 = load %struct.pid_entry*, %struct.pid_entry** %9, align 8
  %60 = getelementptr inbounds %struct.pid_entry, %struct.pid_entry* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.inode*, %struct.inode** %10, align 8
  %63 = getelementptr inbounds %struct.inode, %struct.inode* %62, i32 0, i32 1
  store i64 %61, i64* %63, align 8
  br label %64

64:                                               ; preds = %58, %53
  %65 = load %struct.pid_entry*, %struct.pid_entry** %9, align 8
  %66 = getelementptr inbounds %struct.pid_entry, %struct.pid_entry* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.proc_inode*, %struct.proc_inode** %11, align 8
  %69 = getelementptr inbounds %struct.proc_inode, %struct.proc_inode* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  %70 = load %struct.dentry*, %struct.dentry** %6, align 8
  %71 = getelementptr inbounds %struct.dentry, %struct.dentry* %70, i32 0, i32 0
  store i32* @pid_dentry_operations, i32** %71, align 8
  %72 = load %struct.dentry*, %struct.dentry** %6, align 8
  %73 = load %struct.inode*, %struct.inode** %10, align 8
  %74 = call i32 @d_add(%struct.dentry* %72, %struct.inode* %73)
  %75 = load %struct.dentry*, %struct.dentry** %6, align 8
  %76 = call i64 @pid_revalidate(%struct.dentry* %75, i32* null)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %64
  store %struct.dentry* null, %struct.dentry** %12, align 8
  br label %79

79:                                               ; preds = %78, %64
  br label %80

80:                                               ; preds = %79, %25
  %81 = load %struct.dentry*, %struct.dentry** %12, align 8
  ret %struct.dentry* %81
}

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local %struct.inode* @proc_pid_make_inode(i32, %struct.task_struct*) #1

declare dso_local %struct.proc_inode* @PROC_I(%struct.inode*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @d_add(%struct.dentry*, %struct.inode*) #1

declare dso_local i64 @pid_revalidate(%struct.dentry*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
