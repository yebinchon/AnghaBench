; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/coda/extr_file.c_coda_file_splice_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/coda/extr_file.c_coda_file_splice_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }
%struct.pipe_inode_info = type { i32 }
%struct.coda_file_info = type { i64, %struct.file* }

@CODA_MAGIC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32*, %struct.pipe_inode_info*, i64, i32)* @coda_file_splice_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coda_file_splice_read(%struct.file* %0, i32* %1, %struct.pipe_inode_info* %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.pipe_inode_info*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32 (%struct.file*, i32*, %struct.pipe_inode_info*, i64, i32)*, align 8
  %12 = alloca %struct.coda_file_info*, align 8
  %13 = alloca %struct.file*, align 8
  store %struct.file* %0, %struct.file** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.pipe_inode_info* %2, %struct.pipe_inode_info** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load %struct.file*, %struct.file** %6, align 8
  %15 = call %struct.coda_file_info* @CODA_FTOC(%struct.file* %14)
  store %struct.coda_file_info* %15, %struct.coda_file_info** %12, align 8
  %16 = load %struct.coda_file_info*, %struct.coda_file_info** %12, align 8
  %17 = icmp ne %struct.coda_file_info* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %5
  %19 = load %struct.coda_file_info*, %struct.coda_file_info** %12, align 8
  %20 = getelementptr inbounds %struct.coda_file_info, %struct.coda_file_info* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @CODA_MAGIC, align 8
  %23 = icmp ne i64 %21, %22
  br label %24

24:                                               ; preds = %18, %5
  %25 = phi i1 [ true, %5 ], [ %23, %18 ]
  %26 = zext i1 %25 to i32
  %27 = call i32 @BUG_ON(i32 %26)
  %28 = load %struct.coda_file_info*, %struct.coda_file_info** %12, align 8
  %29 = getelementptr inbounds %struct.coda_file_info, %struct.coda_file_info* %28, i32 0, i32 1
  %30 = load %struct.file*, %struct.file** %29, align 8
  store %struct.file* %30, %struct.file** %13, align 8
  %31 = load %struct.file*, %struct.file** %13, align 8
  %32 = getelementptr inbounds %struct.file, %struct.file* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = bitcast {}** %34 to i32 (%struct.file*, i32*, %struct.pipe_inode_info*, i64, i32)**
  %36 = load i32 (%struct.file*, i32*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i32*, %struct.pipe_inode_info*, i64, i32)** %35, align 8
  store i32 (%struct.file*, i32*, %struct.pipe_inode_info*, i64, i32)* %36, i32 (%struct.file*, i32*, %struct.pipe_inode_info*, i64, i32)** %11, align 8
  %37 = load i32 (%struct.file*, i32*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i32*, %struct.pipe_inode_info*, i64, i32)** %11, align 8
  %38 = icmp ne i32 (%struct.file*, i32*, %struct.pipe_inode_info*, i64, i32)* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %24
  store i32 (%struct.file*, i32*, %struct.pipe_inode_info*, i64, i32)* @default_file_splice_read, i32 (%struct.file*, i32*, %struct.pipe_inode_info*, i64, i32)** %11, align 8
  br label %40

40:                                               ; preds = %39, %24
  %41 = load i32 (%struct.file*, i32*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i32*, %struct.pipe_inode_info*, i64, i32)** %11, align 8
  %42 = load %struct.file*, %struct.file** %13, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %8, align 8
  %45 = load i64, i64* %9, align 8
  %46 = load i32, i32* %10, align 4
  %47 = call i32 %41(%struct.file* %42, i32* %43, %struct.pipe_inode_info* %44, i64 %45, i32 %46)
  ret i32 %47
}

declare dso_local %struct.coda_file_info* @CODA_FTOC(%struct.file*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @default_file_splice_read(%struct.file*, i32*, %struct.pipe_inode_info*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
