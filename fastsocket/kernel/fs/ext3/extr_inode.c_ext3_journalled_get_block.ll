; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_inode.c_ext3_journalled_get_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_inode.c_ext3_journalled_get_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i32, i32, %struct.page* }
%struct.page = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, %struct.buffer_head*, i32)* @ext3_journalled_get_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext3_journalled_get_block(%struct.inode* %0, i32 %1, %struct.buffer_head* %2, i32 %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.page*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.buffer_head* %2, %struct.buffer_head** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = call i32* (...) @ext3_journal_current_handle()
  store i32* %12, i32** %9, align 8
  %13 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %14 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %13, i32 0, i32 2
  %15 = load %struct.page*, %struct.page** %14, align 8
  %16 = icmp ne %struct.page* %15, null
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = load i32*, i32** %9, align 8
  %21 = load %struct.inode*, %struct.inode** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @ext3_get_blocks_handle(i32* %20, %struct.inode* %21, i32 %22, i32 1, %struct.buffer_head* %23, i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %67

28:                                               ; preds = %4
  %29 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %30 = call i64 @buffer_new(%struct.buffer_head* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %66

32:                                               ; preds = %28
  %33 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %34 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %33, i32 0, i32 2
  %35 = load %struct.page*, %struct.page** %34, align 8
  store %struct.page* %35, %struct.page** %11, align 8
  %36 = load %struct.page*, %struct.page** %11, align 8
  %37 = call i64 @PageUptodate(%struct.page* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %65

39:                                               ; preds = %32
  %40 = load i32*, i32** %9, align 8
  %41 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %42 = call i32 @ext3_journal_get_write_access(i32* %40, %struct.buffer_head* %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %68

46:                                               ; preds = %39
  %47 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %48 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %51 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @unmap_underlying_metadata(i32 %49, i32 %52)
  %54 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %55 = call i32 @clear_buffer_new(%struct.buffer_head* %54)
  %56 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %57 = call i32 @set_buffer_uptodate(%struct.buffer_head* %56)
  %58 = load i32*, i32** %9, align 8
  %59 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %60 = call i32 @ext3_journal_dirty_metadata(i32* %58, %struct.buffer_head* %59)
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %46
  br label %68

64:                                               ; preds = %46
  br label %65

65:                                               ; preds = %64, %32
  br label %66

66:                                               ; preds = %65, %28
  store i32 0, i32* %10, align 4
  br label %67

67:                                               ; preds = %66, %4
  br label %68

68:                                               ; preds = %67, %63, %45
  %69 = load i32, i32* %10, align 4
  ret i32 %69
}

declare dso_local i32* @ext3_journal_current_handle(...) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ext3_get_blocks_handle(i32*, %struct.inode*, i32, i32, %struct.buffer_head*, i32) #1

declare dso_local i64 @buffer_new(%struct.buffer_head*) #1

declare dso_local i64 @PageUptodate(%struct.page*) #1

declare dso_local i32 @ext3_journal_get_write_access(i32*, %struct.buffer_head*) #1

declare dso_local i32 @unmap_underlying_metadata(i32, i32) #1

declare dso_local i32 @clear_buffer_new(%struct.buffer_head*) #1

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @ext3_journal_dirty_metadata(i32*, %struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
