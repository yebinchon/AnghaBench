; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_stree.c_pathrelse_and_restore.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_stree.c_pathrelse_and_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.treepath = type { i32 }
%struct.buffer_head = type { i32 }

@ILLEGAL_PATH_ELEMENT_OFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"clm-4000: invalid path offset\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pathrelse_and_restore(%struct.super_block* %0, %struct.treepath* %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.treepath*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.buffer_head*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store %struct.treepath* %1, %struct.treepath** %4, align 8
  %7 = load %struct.treepath*, %struct.treepath** %4, align 8
  %8 = getelementptr inbounds %struct.treepath, %struct.treepath* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @ILLEGAL_PATH_ELEMENT_OFFSET, align 4
  %12 = icmp slt i32 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @RFALSE(i32 %13, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %19, %2
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @ILLEGAL_PATH_ELEMENT_OFFSET, align 4
  %18 = icmp sgt i32 %16, %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %15
  %20 = load %struct.treepath*, %struct.treepath** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %5, align 4
  %23 = call %struct.buffer_head* @PATH_OFFSET_PBUFFER(%struct.treepath* %20, i32 %21)
  store %struct.buffer_head* %23, %struct.buffer_head** %6, align 8
  %24 = load %struct.super_block*, %struct.super_block** %3, align 8
  %25 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %26 = call i32 @reiserfs_restore_prepared_buffer(%struct.super_block* %24, %struct.buffer_head* %25)
  %27 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %28 = call i32 @brelse(%struct.buffer_head* %27)
  br label %15

29:                                               ; preds = %15
  %30 = load i32, i32* @ILLEGAL_PATH_ELEMENT_OFFSET, align 4
  %31 = load %struct.treepath*, %struct.treepath** %4, align 8
  %32 = getelementptr inbounds %struct.treepath, %struct.treepath* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  ret void
}

declare dso_local i32 @RFALSE(i32, i8*) #1

declare dso_local %struct.buffer_head* @PATH_OFFSET_PBUFFER(%struct.treepath*, i32) #1

declare dso_local i32 @reiserfs_restore_prepared_buffer(%struct.super_block*, %struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
