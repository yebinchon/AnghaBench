; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_prints.c_check_internal_block_head.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_prints.c_check_internal_block_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32 }
%struct.block_head = type { i32 }

@DISK_LEAF_NODE_LEVEL = common dso_local global i64 0, align 8
@MAX_HEIGHT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"vs-6025\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"invalid level %z\00", align 1
@BLKH_SIZE = common dso_local global i32 0, align 4
@IH_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"vs-6030\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"invalid item number %z\00", align 1
@KEY_SIZE = common dso_local global i32 0, align 4
@DC_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"vs-6040\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"invalid free space %z\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buffer_head*)* @check_internal_block_head to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_internal_block_head(%struct.buffer_head* %0) #0 {
  %2 = alloca %struct.buffer_head*, align 8
  %3 = alloca %struct.block_head*, align 8
  store %struct.buffer_head* %0, %struct.buffer_head** %2, align 8
  %4 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %5 = call %struct.block_head* @B_BLK_HEAD(%struct.buffer_head* %4)
  store %struct.block_head* %5, %struct.block_head** %3, align 8
  %6 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %7 = call i64 @B_LEVEL(%struct.buffer_head* %6)
  %8 = load i64, i64* @DISK_LEAF_NODE_LEVEL, align 8
  %9 = icmp sgt i64 %7, %8
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %12 = call i64 @B_LEVEL(%struct.buffer_head* %11)
  %13 = load i64, i64* @MAX_HEIGHT, align 8
  %14 = icmp sle i64 %12, %13
  br i1 %14, label %18, label %15

15:                                               ; preds = %10, %1
  %16 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %17 = call i32 @reiserfs_panic(i32* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), %struct.buffer_head* %16)
  br label %18

18:                                               ; preds = %15, %10
  %19 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %20 = call i32 @B_NR_ITEMS(%struct.buffer_head* %19)
  %21 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %22 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @BLKH_SIZE, align 4
  %25 = sub nsw i32 %23, %24
  %26 = load i32, i32* @IH_SIZE, align 4
  %27 = sdiv i32 %25, %26
  %28 = icmp sgt i32 %20, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %18
  %30 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %31 = call i32 @reiserfs_panic(i32* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), %struct.buffer_head* %30)
  br label %32

32:                                               ; preds = %29, %18
  %33 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %34 = call i32 @B_FREE_SPACE(%struct.buffer_head* %33)
  %35 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %36 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @BLKH_SIZE, align 4
  %39 = sub nsw i32 %37, %38
  %40 = load i32, i32* @KEY_SIZE, align 4
  %41 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %42 = call i32 @B_NR_ITEMS(%struct.buffer_head* %41)
  %43 = mul nsw i32 %40, %42
  %44 = sub nsw i32 %39, %43
  %45 = load i32, i32* @DC_SIZE, align 4
  %46 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %47 = call i32 @B_NR_ITEMS(%struct.buffer_head* %46)
  %48 = add nsw i32 %47, 1
  %49 = mul nsw i32 %45, %48
  %50 = sub nsw i32 %44, %49
  %51 = icmp ne i32 %34, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %32
  %53 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %54 = call i32 @reiserfs_panic(i32* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), %struct.buffer_head* %53)
  br label %55

55:                                               ; preds = %52, %32
  ret void
}

declare dso_local %struct.block_head* @B_BLK_HEAD(%struct.buffer_head*) #1

declare dso_local i64 @B_LEVEL(%struct.buffer_head*) #1

declare dso_local i32 @reiserfs_panic(i32*, i8*, i8*, %struct.buffer_head*) #1

declare dso_local i32 @B_NR_ITEMS(%struct.buffer_head*) #1

declare dso_local i32 @B_FREE_SPACE(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
