; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_splice.c_generic_file_splice_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_splice.c_generic_file_splice_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.pipe_inode_info = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @generic_file_splice_read(%struct.file* %0, i64* %1, %struct.pipe_inode_info* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.file*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.pipe_inode_info*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %7, align 8
  store i64* %1, i64** %8, align 8
  store %struct.pipe_inode_info* %2, %struct.pipe_inode_info** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load %struct.file*, %struct.file** %7, align 8
  %16 = getelementptr inbounds %struct.file, %struct.file* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @i_size_read(i32 %19)
  store i64 %20, i64* %12, align 8
  %21 = load i64*, i64** %8, align 8
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %12, align 8
  %24 = icmp sge i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %61

29:                                               ; preds = %5
  %30 = load i64, i64* %12, align 8
  %31 = load i64*, i64** %8, align 8
  %32 = load i64, i64* %31, align 8
  %33 = sub nsw i64 %30, %32
  store i64 %33, i64* %13, align 8
  %34 = load i64, i64* %13, align 8
  %35 = load i64, i64* %10, align 8
  %36 = icmp ult i64 %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %29
  %41 = load i64, i64* %13, align 8
  store i64 %41, i64* %10, align 8
  br label %42

42:                                               ; preds = %40, %29
  %43 = load %struct.file*, %struct.file** %7, align 8
  %44 = load i64*, i64** %8, align 8
  %45 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %9, align 8
  %46 = load i64, i64* %10, align 8
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @__generic_file_splice_read(%struct.file* %43, i64* %44, %struct.pipe_inode_info* %45, i64 %46, i32 %47)
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* %14, align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %42
  %52 = load i32, i32* %14, align 4
  %53 = sext i32 %52 to i64
  %54 = load i64*, i64** %8, align 8
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %55, %53
  store i64 %56, i64* %54, align 8
  %57 = load %struct.file*, %struct.file** %7, align 8
  %58 = call i32 @file_accessed(%struct.file* %57)
  br label %59

59:                                               ; preds = %51, %42
  %60 = load i32, i32* %14, align 4
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %59, %28
  %62 = load i32, i32* %6, align 4
  ret i32 %62
}

declare dso_local i64 @i_size_read(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @__generic_file_splice_read(%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32) #1

declare dso_local i32 @file_accessed(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
