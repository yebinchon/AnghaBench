; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_base.c_mounts_open_common.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_base.c_mounts_open_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.proc_mounts* }
%struct.proc_mounts = type { i32, %struct.path, %struct.mnt_namespace*, %struct.TYPE_2__ }
%struct.path = type { i32 }
%struct.mnt_namespace = type { i32 }
%struct.seq_operations = type { i32 }
%struct.task_struct = type { i32 }
%struct.nsproxy = type { %struct.mnt_namespace* }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*, %struct.seq_operations*)* @mounts_open_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mounts_open_common(%struct.inode* %0, %struct.file* %1, %struct.seq_operations* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca %struct.seq_operations*, align 8
  %8 = alloca %struct.task_struct*, align 8
  %9 = alloca %struct.nsproxy*, align 8
  %10 = alloca %struct.mnt_namespace*, align 8
  %11 = alloca %struct.path, align 4
  %12 = alloca %struct.proc_mounts*, align 8
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.file* %1, %struct.file** %6, align 8
  store %struct.seq_operations* %2, %struct.seq_operations** %7, align 8
  %14 = load %struct.inode*, %struct.inode** %5, align 8
  %15 = call %struct.task_struct* @get_proc_task(%struct.inode* %14)
  store %struct.task_struct* %15, %struct.task_struct** %8, align 8
  store %struct.mnt_namespace* null, %struct.mnt_namespace** %10, align 8
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %13, align 4
  %18 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %19 = icmp ne %struct.task_struct* %18, null
  br i1 %19, label %20, label %48

20:                                               ; preds = %3
  %21 = call i32 (...) @rcu_read_lock()
  %22 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %23 = call %struct.nsproxy* @task_nsproxy(%struct.task_struct* %22)
  store %struct.nsproxy* %23, %struct.nsproxy** %9, align 8
  %24 = load %struct.nsproxy*, %struct.nsproxy** %9, align 8
  %25 = icmp ne %struct.nsproxy* %24, null
  br i1 %25, label %26, label %36

26:                                               ; preds = %20
  %27 = load %struct.nsproxy*, %struct.nsproxy** %9, align 8
  %28 = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %27, i32 0, i32 0
  %29 = load %struct.mnt_namespace*, %struct.mnt_namespace** %28, align 8
  store %struct.mnt_namespace* %29, %struct.mnt_namespace** %10, align 8
  %30 = load %struct.mnt_namespace*, %struct.mnt_namespace** %10, align 8
  %31 = icmp ne %struct.mnt_namespace* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load %struct.mnt_namespace*, %struct.mnt_namespace** %10, align 8
  %34 = call i32 @get_mnt_ns(%struct.mnt_namespace* %33)
  br label %35

35:                                               ; preds = %32, %26
  br label %36

36:                                               ; preds = %35, %20
  %37 = call i32 (...) @rcu_read_unlock()
  %38 = load %struct.mnt_namespace*, %struct.mnt_namespace** %10, align 8
  %39 = icmp ne %struct.mnt_namespace* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %42 = call i64 @get_fs_path(%struct.task_struct* %41, %struct.path* %11, i32 1)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store i32 0, i32* %13, align 4
  br label %45

45:                                               ; preds = %44, %40, %36
  %46 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %47 = call i32 @put_task_struct(%struct.task_struct* %46)
  br label %48

48:                                               ; preds = %45, %3
  %49 = load %struct.mnt_namespace*, %struct.mnt_namespace** %10, align 8
  %50 = icmp ne %struct.mnt_namespace* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %48
  br label %100

52:                                               ; preds = %48
  %53 = load i32, i32* %13, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  br label %97

56:                                               ; preds = %52
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* @GFP_KERNEL, align 4
  %60 = call %struct.proc_mounts* @kmalloc(i32 24, i32 %59)
  store %struct.proc_mounts* %60, %struct.proc_mounts** %12, align 8
  %61 = load %struct.proc_mounts*, %struct.proc_mounts** %12, align 8
  %62 = icmp ne %struct.proc_mounts* %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %56
  br label %95

64:                                               ; preds = %56
  %65 = load %struct.proc_mounts*, %struct.proc_mounts** %12, align 8
  %66 = getelementptr inbounds %struct.proc_mounts, %struct.proc_mounts* %65, i32 0, i32 3
  %67 = load %struct.file*, %struct.file** %6, align 8
  %68 = getelementptr inbounds %struct.file, %struct.file* %67, i32 0, i32 0
  store %struct.TYPE_2__* %66, %struct.TYPE_2__** %68, align 8
  %69 = load %struct.file*, %struct.file** %6, align 8
  %70 = load %struct.seq_operations*, %struct.seq_operations** %7, align 8
  %71 = call i32 @seq_open(%struct.file* %69, %struct.seq_operations* %70)
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %13, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %64
  br label %92

75:                                               ; preds = %64
  %76 = load %struct.proc_mounts*, %struct.proc_mounts** %12, align 8
  %77 = load %struct.proc_mounts*, %struct.proc_mounts** %12, align 8
  %78 = getelementptr inbounds %struct.proc_mounts, %struct.proc_mounts* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  store %struct.proc_mounts* %76, %struct.proc_mounts** %79, align 8
  %80 = load %struct.mnt_namespace*, %struct.mnt_namespace** %10, align 8
  %81 = load %struct.proc_mounts*, %struct.proc_mounts** %12, align 8
  %82 = getelementptr inbounds %struct.proc_mounts, %struct.proc_mounts* %81, i32 0, i32 2
  store %struct.mnt_namespace* %80, %struct.mnt_namespace** %82, align 8
  %83 = load %struct.proc_mounts*, %struct.proc_mounts** %12, align 8
  %84 = getelementptr inbounds %struct.proc_mounts, %struct.proc_mounts* %83, i32 0, i32 1
  %85 = bitcast %struct.path* %84 to i8*
  %86 = bitcast %struct.path* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %85, i8* align 4 %86, i64 4, i1 false)
  %87 = load %struct.mnt_namespace*, %struct.mnt_namespace** %10, align 8
  %88 = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.proc_mounts*, %struct.proc_mounts** %12, align 8
  %91 = getelementptr inbounds %struct.proc_mounts, %struct.proc_mounts* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  store i32 0, i32* %4, align 4
  br label %102

