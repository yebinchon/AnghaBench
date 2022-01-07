; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_locks.c_vfs_lock_file.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_locks.c_vfs_lock_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.file*, i32, %struct.file_lock*)* }
%struct.file_lock = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vfs_lock_file(%struct.file* %0, i32 %1, %struct.file_lock* %2, %struct.file_lock* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.file_lock*, align 8
  %9 = alloca %struct.file_lock*, align 8
  store %struct.file* %0, %struct.file** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.file_lock* %2, %struct.file_lock** %8, align 8
  store %struct.file_lock* %3, %struct.file_lock** %9, align 8
  %10 = load %struct.file*, %struct.file** %6, align 8
  %11 = getelementptr inbounds %struct.file, %struct.file* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = icmp ne %struct.TYPE_2__* %12, null
  br i1 %13, label %14, label %31

14:                                               ; preds = %4
  %15 = load %struct.file*, %struct.file** %6, align 8
  %16 = getelementptr inbounds %struct.file, %struct.file* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32 (%struct.file*, i32, %struct.file_lock*)*, i32 (%struct.file*, i32, %struct.file_lock*)** %18, align 8
  %20 = icmp ne i32 (%struct.file*, i32, %struct.file_lock*)* %19, null
  br i1 %20, label %21, label %31

21:                                               ; preds = %14
  %22 = load %struct.file*, %struct.file** %6, align 8
  %23 = getelementptr inbounds %struct.file, %struct.file* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32 (%struct.file*, i32, %struct.file_lock*)*, i32 (%struct.file*, i32, %struct.file_lock*)** %25, align 8
  %27 = load %struct.file*, %struct.file** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.file_lock*, %struct.file_lock** %8, align 8
  %30 = call i32 %26(%struct.file* %27, i32 %28, %struct.file_lock* %29)
  store i32 %30, i32* %5, align 4
  br label %36

31:                                               ; preds = %14, %4
  %32 = load %struct.file*, %struct.file** %6, align 8
  %33 = load %struct.file_lock*, %struct.file_lock** %8, align 8
  %34 = load %struct.file_lock*, %struct.file_lock** %9, align 8
  %35 = call i32 @posix_lock_file(%struct.file* %32, %struct.file_lock* %33, %struct.file_lock* %34)
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %31, %21
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local i32 @posix_lock_file(%struct.file*, %struct.file_lock*, %struct.file_lock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
