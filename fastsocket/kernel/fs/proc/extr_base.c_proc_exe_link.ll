; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_base.c_proc_exe_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_base.c_proc_exe_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.path = type { i32 }
%struct.task_struct = type { i32 }
%struct.mm_struct = type { i32 }
%struct.file = type { %struct.path }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.path*)* @proc_exe_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proc_exe_link(%struct.inode* %0, %struct.path* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.path*, align 8
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca %struct.mm_struct*, align 8
  %8 = alloca %struct.file*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.path* %1, %struct.path** %5, align 8
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = call %struct.task_struct* @get_proc_task(%struct.inode* %9)
  store %struct.task_struct* %10, %struct.task_struct** %6, align 8
  %11 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %12 = icmp ne %struct.task_struct* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOENT, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %47

16:                                               ; preds = %2
  %17 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %18 = call %struct.mm_struct* @get_task_mm(%struct.task_struct* %17)
  store %struct.mm_struct* %18, %struct.mm_struct** %7, align 8
  %19 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %20 = call i32 @put_task_struct(%struct.task_struct* %19)
  %21 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %22 = icmp ne %struct.mm_struct* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %16
  %24 = load i32, i32* @ENOENT, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %47

26:                                               ; preds = %16
  %27 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %28 = call %struct.file* @get_mm_exe_file(%struct.mm_struct* %27)
  store %struct.file* %28, %struct.file** %8, align 8
  %29 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %30 = call i32 @mmput(%struct.mm_struct* %29)
  %31 = load %struct.file*, %struct.file** %8, align 8
  %32 = icmp ne %struct.file* %31, null
  br i1 %32, label %33, label %44

33:                                               ; preds = %26
  %34 = load %struct.path*, %struct.path** %5, align 8
  %35 = load %struct.file*, %struct.file** %8, align 8
  %36 = getelementptr inbounds %struct.file, %struct.file* %35, i32 0, i32 0
  %37 = bitcast %struct.path* %34 to i8*
  %38 = bitcast %struct.path* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %37, i8* align 4 %38, i64 4, i1 false)
  %39 = load %struct.file*, %struct.file** %8, align 8
  %40 = getelementptr inbounds %struct.file, %struct.file* %39, i32 0, i32 0
  %41 = call i32 @path_get(%struct.path* %40)
  %42 = load %struct.file*, %struct.file** %8, align 8
  %43 = call i32 @fput(%struct.file* %42)
  store i32 0, i32* %3, align 4
  br label %47

44:                                               ; preds = %26
  %45 = load i32, i32* @ENOENT, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %44, %33, %23, %13
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local %struct.task_struct* @get_proc_task(%struct.inode*) #1

declare dso_local %struct.mm_struct* @get_task_mm(%struct.task_struct*) #1

declare dso_local i32 @put_task_struct(%struct.task_struct*) #1

declare dso_local %struct.file* @get_mm_exe_file(%struct.mm_struct*) #1

declare dso_local i32 @mmput(%struct.mm_struct*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @path_get(%struct.path*) #1

declare dso_local i32 @fput(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
