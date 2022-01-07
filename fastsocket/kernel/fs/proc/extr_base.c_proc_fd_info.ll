; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_base.c_proc_fd_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_base.c_proc_fd_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.path = type { i32 }
%struct.task_struct = type { i32 }
%struct.files_struct = type { i32 }
%struct.file = type { i64, i32, %struct.path }

@PROC_FDINFO_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"pos:\09%lli\0Aflags:\090%o\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.path*, i8*)* @proc_fd_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proc_fd_info(%struct.inode* %0, %struct.path* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.path*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.task_struct*, align 8
  %9 = alloca %struct.files_struct*, align 8
  %10 = alloca %struct.file*, align 8
  %11 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.path* %1, %struct.path** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.inode*, %struct.inode** %5, align 8
  %13 = call %struct.task_struct* @get_proc_task(%struct.inode* %12)
  store %struct.task_struct* %13, %struct.task_struct** %8, align 8
  store %struct.files_struct* null, %struct.files_struct** %9, align 8
  %14 = load %struct.inode*, %struct.inode** %5, align 8
  %15 = call i32 @proc_fd(%struct.inode* %14)
  store i32 %15, i32* %11, align 4
  %16 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %17 = icmp ne %struct.task_struct* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %20 = call %struct.files_struct* @get_files_struct(%struct.task_struct* %19)
  store %struct.files_struct* %20, %struct.files_struct** %9, align 8
  %21 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %22 = call i32 @put_task_struct(%struct.task_struct* %21)
  br label %23

23:                                               ; preds = %18, %3
  %24 = load %struct.files_struct*, %struct.files_struct** %9, align 8
  %25 = icmp ne %struct.files_struct* %24, null
  br i1 %25, label %26, label %72

26:                                               ; preds = %23
  %27 = load %struct.files_struct*, %struct.files_struct** %9, align 8
  %28 = getelementptr inbounds %struct.files_struct, %struct.files_struct* %27, i32 0, i32 0
  %29 = call i32 @spin_lock(i32* %28)
  %30 = load %struct.files_struct*, %struct.files_struct** %9, align 8
  %31 = load i32, i32* %11, align 4
  %32 = call %struct.file* @fcheck_files(%struct.files_struct* %30, i32 %31)
  store %struct.file* %32, %struct.file** %10, align 8
  %33 = load %struct.file*, %struct.file** %10, align 8
  %34 = icmp ne %struct.file* %33, null
  br i1 %34, label %35, label %66

35:                                               ; preds = %26
  %36 = load %struct.path*, %struct.path** %6, align 8
  %37 = icmp ne %struct.path* %36, null
  br i1 %37, label %38, label %47

38:                                               ; preds = %35
  %39 = load %struct.path*, %struct.path** %6, align 8
  %40 = load %struct.file*, %struct.file** %10, align 8
  %41 = getelementptr inbounds %struct.file, %struct.file* %40, i32 0, i32 2
  %42 = bitcast %struct.path* %39 to i8*
  %43 = bitcast %struct.path* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %42, i8* align 4 %43, i64 4, i1 false)
  %44 = load %struct.file*, %struct.file** %10, align 8
  %45 = getelementptr inbounds %struct.file, %struct.file* %44, i32 0, i32 2
  %46 = call i32 @path_get(%struct.path* %45)
  br label %47

47:                                               ; preds = %38, %35
  %48 = load i8*, i8** %7, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %60

50:                                               ; preds = %47
  %51 = load i8*, i8** %7, align 8
  %52 = load i32, i32* @PROC_FDINFO_MAX, align 4
  %53 = load %struct.file*, %struct.file** %10, align 8
  %54 = getelementptr inbounds %struct.file, %struct.file* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.file*, %struct.file** %10, align 8
  %57 = getelementptr inbounds %struct.file, %struct.file* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @snprintf(i8* %51, i32 %52, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %55, i32 %58)
  br label %60

60:                                               ; preds = %50, %47
  %61 = load %struct.files_struct*, %struct.files_struct** %9, align 8
  %62 = getelementptr inbounds %struct.files_struct, %struct.files_struct* %61, i32 0, i32 0
  %63 = call i32 @spin_unlock(i32* %62)
  %64 = load %struct.files_struct*, %struct.files_struct** %9, align 8
  %65 = call i32 @put_files_struct(%struct.files_struct* %64)
  store i32 0, i32* %4, align 4
  br label %75

66:                                               ; preds = %26
  %67 = load %struct.files_struct*, %struct.files_struct** %9, align 8
  %68 = getelementptr inbounds %struct.files_struct, %struct.files_struct* %67, i32 0, i32 0
  %69 = call i32 @spin_unlock(i32* %68)
  %70 = load %struct.files_struct*, %struct.files_struct** %9, align 8
  %71 = call i32 @put_files_struct(%struct.files_struct* %70)
  br label %72

72:                                               ; preds = %66, %23
  %73 = load i32, i32* @ENOENT, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %72, %60
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local %struct.task_struct* @get_proc_task(%struct.inode*) #1

declare dso_local i32 @proc_fd(%struct.inode*) #1

declare dso_local %struct.files_struct* @get_files_struct(%struct.task_struct*) #1

declare dso_local i32 @put_task_struct(%struct.task_struct*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.file* @fcheck_files(%struct.files_struct*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @path_get(%struct.path*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i64, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @put_files_struct(%struct.files_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
