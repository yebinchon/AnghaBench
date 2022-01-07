; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/befs/extr_linuxvfs.c_befs_get_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/befs/extr_linuxvfs.c_befs_get_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.buffer_head = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@BAD_IADDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"---> befs_get_block() for inode %lu, block %ld\00", align 1
@.str.1 = private unnamed_addr constant [85 x i8] c"befs_get_block() was asked for a block number less than zero: block %ld in inode %lu\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [62 x i8] c"befs_get_block() was asked to write to block %ld in inode %lu\00", align 1
@EPERM = common dso_local global i32 0, align 4
@BEFS_OK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [53 x i8] c"<--- befs_get_block() for inode %lu, block %ld ERROR\00", align 1
@EFBIG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [65 x i8] c"<--- befs_get_block() for inode %lu, block %ld, disk address %lu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, %struct.buffer_head*, i32)* @befs_get_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @befs_get_block(%struct.inode* %0, i32 %1, %struct.buffer_head* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.super_block*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.buffer_head* %2, %struct.buffer_head** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.inode*, %struct.inode** %6, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 1
  %17 = load %struct.super_block*, %struct.super_block** %16, align 8
  store %struct.super_block* %17, %struct.super_block** %10, align 8
  %18 = load %struct.inode*, %struct.inode** %6, align 8
  %19 = call %struct.TYPE_4__* @BEFS_I(%struct.inode* %18)
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store i32* %21, i32** %11, align 8
  %22 = load i32, i32* @BAD_IADDR, align 4
  store i32 %22, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %23 = load %struct.super_block*, %struct.super_block** %10, align 8
  %24 = load %struct.inode*, %struct.inode** %6, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 (%struct.super_block*, i8*, i32, i32, ...) @befs_debug(%struct.super_block* %23, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %27)
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %4
  %32 = load %struct.super_block*, %struct.super_block** %10, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.inode*, %struct.inode** %6, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @befs_error(%struct.super_block* %32, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.1, i64 0, i64 0), i32 %33, i32 %36)
  %38 = load i32, i32* @EIO, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %85

40:                                               ; preds = %4
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %40
  %44 = load %struct.super_block*, %struct.super_block** %10, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.inode*, %struct.inode** %6, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @befs_error(%struct.super_block* %44, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0), i32 %45, i32 %48)
  %50 = load i32, i32* @EPERM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %85

52:                                               ; preds = %40
  %53 = load %struct.super_block*, %struct.super_block** %10, align 8
  %54 = load i32*, i32** %11, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @befs_fblock2brun(%struct.super_block* %53, i32* %54, i32 %55, i32* %12)
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* @BEFS_OK, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %69

60:                                               ; preds = %52
  %61 = load %struct.super_block*, %struct.super_block** %10, align 8
  %62 = load %struct.inode*, %struct.inode** %6, align 8
  %63 = getelementptr inbounds %struct.inode, %struct.inode* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @befs_error(%struct.super_block* %61, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i32 %64, i32 %65)
  %67 = load i32, i32* @EFBIG, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %5, align 4
  br label %85

69:                                               ; preds = %52
  %70 = load %struct.super_block*, %struct.super_block** %10, align 8
  %71 = call i64 @iaddr2blockno(%struct.super_block* %70, i32* %12)
  store i64 %71, i64* %14, align 8
  %72 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %73 = load %struct.inode*, %struct.inode** %6, align 8
  %74 = getelementptr inbounds %struct.inode, %struct.inode* %73, i32 0, i32 1
  %75 = load %struct.super_block*, %struct.super_block** %74, align 8
  %76 = load i64, i64* %14, align 8
  %77 = call i32 @map_bh(%struct.buffer_head* %72, %struct.super_block* %75, i64 %76)
  %78 = load %struct.super_block*, %struct.super_block** %10, align 8
  %79 = load %struct.inode*, %struct.inode** %6, align 8
  %80 = getelementptr inbounds %struct.inode, %struct.inode* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %7, align 4
  %83 = load i64, i64* %14, align 8
  %84 = call i32 (%struct.super_block*, i8*, i32, i32, ...) @befs_debug(%struct.super_block* %78, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.4, i64 0, i64 0), i32 %81, i32 %82, i64 %83)
  store i32 0, i32* %5, align 4
  br label %85

85:                                               ; preds = %69, %60, %43, %31
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local %struct.TYPE_4__* @BEFS_I(%struct.inode*) #1

declare dso_local i32 @befs_debug(%struct.super_block*, i8*, i32, i32, ...) #1

declare dso_local i32 @befs_error(%struct.super_block*, i8*, i32, i32) #1

declare dso_local i32 @befs_fblock2brun(%struct.super_block*, i32*, i32, i32*) #1

declare dso_local i64 @iaddr2blockno(%struct.super_block*, i32*) #1

declare dso_local i32 @map_bh(%struct.buffer_head*, %struct.super_block*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
