; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_ext4_journalled_get_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_ext4_journalled_get_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i32, i32, %struct.page* }
%struct.page = type { i32 }

@EXT4_GET_BLOCKS_CREATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, %struct.buffer_head*, i32)* @ext4_journalled_get_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_journalled_get_block(%struct.inode* %0, i32 %1, %struct.buffer_head* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.page*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.buffer_head* %2, %struct.buffer_head** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = call i32* (...) @ext4_journal_current_handle()
  store i32* %13, i32** %10, align 8
  %14 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %15 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %14, i32 0, i32 2
  %16 = load %struct.page*, %struct.page** %15, align 8
  %17 = icmp ne %struct.page* %16, null
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @BUG_ON(i32 %19)
  %21 = load i32*, i32** %10, align 8
  %22 = load %struct.inode*, %struct.inode** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %4
  %28 = load i32, i32* @EXT4_GET_BLOCKS_CREATE, align 4
  br label %30

29:                                               ; preds = %4
  br label %30

30:                                               ; preds = %29, %27
  %31 = phi i32 [ %28, %27 ], [ 0, %29 ]
  %32 = call i32 @ext4_get_blocks(i32* %21, %struct.inode* %22, i32 %23, i32 1, %struct.buffer_head* %24, i32 %31)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %76

35:                                               ; preds = %30
  %36 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %37 = call i64 @buffer_new(%struct.buffer_head* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %75

39:                                               ; preds = %35
  %40 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %41 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %40, i32 0, i32 2
  %42 = load %struct.page*, %struct.page** %41, align 8
  store %struct.page* %42, %struct.page** %12, align 8
  %43 = load %struct.page*, %struct.page** %12, align 8
  %44 = call i64 @PageUptodate(%struct.page* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %74

46:                                               ; preds = %39
  %47 = load i32*, i32** %10, align 8
  %48 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %49 = call i32 @ext4_journal_get_write_access(i32* %47, %struct.buffer_head* %48)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load i32, i32* %11, align 4
  store i32 %53, i32* %5, align 4
  br label %78

54:                                               ; preds = %46
  %55 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %56 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %59 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @unmap_underlying_metadata(i32 %57, i32 %60)
  %62 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %63 = call i32 @clear_buffer_new(%struct.buffer_head* %62)
  %64 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %65 = call i32 @set_buffer_uptodate(%struct.buffer_head* %64)
  %66 = load i32*, i32** %10, align 8
  %67 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %68 = call i32 @jbd2_journal_dirty_metadata(i32* %66, %struct.buffer_head* %67)
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %11, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %54
  %72 = load i32, i32* %11, align 4
  store i32 %72, i32* %5, align 4
  br label %78

73:                                               ; preds = %54
  br label %74

74:                                               ; preds = %73, %39
  br label %75

75:                                               ; preds = %74, %35
  store i32 0, i32* %11, align 4
  br label %76

76:                                               ; preds = %75, %30
  %77 = load i32, i32* %11, align 4
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %76, %71, %52
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local i32* @ext4_journal_current_handle(...) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ext4_get_blocks(i32*, %struct.inode*, i32, i32, %struct.buffer_head*, i32) #1

declare dso_local i64 @buffer_new(%struct.buffer_head*) #1

declare dso_local i64 @PageUptodate(%struct.page*) #1

declare dso_local i32 @ext4_journal_get_write_access(i32*, %struct.buffer_head*) #1

declare dso_local i32 @unmap_underlying_metadata(i32, i32) #1

declare dso_local i32 @clear_buffer_new(%struct.buffer_head*) #1

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @jbd2_journal_dirty_metadata(i32*, %struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
