; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_base.c_proc_base_instantiate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_base.c_proc_base_instantiate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i64, i64, i32, i32, i32, i32, i32 }
%struct.dentry = type { i32* }
%struct.task_struct = type { i32 }
%struct.pid_entry = type { i32, i64, i64, i32 }
%struct.proc_inode = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CURRENT_TIME = common dso_local global i32 0, align 4
@PIDTYPE_PID = common dso_local global i32 0, align 4
@proc_base_dentry_operations = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.inode*, %struct.dentry*, %struct.task_struct*, i8*)* @proc_base_instantiate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @proc_base_instantiate(%struct.inode* %0, %struct.dentry* %1, %struct.task_struct* %2, i8* %3) #0 {
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
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  %17 = call %struct.dentry* @ERR_PTR(i32 %16)
  store %struct.dentry* %17, %struct.dentry** %12, align 8
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.dentry* @ERR_PTR(i32 %19)
  store %struct.dentry* %20, %struct.dentry** %12, align 8
  %21 = load %struct.inode*, %struct.inode** %5, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 8
  %23 = load i32, i32* %22, align 8
  %24 = call %struct.inode* @new_inode(i32 %23)
  store %struct.inode* %24, %struct.inode** %10, align 8
  %25 = load %struct.inode*, %struct.inode** %10, align 8
  %26 = icmp ne %struct.inode* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %4
  br label %104

28:                                               ; preds = %4
  %29 = load %struct.inode*, %struct.inode** %10, align 8
  %30 = call %struct.proc_inode* @PROC_I(%struct.inode* %29)
  store %struct.proc_inode* %30, %struct.proc_inode** %11, align 8
  %31 = load i32, i32* @CURRENT_TIME, align 4
  %32 = load %struct.inode*, %struct.inode** %10, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 5
  store i32 %31, i32* %33, align 4
  %34 = load %struct.inode*, %struct.inode** %10, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 6
  store i32 %31, i32* %35, align 8
  %36 = load %struct.inode*, %struct.inode** %10, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 7
  store i32 %31, i32* %37, align 4
  %38 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %39 = load i32, i32* @PIDTYPE_PID, align 4
  %40 = call i32 @get_task_pid(%struct.task_struct* %38, i32 %39)
  %41 = load %struct.proc_inode*, %struct.proc_inode** %11, align 8
  %42 = getelementptr inbounds %struct.proc_inode, %struct.proc_inode* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.proc_inode*, %struct.proc_inode** %11, align 8
  %44 = getelementptr inbounds %struct.proc_inode, %struct.proc_inode* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %28
  br label %106

48:                                               ; preds = %28
  %49 = load %struct.pid_entry*, %struct.pid_entry** %9, align 8
  %50 = getelementptr inbounds %struct.pid_entry, %struct.pid_entry* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.inode*, %struct.inode** %10, align 8
  %53 = getelementptr inbounds %struct.inode, %struct.inode* %52, i32 0, i32 4
  store i32 %51, i32* %53, align 8
  %54 = load %struct.inode*, %struct.inode** %10, align 8
  %55 = getelementptr inbounds %struct.inode, %struct.inode* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @S_ISDIR(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %48
  %60 = load %struct.inode*, %struct.inode** %10, align 8
  %61 = getelementptr inbounds %struct.inode, %struct.inode* %60, i32 0, i32 0
  store i32 2, i32* %61, align 8
  br label %62

62:                                               ; preds = %59, %48
  %63 = load %struct.inode*, %struct.inode** %10, align 8
  %64 = getelementptr inbounds %struct.inode, %struct.inode* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = call i64 @S_ISLNK(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = load %struct.inode*, %struct.inode** %10, align 8
  %70 = getelementptr inbounds %struct.inode, %struct.inode* %69, i32 0, i32 1
  store i32 64, i32* %70, align 4
  br label %71

71:                                               ; preds = %68, %62
  %72 = load %struct.pid_entry*, %struct.pid_entry** %9, align 8
  %73 = getelementptr inbounds %struct.pid_entry, %struct.pid_entry* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = load %struct.pid_entry*, %struct.pid_entry** %9, align 8
  %78 = getelementptr inbounds %struct.pid_entry, %struct.pid_entry* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.inode*, %struct.inode** %10, align 8
  %81 = getelementptr inbounds %struct.inode, %struct.inode* %80, i32 0, i32 3
  store i64 %79, i64* %81, align 8
  br label %82

82:                                               ; preds = %76, %71
  %83 = load %struct.pid_entry*, %struct.pid_entry** %9, align 8
  %84 = getelementptr inbounds %struct.pid_entry, %struct.pid_entry* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %82
  %88 = load %struct.pid_entry*, %struct.pid_entry** %9, align 8
  %89 = getelementptr inbounds %struct.pid_entry, %struct.pid_entry* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.inode*, %struct.inode** %10, align 8
  %92 = getelementptr inbounds %struct.inode, %struct.inode* %91, i32 0, i32 2
  store i64 %90, i64* %92, align 8
  br label %93

93:                                               ; preds = %87, %82
  %94 = load %struct.pid_entry*, %struct.pid_entry** %9, align 8
  %95 = getelementptr inbounds %struct.pid_entry, %struct.pid_entry* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.proc_inode*, %struct.proc_inode** %11, align 8
  %98 = getelementptr inbounds %struct.proc_inode, %struct.proc_inode* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 4
  %99 = load %struct.dentry*, %struct.dentry** %6, align 8
  %100 = getelementptr inbounds %struct.dentry, %struct.dentry* %99, i32 0, i32 0
  store i32* @proc_base_dentry_operations, i32** %100, align 8
  %101 = load %struct.dentry*, %struct.dentry** %6, align 8
  %102 = load %struct.inode*, %struct.inode** %10, align 8
  %103 = call i32 @d_add(%struct.dentry* %101, %struct.inode* %102)
  store %struct.dentry* null, %struct.dentry** %12, align 8
  br label %104

104:                                              ; preds = %106, %93, %27
  %105 = load %struct.dentry*, %struct.dentry** %12, align 8
  ret %struct.dentry* %105

106:                                              ; preds = %47
  %107 = load %struct.inode*, %struct.inode** %10, align 8
  %108 = call i32 @iput(%struct.inode* %107)
  br label %104
}

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local %struct.inode* @new_inode(i32) #1

declare dso_local %struct.proc_inode* @PROC_I(%struct.inode*) #1

declare dso_local i32 @get_task_pid(%struct.task_struct*, i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i32 @d_add(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
