; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_locks.c_locks_remove_posix.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_locks.c_locks_remove_posix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.file = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.file_lock = type { i32, %struct.TYPE_9__*, i32*, %struct.file*, i32, i32, i32, i64, i32 }
%struct.TYPE_9__ = type { i32 (%struct.file_lock*)* }

@F_UNLCK = common dso_local global i32 0, align 4
@FL_POSIX = common dso_local global i32 0, align 4
@FL_CLOSE = common dso_local global i32 0, align 4
@OFFSET_MAX = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_10__* null, align 8
@F_SETLK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @locks_remove_posix(%struct.file* %0, i32 %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.file_lock, align 8
  store %struct.file* %0, %struct.file** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.file*, %struct.file** %3, align 8
  %7 = getelementptr inbounds %struct.file, %struct.file* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %54

16:                                               ; preds = %2
  %17 = load i32, i32* @F_UNLCK, align 4
  %18 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %5, i32 0, i32 8
  store i32 %17, i32* %18, align 8
  %19 = load i32, i32* @FL_POSIX, align 4
  %20 = load i32, i32* @FL_CLOSE, align 4
  %21 = or i32 %19, %20
  %22 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %5, i32 0, i32 0
  store i32 %21, i32* %22, align 8
  %23 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %5, i32 0, i32 7
  store i64 0, i64* %23, align 8
  %24 = load i32, i32* @OFFSET_MAX, align 4
  %25 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %5, i32 0, i32 6
  store i32 %24, i32* %25, align 8
  %26 = load i32, i32* %4, align 4
  %27 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %5, i32 0, i32 5
  store i32 %26, i32* %27, align 4
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %5, i32 0, i32 4
  store i32 %30, i32* %31, align 8
  %32 = load %struct.file*, %struct.file** %3, align 8
  %33 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %5, i32 0, i32 3
  store %struct.file* %32, %struct.file** %33, align 8
  %34 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %5, i32 0, i32 1
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %34, align 8
  %35 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %5, i32 0, i32 2
  store i32* null, i32** %35, align 8
  %36 = load %struct.file*, %struct.file** %3, align 8
  %37 = load i32, i32* @F_SETLK, align 4
  %38 = call i32 @vfs_lock_file(%struct.file* %36, i32 %37, %struct.file_lock* %5, i32* null)
  %39 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %5, i32 0, i32 1
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %39, align 8
  %41 = icmp ne %struct.TYPE_9__* %40, null
  br i1 %41, label %42, label %54

42:                                               ; preds = %16
  %43 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %5, i32 0, i32 1
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i32 (%struct.file_lock*)*, i32 (%struct.file_lock*)** %45, align 8
  %47 = icmp ne i32 (%struct.file_lock*)* %46, null
  br i1 %47, label %48, label %54

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %5, i32 0, i32 1
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i32 (%struct.file_lock*)*, i32 (%struct.file_lock*)** %51, align 8
  %53 = call i32 %52(%struct.file_lock* %5)
  br label %54

54:                                               ; preds = %15, %48, %42, %16
  ret void
}

declare dso_local i32 @vfs_lock_file(%struct.file*, i32, %struct.file_lock*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
