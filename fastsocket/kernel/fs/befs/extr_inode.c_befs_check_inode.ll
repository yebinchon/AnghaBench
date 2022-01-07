; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/befs/extr_inode.c_befs_check_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/befs/extr_inode.c_befs_check_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@BEFS_INODE_MAGIC1 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"Inode has a bad magic header - inode = %lu\00", align 1
@BEFS_BAD_INODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"inode blocknr field disagrees with vfs VFS: %lu, Inode %lu\00", align 1
@BEFS_INODE_IN_USE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"inode is not used - inode = %lu\00", align 1
@BEFS_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @befs_check_inode(%struct.super_block* %0, %struct.TYPE_3__* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.super_block*, %struct.super_block** %5, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @fs32_to_cpu(%struct.super_block* %11, i32 %14)
  store i64 %15, i64* %8, align 8
  %16 = load %struct.super_block*, %struct.super_block** %5, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @fsrun_to_cpu(%struct.super_block* %16, i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load %struct.super_block*, %struct.super_block** %5, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @fs32_to_cpu(%struct.super_block* %21, i32 %24)
  store i64 %25, i64* %10, align 8
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* @BEFS_INODE_MAGIC1, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %3
  %30 = load %struct.super_block*, %struct.super_block** %5, align 8
  %31 = load i64, i64* %7, align 8
  %32 = call i32 (%struct.super_block*, i8*, i64, ...) @befs_error(%struct.super_block* %30, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %31)
  %33 = load i32, i32* @BEFS_BAD_INODE, align 4
  store i32 %33, i32* %4, align 4
  br label %58

34:                                               ; preds = %3
  %35 = load i64, i64* %7, align 8
  %36 = load %struct.super_block*, %struct.super_block** %5, align 8
  %37 = call i64 @iaddr2blockno(%struct.super_block* %36, i32* %9)
  %38 = icmp ne i64 %35, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %34
  %40 = load %struct.super_block*, %struct.super_block** %5, align 8
  %41 = load i64, i64* %7, align 8
  %42 = load %struct.super_block*, %struct.super_block** %5, align 8
  %43 = call i64 @iaddr2blockno(%struct.super_block* %42, i32* %9)
  %44 = call i32 (%struct.super_block*, i8*, i64, ...) @befs_error(%struct.super_block* %40, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i64 %41, i64 %43)
  %45 = load i32, i32* @BEFS_BAD_INODE, align 4
  store i32 %45, i32* %4, align 4
  br label %58

46:                                               ; preds = %34
  %47 = load i64, i64* %10, align 8
  %48 = load i64, i64* @BEFS_INODE_IN_USE, align 8
  %49 = and i64 %47, %48
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %46
  %52 = load %struct.super_block*, %struct.super_block** %5, align 8
  %53 = load i64, i64* %7, align 8
  %54 = call i32 (%struct.super_block*, i8*, i64, ...) @befs_error(%struct.super_block* %52, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i64 %53)
  %55 = load i32, i32* @BEFS_BAD_INODE, align 4
  store i32 %55, i32* %4, align 4
  br label %58

56:                                               ; preds = %46
  %57 = load i32, i32* @BEFS_OK, align 4
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %56, %51, %39, %29
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i64 @fs32_to_cpu(%struct.super_block*, i32) #1

declare dso_local i32 @fsrun_to_cpu(%struct.super_block*, i32) #1

declare dso_local i32 @befs_error(%struct.super_block*, i8*, i64, ...) #1

declare dso_local i64 @iaddr2blockno(%struct.super_block*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
