; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/coda/extr_dir.c_coda_readdir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/coda/extr_dir.c_coda_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { {}* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.coda_file_info = type { i64, %struct.file* }

@CODA_MAGIC = common dso_local global i64 0, align 8
@ENOTDIR = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32)* @coda_readdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coda_readdir(%struct.file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.coda_file_info*, align 8
  %9 = alloca %struct.file*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.inode*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.file*, %struct.file** %5, align 8
  %13 = call %struct.coda_file_info* @CODA_FTOC(%struct.file* %12)
  store %struct.coda_file_info* %13, %struct.coda_file_info** %8, align 8
  %14 = load %struct.coda_file_info*, %struct.coda_file_info** %8, align 8
  %15 = icmp ne %struct.coda_file_info* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load %struct.coda_file_info*, %struct.coda_file_info** %8, align 8
  %18 = getelementptr inbounds %struct.coda_file_info, %struct.coda_file_info* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @CODA_MAGIC, align 8
  %21 = icmp ne i64 %19, %20
  br label %22

22:                                               ; preds = %16, %3
  %23 = phi i1 [ true, %3 ], [ %21, %16 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @BUG_ON(i32 %24)
  %26 = load %struct.coda_file_info*, %struct.coda_file_info** %8, align 8
  %27 = getelementptr inbounds %struct.coda_file_info, %struct.coda_file_info* %26, i32 0, i32 1
  %28 = load %struct.file*, %struct.file** %27, align 8
  store %struct.file* %28, %struct.file** %9, align 8
  %29 = load %struct.file*, %struct.file** %9, align 8
  %30 = getelementptr inbounds %struct.file, %struct.file* %29, i32 0, i32 1
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = icmp ne %struct.TYPE_6__* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %22
  %34 = load i32, i32* @ENOTDIR, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %93

36:                                               ; preds = %22
  %37 = load %struct.file*, %struct.file** %9, align 8
  %38 = getelementptr inbounds %struct.file, %struct.file* %37, i32 0, i32 1
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = bitcast {}** %40 to i32 (%struct.file*, i8*, i32)**
  %42 = load i32 (%struct.file*, i8*, i32)*, i32 (%struct.file*, i8*, i32)** %41, align 8
  %43 = icmp ne i32 (%struct.file*, i8*, i32)* %42, null
  br i1 %43, label %44, label %86

44:                                               ; preds = %36
  %45 = load %struct.file*, %struct.file** %9, align 8
  %46 = getelementptr inbounds %struct.file, %struct.file* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load %struct.inode*, %struct.inode** %49, align 8
  store %struct.inode* %50, %struct.inode** %11, align 8
  %51 = load %struct.inode*, %struct.inode** %11, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 0
  %53 = call i32 @mutex_lock(i32* %52)
  %54 = load %struct.file*, %struct.file** %5, align 8
  %55 = getelementptr inbounds %struct.file, %struct.file* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.file*, %struct.file** %9, align 8
  %58 = getelementptr inbounds %struct.file, %struct.file* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* @ENOENT, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %10, align 4
  %61 = load %struct.inode*, %struct.inode** %11, align 8
  %62 = call i32 @IS_DEADDIR(%struct.inode* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %77, label %64

64:                                               ; preds = %44
  %65 = load %struct.file*, %struct.file** %9, align 8
  %66 = getelementptr inbounds %struct.file, %struct.file* %65, i32 0, i32 1
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = bitcast {}** %68 to i32 (%struct.file*, i8*, i32)**
  %70 = load i32 (%struct.file*, i8*, i32)*, i32 (%struct.file*, i8*, i32)** %69, align 8
  %71 = load %struct.file*, %struct.file** %9, align 8
  %72 = load i8*, i8** %6, align 8
  %73 = load i32, i32* %7, align 4
  %74 = call i32 %70(%struct.file* %71, i8* %72, i32 %73)
  store i32 %74, i32* %10, align 4
  %75 = load %struct.file*, %struct.file** %9, align 8
  %76 = call i32 @file_accessed(%struct.file* %75)
  br label %77

77:                                               ; preds = %64, %44
  %78 = load %struct.file*, %struct.file** %9, align 8
  %79 = getelementptr inbounds %struct.file, %struct.file* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.file*, %struct.file** %5, align 8
  %82 = getelementptr inbounds %struct.file, %struct.file* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = load %struct.inode*, %struct.inode** %11, align 8
  %84 = getelementptr inbounds %struct.inode, %struct.inode* %83, i32 0, i32 0
  %85 = call i32 @mutex_unlock(i32* %84)
  br label %91

86:                                               ; preds = %36
  %87 = load %struct.file*, %struct.file** %5, align 8
  %88 = load i8*, i8** %6, align 8
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @coda_venus_readdir(%struct.file* %87, i8* %88, i32 %89)
  store i32 %90, i32* %10, align 4
  br label %91

91:                                               ; preds = %86, %77
  %92 = load i32, i32* %10, align 4
  store i32 %92, i32* %4, align 4
  br label %93

93:                                               ; preds = %91, %33
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local %struct.coda_file_info* @CODA_FTOC(%struct.file*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @IS_DEADDIR(%struct.inode*) #1

declare dso_local i32 @file_accessed(%struct.file*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @coda_venus_readdir(%struct.file*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
