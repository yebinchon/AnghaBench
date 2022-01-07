; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_ext4_get_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_ext4_get_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }

@DIO_MAX_BLOCKS = common dso_local global i32 0, align 4
@EXT4_GET_BLOCKS_CREATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_get_block(%struct.inode* %0, i32 %1, %struct.buffer_head* %2, i32 %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.buffer_head* %2, %struct.buffer_head** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = call i32* (...) @ext4_journal_current_handle()
  store i32* %14, i32** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %15 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %16 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.inode*, %struct.inode** %5, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = lshr i32 %17, %20
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %47

24:                                               ; preds = %4
  %25 = load i32*, i32** %9, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %47, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* @DIO_MAX_BLOCKS, align 4
  %30 = icmp ugt i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* @DIO_MAX_BLOCKS, align 4
  store i32 %32, i32* %12, align 4
  br label %33

33:                                               ; preds = %31, %27
  %34 = load %struct.inode*, %struct.inode** %5, align 8
  %35 = load i32, i32* %12, align 4
  %36 = call i32 @ext4_chunk_trans_blocks(%struct.inode* %34, i32 %35)
  store i32 %36, i32* %13, align 4
  %37 = load %struct.inode*, %struct.inode** %5, align 8
  %38 = load i32, i32* %13, align 4
  %39 = call i32* @ext4_journal_start(%struct.inode* %37, i32 %38)
  store i32* %39, i32** %9, align 8
  %40 = load i32*, i32** %9, align 8
  %41 = call i64 @IS_ERR(i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %33
  %44 = load i32*, i32** %9, align 8
  %45 = call i32 @PTR_ERR(i32* %44)
  store i32 %45, i32* %10, align 4
  br label %78

46:                                               ; preds = %33
  store i32 1, i32* %11, align 4
  br label %47

47:                                               ; preds = %46, %24, %4
  %48 = load i32*, i32** %9, align 8
  %49 = load %struct.inode*, %struct.inode** %5, align 8
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %12, align 4
  %52 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %47
  %56 = load i32, i32* @EXT4_GET_BLOCKS_CREATE, align 4
  br label %58

57:                                               ; preds = %47
  br label %58

58:                                               ; preds = %57, %55
  %59 = phi i32 [ %56, %55 ], [ 0, %57 ]
  %60 = call i32 @ext4_get_blocks(i32* %48, %struct.inode* %49, i32 %50, i32 %51, %struct.buffer_head* %52, i32 %59)
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %58
  %64 = load i32, i32* %10, align 4
  %65 = load %struct.inode*, %struct.inode** %5, align 8
  %66 = getelementptr inbounds %struct.inode, %struct.inode* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = shl i32 %64, %67
  %69 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %70 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  store i32 0, i32* %10, align 4
  br label %71

71:                                               ; preds = %63, %58
  %72 = load i32, i32* %11, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i32*, i32** %9, align 8
  %76 = call i32 @ext4_journal_stop(i32* %75)
  br label %77

77:                                               ; preds = %74, %71
  br label %78

78:                                               ; preds = %77, %43
  %79 = load i32, i32* %10, align 4
  ret i32 %79
}

declare dso_local i32* @ext4_journal_current_handle(...) #1

declare dso_local i32 @ext4_chunk_trans_blocks(%struct.inode*, i32) #1

declare dso_local i32* @ext4_journal_start(%struct.inode*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @ext4_get_blocks(i32*, %struct.inode*, i32, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @ext4_journal_stop(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
