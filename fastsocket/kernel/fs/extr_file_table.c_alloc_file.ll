; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_file_table.c_alloc_file.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_file_table.c_alloc_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, %struct.file_operations*, i32, %struct.path }
%struct.path = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.file_operations = type { i32 }

@FMODE_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.file* @alloc_file(%struct.path* %0, i32 %1, %struct.file_operations* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.path*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.file_operations*, align 8
  %8 = alloca %struct.file*, align 8
  store %struct.path* %0, %struct.path** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.file_operations* %2, %struct.file_operations** %7, align 8
  %9 = call %struct.file* (...) @get_empty_filp()
  store %struct.file* %9, %struct.file** %8, align 8
  %10 = load %struct.file*, %struct.file** %8, align 8
  %11 = icmp ne %struct.file* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  store %struct.file* null, %struct.file** %4, align 8
  br label %60

13:                                               ; preds = %3
  %14 = load %struct.file*, %struct.file** %8, align 8
  %15 = getelementptr inbounds %struct.file, %struct.file* %14, i32 0, i32 3
  %16 = load %struct.path*, %struct.path** %5, align 8
  %17 = bitcast %struct.path* %15 to i8*
  %18 = bitcast %struct.path* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 %18, i64 16, i1 false)
  %19 = load %struct.path*, %struct.path** %5, align 8
  %20 = getelementptr inbounds %struct.path, %struct.path* %19, i32 0, i32 1
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.file*, %struct.file** %8, align 8
  %27 = getelementptr inbounds %struct.file, %struct.file* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.file*, %struct.file** %8, align 8
  %30 = getelementptr inbounds %struct.file, %struct.file* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.file_operations*, %struct.file_operations** %7, align 8
  %32 = load %struct.file*, %struct.file** %8, align 8
  %33 = getelementptr inbounds %struct.file, %struct.file* %32, i32 0, i32 1
  store %struct.file_operations* %31, %struct.file_operations** %33, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @FMODE_WRITE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %56

38:                                               ; preds = %13
  %39 = load %struct.path*, %struct.path** %5, align 8
  %40 = getelementptr inbounds %struct.path, %struct.path* %39, i32 0, i32 1
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @special_file(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %56, label %48

48:                                               ; preds = %38
  %49 = load %struct.file*, %struct.file** %8, align 8
  %50 = call i32 @file_take_write(%struct.file* %49)
  %51 = load %struct.path*, %struct.path** %5, align 8
  %52 = getelementptr inbounds %struct.path, %struct.path* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @mnt_clone_write(i32 %53)
  %55 = call i32 @WARN_ON(i32 %54)
  br label %56

56:                                               ; preds = %48, %38, %13
  %57 = load %struct.file*, %struct.file** %8, align 8
  %58 = call i32 @ima_counts_get(%struct.file* %57)
  %59 = load %struct.file*, %struct.file** %8, align 8
  store %struct.file* %59, %struct.file** %4, align 8
  br label %60

60:                                               ; preds = %56, %12
  %61 = load %struct.file*, %struct.file** %4, align 8
  ret %struct.file* %61
}

declare dso_local %struct.file* @get_empty_filp(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @special_file(i32) #1

declare dso_local i32 @file_take_write(%struct.file*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mnt_clone_write(i32) #1

declare dso_local i32 @ima_counts_get(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