92:                                               ; preds = %74
  %93 = load %struct.proc_mounts*, %struct.proc_mounts** %12, align 8
  %94 = call i32 @kfree(%struct.proc_mounts* %93)
  br label %95

95:                                               ; preds = %92, %63
  %96 = call i32 @path_put(%struct.path* %11)
  br label %97

97:                                               ; preds = %95, %55
  %98 = load %struct.mnt_namespace*, %struct.mnt_namespace** %10, align 8
  %99 = call i32 @put_mnt_ns(%struct.mnt_namespace* %98)
  br label %100

100:                                              ; preds = %97, %51
  %101 = load i32, i32* %13, align 4
  store i32 %101, i32* %4, align 4
  br label %102

102:                                              ; preds = %100, %75
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local %struct.task_struct* @get_proc_task(%struct.inode*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.nsproxy* @task_nsproxy(%struct.task_struct*) #1

declare dso_local i32 @get_mnt_ns(%struct.mnt_namespace*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i64 @get_fs_path(%struct.task_struct*, %struct.path*, i32) #1

declare dso_local i32 @put_task_struct(%struct.task_struct*) #1

declare dso_local %struct.proc_mounts* @kmalloc(i32, i32) #1

declare dso_local i32 @seq_open(%struct.file*, %struct.seq_operations*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @kfree(%struct.proc_mounts*) #1

declare dso_local i32 @path_put(%struct.path*) #1

declare dso_local i32 @put_mnt_ns(%struct.mnt_namespace*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
