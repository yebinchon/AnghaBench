; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_base.c_get_fs_path.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_base.c_get_fs_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.fs_struct* }
%struct.fs_struct = type { i32, %struct.path, %struct.path }
%struct.path = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*, %struct.path*, i32)* @get_fs_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_fs_path(%struct.task_struct* %0, %struct.path* %1, i32 %2) #0 {
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca %struct.path*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.fs_struct*, align 8
  %8 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store %struct.path* %1, %struct.path** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @ENOENT, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %8, align 4
  %11 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %12 = call i32 @task_lock(%struct.task_struct* %11)
  %13 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %14 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %13, i32 0, i32 0
  %15 = load %struct.fs_struct*, %struct.fs_struct** %14, align 8
  store %struct.fs_struct* %15, %struct.fs_struct** %7, align 8
  %16 = load %struct.fs_struct*, %struct.fs_struct** %7, align 8
  %17 = icmp ne %struct.fs_struct* %16, null
  br i1 %17, label %18, label %41

18:                                               ; preds = %3
  %19 = load %struct.fs_struct*, %struct.fs_struct** %7, align 8
  %20 = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %19, i32 0, i32 0
  %21 = call i32 @read_lock(i32* %20)
  %22 = load %struct.path*, %struct.path** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %18
  %26 = load %struct.fs_struct*, %struct.fs_struct** %7, align 8
  %27 = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %26, i32 0, i32 2
  %28 = bitcast %struct.path* %22 to i8*
  %29 = bitcast %struct.path* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %28, i8* align 4 %29, i64 4, i1 false)
  br label %35

30:                                               ; preds = %18
  %31 = load %struct.fs_struct*, %struct.fs_struct** %7, align 8
  %32 = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %31, i32 0, i32 1
  %33 = bitcast %struct.path* %22 to i8*
  %34 = bitcast %struct.path* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %33, i8* align 4 %34, i64 4, i1 false)
  br label %35

35:                                               ; preds = %30, %25
  %36 = load %struct.path*, %struct.path** %5, align 8
  %37 = call i32 @path_get(%struct.path* %36)
  %38 = load %struct.fs_struct*, %struct.fs_struct** %7, align 8
  %39 = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %38, i32 0, i32 0
  %40 = call i32 @read_unlock(i32* %39)
  store i32 0, i32* %8, align 4
  br label %41

41:                                               ; preds = %35, %3
  %42 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %43 = call i32 @task_unlock(%struct.task_struct* %42)
  %44 = load i32, i32* %8, align 4
  ret i32 %44
}

declare dso_local i32 @task_lock(%struct.task_struct*) #1

declare dso_local i32 @read_lock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @path_get(%struct.path*) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i32 @task_unlock(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
