; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_base.c_proc_pident_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_base.c_proc_pident_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.pid_entry = type { i64, i32 }
%struct.task_struct = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.inode*, %struct.dentry*, %struct.pid_entry*, i32)* @proc_pident_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @proc_pident_lookup(%struct.inode* %0, %struct.dentry* %1, %struct.pid_entry* %2, i32 %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.pid_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca %struct.task_struct*, align 8
  %11 = alloca %struct.pid_entry*, align 8
  %12 = alloca %struct.pid_entry*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store %struct.pid_entry* %2, %struct.pid_entry** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.inode*, %struct.inode** %5, align 8
  %14 = call %struct.task_struct* @get_proc_task(%struct.inode* %13)
  store %struct.task_struct* %14, %struct.task_struct** %10, align 8
  %15 = load i32, i32* @ENOENT, align 4
  %16 = sub nsw i32 0, %15
  %17 = call %struct.dentry* @ERR_PTR(i32 %16)
  store %struct.dentry* %17, %struct.dentry** %9, align 8
  %18 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %19 = icmp ne %struct.task_struct* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %4
  br label %74

21:                                               ; preds = %4
  %22 = load %struct.pid_entry*, %struct.pid_entry** %7, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sub i32 %23, 1
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.pid_entry, %struct.pid_entry* %22, i64 %25
  store %struct.pid_entry* %26, %struct.pid_entry** %12, align 8
  %27 = load %struct.pid_entry*, %struct.pid_entry** %7, align 8
  store %struct.pid_entry* %27, %struct.pid_entry** %11, align 8
  br label %28

28:                                               ; preds = %57, %21
  %29 = load %struct.pid_entry*, %struct.pid_entry** %11, align 8
  %30 = load %struct.pid_entry*, %struct.pid_entry** %12, align 8
  %31 = icmp ule %struct.pid_entry* %29, %30
  br i1 %31, label %32, label %60

32:                                               ; preds = %28
  %33 = load %struct.pid_entry*, %struct.pid_entry** %11, align 8
  %34 = getelementptr inbounds %struct.pid_entry, %struct.pid_entry* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.dentry*, %struct.dentry** %6, align 8
  %37 = getelementptr inbounds %struct.dentry, %struct.dentry* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %35, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  br label %57

42:                                               ; preds = %32
  %43 = load %struct.dentry*, %struct.dentry** %6, align 8
  %44 = getelementptr inbounds %struct.dentry, %struct.dentry* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.pid_entry*, %struct.pid_entry** %11, align 8
  %48 = getelementptr inbounds %struct.pid_entry, %struct.pid_entry* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.pid_entry*, %struct.pid_entry** %11, align 8
  %51 = getelementptr inbounds %struct.pid_entry, %struct.pid_entry* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @memcmp(i32 %46, i32 %49, i64 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %42
  br label %60

56:                                               ; preds = %42
  br label %57

57:                                               ; preds = %56, %41
  %58 = load %struct.pid_entry*, %struct.pid_entry** %11, align 8
  %59 = getelementptr inbounds %struct.pid_entry, %struct.pid_entry* %58, i32 1
  store %struct.pid_entry* %59, %struct.pid_entry** %11, align 8
  br label %28

60:                                               ; preds = %55, %28
  %61 = load %struct.pid_entry*, %struct.pid_entry** %11, align 8
  %62 = load %struct.pid_entry*, %struct.pid_entry** %12, align 8
  %63 = icmp ugt %struct.pid_entry* %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  br label %71

65:                                               ; preds = %60
  %66 = load %struct.inode*, %struct.inode** %5, align 8
  %67 = load %struct.dentry*, %struct.dentry** %6, align 8
  %68 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %69 = load %struct.pid_entry*, %struct.pid_entry** %11, align 8
  %70 = call %struct.dentry* @proc_pident_instantiate(%struct.inode* %66, %struct.dentry* %67, %struct.task_struct* %68, %struct.pid_entry* %69)
  store %struct.dentry* %70, %struct.dentry** %9, align 8
  br label %71

71:                                               ; preds = %65, %64
  %72 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %73 = call i32 @put_task_struct(%struct.task_struct* %72)
  br label %74

74:                                               ; preds = %71, %20
  %75 = load %struct.dentry*, %struct.dentry** %9, align 8
  ret %struct.dentry* %75
}

declare dso_local %struct.task_struct* @get_proc_task(%struct.inode*) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local i32 @memcmp(i32, i32, i64) #1

declare dso_local %struct.dentry* @proc_pident_instantiate(%struct.inode*, %struct.dentry*, %struct.task_struct*, %struct.pid_entry*) #1

declare dso_local i32 @put_task_struct(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
