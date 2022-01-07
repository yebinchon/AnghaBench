; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_inode.c_ext3_get_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_inode.c_ext3_get_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.buffer_head = type { i32 }

@DIO_MAX_BLOCKS = common dso_local global i32 0, align 4
@DIO_CREDITS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, %struct.buffer_head*, i32)* @ext3_get_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext3_get_block(%struct.inode* %0, i32 %1, %struct.buffer_head* %2, i32 %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.buffer_head* %2, %struct.buffer_head** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = call i32* (...) @ext3_journal_current_handle()
  store i32* %13, i32** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %14 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %15 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.inode*, %struct.inode** %5, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = lshr i32 %16, %19
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %50

23:                                               ; preds = %4
  %24 = load i32*, i32** %9, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %50, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* @DIO_MAX_BLOCKS, align 4
  %29 = icmp ugt i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32, i32* @DIO_MAX_BLOCKS, align 4
  store i32 %31, i32* %12, align 4
  br label %32

32:                                               ; preds = %30, %26
  %33 = load %struct.inode*, %struct.inode** %5, align 8
  %34 = load i64, i64* @DIO_CREDITS, align 8
  %35 = load %struct.inode*, %struct.inode** %5, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @EXT3_QUOTA_TRANS_BLOCKS(i32 %37)
  %39 = mul nsw i32 2, %38
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %34, %40
  %42 = call i32* @ext3_journal_start(%struct.inode* %33, i64 %41)
  store i32* %42, i32** %9, align 8
  %43 = load i32*, i32** %9, align 8
  %44 = call i64 @IS_ERR(i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %32
  %47 = load i32*, i32** %9, align 8
  %48 = call i32 @PTR_ERR(i32* %47)
  store i32 %48, i32* %10, align 4
  br label %75

49:                                               ; preds = %32
  store i32 1, i32* %11, align 4
  br label %50

50:                                               ; preds = %49, %23, %4
  %51 = load i32*, i32** %9, align 8
  %52 = load %struct.inode*, %struct.inode** %5, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %12, align 4
  %55 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @ext3_get_blocks_handle(i32* %51, %struct.inode* %52, i32 %53, i32 %54, %struct.buffer_head* %55, i32 %56)
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %50
  %61 = load i32, i32* %10, align 4
  %62 = load %struct.inode*, %struct.inode** %5, align 8
  %63 = getelementptr inbounds %struct.inode, %struct.inode* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = shl i32 %61, %64
  %66 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %67 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  store i32 0, i32* %10, align 4
  br label %68

68:                                               ; preds = %60, %50
  %69 = load i32, i32* %11, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i32*, i32** %9, align 8
  %73 = call i32 @ext3_journal_stop(i32* %72)
  br label %74

74:                                               ; preds = %71, %68
  br label %75

75:                                               ; preds = %74, %46
  %76 = load i32, i32* %10, align 4
  ret i32 %76
}

declare dso_local i32* @ext3_journal_current_handle(...) #1

declare dso_local i32* @ext3_journal_start(%struct.inode*, i64) #1

declare dso_local i32 @EXT3_QUOTA_TRANS_BLOCKS(i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @ext3_get_blocks_handle(i32*, %struct.inode*, i32, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @ext3_journal_stop(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
