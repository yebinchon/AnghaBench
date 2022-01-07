; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_root.c_proc_get_sb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_root.c_proc_get_sb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_system_type = type { i32 }
%struct.vfsmount = type { i32 }
%struct.super_block = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.pid_namespace = type { i32 }
%struct.proc_inode = type { i64 }

@MS_KERNMOUNT = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@proc_test_super = common dso_local global i32 0, align 4
@proc_set_super = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MS_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file_system_type*, i32, i8*, i8*, %struct.vfsmount*)* @proc_get_sb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proc_get_sb(%struct.file_system_type* %0, i32 %1, i8* %2, i8* %3, %struct.vfsmount* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.file_system_type*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.vfsmount*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.super_block*, align 8
  %14 = alloca %struct.pid_namespace*, align 8
  %15 = alloca %struct.proc_inode*, align 8
  %16 = alloca i8*, align 8
  store %struct.file_system_type* %0, %struct.file_system_type** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct.vfsmount* %4, %struct.vfsmount** %11, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @MS_KERNMOUNT, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %5
  %22 = load i8*, i8** %10, align 8
  %23 = bitcast i8* %22 to %struct.pid_namespace*
  store %struct.pid_namespace* %23, %struct.pid_namespace** %14, align 8
  store i8* null, i8** %16, align 8
  br label %28

24:                                               ; preds = %5
  %25 = load i32, i32* @current, align 4
  %26 = call %struct.pid_namespace* @task_active_pid_ns(i32 %25)
  store %struct.pid_namespace* %26, %struct.pid_namespace** %14, align 8
  %27 = load i8*, i8** %10, align 8
  store i8* %27, i8** %16, align 8
  br label %28

28:                                               ; preds = %24, %21
  %29 = load %struct.file_system_type*, %struct.file_system_type** %7, align 8
  %30 = load i32, i32* @proc_test_super, align 4
  %31 = load i32, i32* @proc_set_super, align 4
  %32 = load %struct.pid_namespace*, %struct.pid_namespace** %14, align 8
  %33 = call %struct.super_block* @sget(%struct.file_system_type* %29, i32 %30, i32 %31, %struct.pid_namespace* %32)
  store %struct.super_block* %33, %struct.super_block** %13, align 8
  %34 = load %struct.super_block*, %struct.super_block** %13, align 8
  %35 = call i64 @IS_ERR(%struct.super_block* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %28
  %38 = load %struct.super_block*, %struct.super_block** %13, align 8
  %39 = call i32 @PTR_ERR(%struct.super_block* %38)
  store i32 %39, i32* %6, align 4
  br label %96

40:                                               ; preds = %28
  %41 = load %struct.super_block*, %struct.super_block** %13, align 8
  %42 = getelementptr inbounds %struct.super_block, %struct.super_block* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = icmp ne %struct.TYPE_2__* %43, null
  br i1 %44, label %73, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.super_block*, %struct.super_block** %13, align 8
  %48 = getelementptr inbounds %struct.super_block, %struct.super_block* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load i8*, i8** %16, align 8
  %50 = load %struct.pid_namespace*, %struct.pid_namespace** %14, align 8
  %51 = call i32 @proc_parse_options(i8* %49, %struct.pid_namespace* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %45
  %54 = load %struct.super_block*, %struct.super_block** %13, align 8
  %55 = call i32 @deactivate_locked_super(%struct.super_block* %54)
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %6, align 4
  br label %96

58:                                               ; preds = %45
  %59 = load %struct.super_block*, %struct.super_block** %13, align 8
  %60 = call i32 @proc_fill_super(%struct.super_block* %59)
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %12, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load %struct.super_block*, %struct.super_block** %13, align 8
  %65 = call i32 @deactivate_locked_super(%struct.super_block* %64)
  %66 = load i32, i32* %12, align 4
  store i32 %66, i32* %6, align 4
  br label %96

67:                                               ; preds = %58
  %68 = load i32, i32* @MS_ACTIVE, align 4
  %69 = load %struct.super_block*, %struct.super_block** %13, align 8
  %70 = getelementptr inbounds %struct.super_block, %struct.super_block* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 8
  br label %73

73:                                               ; preds = %67, %40
  %74 = load %struct.super_block*, %struct.super_block** %13, align 8
  %75 = getelementptr inbounds %struct.super_block, %struct.super_block* %74, i32 0, i32 1
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call %struct.proc_inode* @PROC_I(i32 %78)
  store %struct.proc_inode* %79, %struct.proc_inode** %15, align 8
  %80 = load %struct.proc_inode*, %struct.proc_inode** %15, align 8
  %81 = getelementptr inbounds %struct.proc_inode, %struct.proc_inode* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %92, label %84

84:                                               ; preds = %73
  %85 = call i32 (...) @rcu_read_lock()
  %86 = load %struct.pid_namespace*, %struct.pid_namespace** %14, align 8
  %87 = call i32 @find_pid_ns(i32 1, %struct.pid_namespace* %86)
  %88 = call i64 @get_pid(i32 %87)
  %89 = load %struct.proc_inode*, %struct.proc_inode** %15, align 8
  %90 = getelementptr inbounds %struct.proc_inode, %struct.proc_inode* %89, i32 0, i32 0
  store i64 %88, i64* %90, align 8
  %91 = call i32 (...) @rcu_read_unlock()
  br label %92

92:                                               ; preds = %84, %73
  %93 = load %struct.vfsmount*, %struct.vfsmount** %11, align 8
  %94 = load %struct.super_block*, %struct.super_block** %13, align 8
  %95 = call i32 @simple_set_mnt(%struct.vfsmount* %93, %struct.super_block* %94)
  store i32 0, i32* %6, align 4
  br label %96

96:                                               ; preds = %92, %63, %53, %37
  %97 = load i32, i32* %6, align 4
  ret i32 %97
}

declare dso_local %struct.pid_namespace* @task_active_pid_ns(i32) #1

declare dso_local %struct.super_block* @sget(%struct.file_system_type*, i32, i32, %struct.pid_namespace*) #1

declare dso_local i64 @IS_ERR(%struct.super_block*) #1

declare dso_local i32 @PTR_ERR(%struct.super_block*) #1

declare dso_local i32 @proc_parse_options(i8*, %struct.pid_namespace*) #1

declare dso_local i32 @deactivate_locked_super(%struct.super_block*) #1

declare dso_local i32 @proc_fill_super(%struct.super_block*) #1

declare dso_local %struct.proc_inode* @PROC_I(i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i64 @get_pid(i32) #1

declare dso_local i32 @find_pid_ns(i32, %struct.pid_namespace*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @simple_set_mnt(%struct.vfsmount*, %struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
