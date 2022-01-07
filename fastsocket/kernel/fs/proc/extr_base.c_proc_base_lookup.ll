; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_base.c_proc_base_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_base.c_proc_base_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pid_entry = type { i64, i32 }
%struct.inode = type { i32 }
%struct.dentry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.task_struct = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@proc_base_stuff = common dso_local global %struct.pid_entry* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.inode*, %struct.dentry*)* @proc_base_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @proc_base_lookup(%struct.inode* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca %struct.pid_entry*, align 8
  %8 = alloca %struct.pid_entry*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.dentry* %1, %struct.dentry** %4, align 8
  %9 = load %struct.inode*, %struct.inode** %3, align 8
  %10 = call %struct.task_struct* @get_proc_task(%struct.inode* %9)
  store %struct.task_struct* %10, %struct.task_struct** %6, align 8
  %11 = load i32, i32* @ENOENT, align 4
  %12 = sub nsw i32 0, %11
  %13 = call %struct.dentry* @ERR_PTR(i32 %12)
  store %struct.dentry* %13, %struct.dentry** %5, align 8
  %14 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %15 = icmp ne %struct.task_struct* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %71

17:                                               ; preds = %2
  %18 = load %struct.pid_entry*, %struct.pid_entry** @proc_base_stuff, align 8
  %19 = load %struct.pid_entry*, %struct.pid_entry** @proc_base_stuff, align 8
  %20 = call i32 @ARRAY_SIZE(%struct.pid_entry* %19)
  %21 = sub nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.pid_entry, %struct.pid_entry* %18, i64 %22
  store %struct.pid_entry* %23, %struct.pid_entry** %8, align 8
  %24 = load %struct.pid_entry*, %struct.pid_entry** @proc_base_stuff, align 8
  store %struct.pid_entry* %24, %struct.pid_entry** %7, align 8
  br label %25

25:                                               ; preds = %54, %17
  %26 = load %struct.pid_entry*, %struct.pid_entry** %7, align 8
  %27 = load %struct.pid_entry*, %struct.pid_entry** %8, align 8
  %28 = icmp ule %struct.pid_entry* %26, %27
  br i1 %28, label %29, label %57

29:                                               ; preds = %25
  %30 = load %struct.pid_entry*, %struct.pid_entry** %7, align 8
  %31 = getelementptr inbounds %struct.pid_entry, %struct.pid_entry* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.dentry*, %struct.dentry** %4, align 8
  %34 = getelementptr inbounds %struct.dentry, %struct.dentry* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %32, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  br label %54

39:                                               ; preds = %29
  %40 = load %struct.dentry*, %struct.dentry** %4, align 8
  %41 = getelementptr inbounds %struct.dentry, %struct.dentry* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.pid_entry*, %struct.pid_entry** %7, align 8
  %45 = getelementptr inbounds %struct.pid_entry, %struct.pid_entry* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.pid_entry*, %struct.pid_entry** %7, align 8
  %48 = getelementptr inbounds %struct.pid_entry, %struct.pid_entry* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @memcmp(i32 %43, i32 %46, i64 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %39
  br label %57

53:                                               ; preds = %39
  br label %54

54:                                               ; preds = %53, %38
  %55 = load %struct.pid_entry*, %struct.pid_entry** %7, align 8
  %56 = getelementptr inbounds %struct.pid_entry, %struct.pid_entry* %55, i32 1
  store %struct.pid_entry* %56, %struct.pid_entry** %7, align 8
  br label %25

57:                                               ; preds = %52, %25
  %58 = load %struct.pid_entry*, %struct.pid_entry** %7, align 8
  %59 = load %struct.pid_entry*, %struct.pid_entry** %8, align 8
  %60 = icmp ugt %struct.pid_entry* %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  br label %68

62:                                               ; preds = %57
  %63 = load %struct.inode*, %struct.inode** %3, align 8
  %64 = load %struct.dentry*, %struct.dentry** %4, align 8
  %65 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %66 = load %struct.pid_entry*, %struct.pid_entry** %7, align 8
  %67 = call %struct.dentry* @proc_base_instantiate(%struct.inode* %63, %struct.dentry* %64, %struct.task_struct* %65, %struct.pid_entry* %66)
  store %struct.dentry* %67, %struct.dentry** %5, align 8
  br label %68

68:                                               ; preds = %62, %61
  %69 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %70 = call i32 @put_task_struct(%struct.task_struct* %69)
  br label %71

71:                                               ; preds = %68, %16
  %72 = load %struct.dentry*, %struct.dentry** %5, align 8
  ret %struct.dentry* %72
}

declare dso_local %struct.task_struct* @get_proc_task(%struct.inode*) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.pid_entry*) #1

declare dso_local i32 @memcmp(i32, i32, i64) #1

declare dso_local %struct.dentry* @proc_base_instantiate(%struct.inode*, %struct.dentry*, %struct.task_struct*, %struct.pid_entry*) #1

declare dso_local i32 @put_task_struct(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
