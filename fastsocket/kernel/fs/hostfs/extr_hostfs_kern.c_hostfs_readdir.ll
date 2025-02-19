; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hostfs/extr_hostfs_kern.c_hostfs_readdir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hostfs/extr_hostfs_kern.c_hostfs_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@DT_UNKNOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hostfs_readdir(%struct.file* %0, i8* %1, i32 (i8*, i8*, i32, i64, i64, i32)* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32 (i8*, i8*, i32, i64, i64, i32)*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 (i8*, i8*, i32, i64, i64, i32)* %2, i32 (i8*, i8*, i32, i64, i64, i32)** %7, align 8
  %14 = load %struct.file*, %struct.file** %5, align 8
  %15 = getelementptr inbounds %struct.file, %struct.file* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i8* @dentry_name(i32 %17, i32 0)
  store i8* %18, i8** %9, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %63

24:                                               ; preds = %3
  %25 = load i8*, i8** %9, align 8
  %26 = call i8* @open_dir(i8* %25, i32* %12)
  store i8* %26, i8** %8, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = call i32 @kfree(i8* %27)
  %29 = load i8*, i8** %8, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load i32, i32* %12, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %63

34:                                               ; preds = %24
  %35 = load %struct.file*, %struct.file** %5, align 8
  %36 = getelementptr inbounds %struct.file, %struct.file* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %10, align 8
  br label %38

38:                                               ; preds = %56, %34
  %39 = load i8*, i8** %8, align 8
  %40 = call i8* @read_dir(i8* %39, i64* %10, i64* %11, i32* %13)
  store i8* %40, i8** %9, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %60

42:                                               ; preds = %38
  %43 = load i32 (i8*, i8*, i32, i64, i64, i32)*, i32 (i8*, i8*, i32, i64, i64, i32)** %7, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = load i32, i32* %13, align 4
  %47 = load %struct.file*, %struct.file** %5, align 8
  %48 = getelementptr inbounds %struct.file, %struct.file* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %11, align 8
  %51 = load i32, i32* @DT_UNKNOWN, align 4
  %52 = call i32 %43(i8* %44, i8* %45, i32 %46, i64 %49, i64 %50, i32 %51)
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %42
  br label %60

56:                                               ; preds = %42
  %57 = load i64, i64* %10, align 8
  %58 = load %struct.file*, %struct.file** %5, align 8
  %59 = getelementptr inbounds %struct.file, %struct.file* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  br label %38

60:                                               ; preds = %55, %38
  %61 = load i8*, i8** %8, align 8
  %62 = call i32 @close_dir(i8* %61)
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %60, %31, %21
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i8* @dentry_name(i32, i32) #1

declare dso_local i8* @open_dir(i8*, i32*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i8* @read_dir(i8*, i64*, i64*, i32*) #1

declare dso_local i32 @close_dir(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
