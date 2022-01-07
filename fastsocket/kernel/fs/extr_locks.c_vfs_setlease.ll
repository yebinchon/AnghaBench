; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_locks.c_vfs_setlease.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_locks.c_vfs_setlease.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }
%struct.file_lock = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vfs_setlease(%struct.file* %0, i64 %1, %struct.file_lock** %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.file_lock**, align 8
  %7 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.file_lock** %2, %struct.file_lock*** %6, align 8
  %8 = call i32 (...) @lock_kernel()
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = icmp ne %struct.TYPE_2__* %11, null
  br i1 %12, label %13, label %32

13:                                               ; preds = %3
  %14 = load %struct.file*, %struct.file** %4, align 8
  %15 = getelementptr inbounds %struct.file, %struct.file* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = bitcast {}** %17 to i32 (%struct.file*, i64, %struct.file_lock**)**
  %19 = load i32 (%struct.file*, i64, %struct.file_lock**)*, i32 (%struct.file*, i64, %struct.file_lock**)** %18, align 8
  %20 = icmp ne i32 (%struct.file*, i64, %struct.file_lock**)* %19, null
  br i1 %20, label %21, label %32

21:                                               ; preds = %13
  %22 = load %struct.file*, %struct.file** %4, align 8
  %23 = getelementptr inbounds %struct.file, %struct.file* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = bitcast {}** %25 to i32 (%struct.file*, i64, %struct.file_lock**)**
  %27 = load i32 (%struct.file*, i64, %struct.file_lock**)*, i32 (%struct.file*, i64, %struct.file_lock**)** %26, align 8
  %28 = load %struct.file*, %struct.file** %4, align 8
  %29 = load i64, i64* %5, align 8
  %30 = load %struct.file_lock**, %struct.file_lock*** %6, align 8
  %31 = call i32 %27(%struct.file* %28, i64 %29, %struct.file_lock** %30)
  store i32 %31, i32* %7, align 4
  br label %37

32:                                               ; preds = %13, %3
  %33 = load %struct.file*, %struct.file** %4, align 8
  %34 = load i64, i64* %5, align 8
  %35 = load %struct.file_lock**, %struct.file_lock*** %6, align 8
  %36 = call i32 @generic_setlease(%struct.file* %33, i64 %34, %struct.file_lock** %35)
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %32, %21
  %38 = call i32 (...) @unlock_kernel()
  %39 = load i32, i32* %7, align 4
  ret i32 %39
}

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i32 @generic_setlease(%struct.file*, i64, %struct.file_lock**) #1

declare dso_local i32 @unlock_kernel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
