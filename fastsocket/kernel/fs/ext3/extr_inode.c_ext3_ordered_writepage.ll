; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_inode.c_ext3_ordered_writepage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_inode.c_ext3_ordered_writepage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.inode = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.writeback_control = type { i32 }
%struct.buffer_head = type { i32 }

@BH_Dirty = common dso_local global i32 0, align 4
@BH_Uptodate = common dso_local global i32 0, align 4
@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@buffer_unmapped = common dso_local global i32 0, align 4
@bget_one = common dso_local global i32 0, align 4
@ext3_get_block = common dso_local global i32* null, align 8
@journal_dirty_data_fn = common dso_local global i32 0, align 4
@bput_one = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*, %struct.writeback_control*)* @ext3_ordered_writepage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext3_ordered_writepage(%struct.page* %0, %struct.writeback_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.writeback_control*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %4, align 8
  store %struct.writeback_control* %1, %struct.writeback_control** %5, align 8
  %11 = load %struct.page*, %struct.page** %4, align 8
  %12 = getelementptr inbounds %struct.page, %struct.page* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.inode*, %struct.inode** %14, align 8
  store %struct.inode* %15, %struct.inode** %6, align 8
  store i32* null, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %16 = load %struct.page*, %struct.page** %4, align 8
  %17 = call i32 @PageLocked(%struct.page* %16)
  %18 = call i32 @J_ASSERT(i32 %17)
  %19 = call i64 (...) @ext3_journal_current_handle()
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %104

22:                                               ; preds = %2
  %23 = load %struct.page*, %struct.page** %4, align 8
  %24 = call i32 @trace_ext3_ordered_writepage(%struct.page* %23)
  %25 = load %struct.page*, %struct.page** %4, align 8
  %26 = call i32 @page_has_buffers(%struct.page* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %43, label %28

28:                                               ; preds = %22
  %29 = load %struct.page*, %struct.page** %4, align 8
  %30 = load %struct.inode*, %struct.inode** %6, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @BH_Dirty, align 4
  %36 = shl i32 1, %35
  %37 = load i32, i32* @BH_Uptodate, align 4
  %38 = shl i32 1, %37
  %39 = or i32 %36, %38
  %40 = call i32 @create_empty_buffers(%struct.page* %29, i32 %34, i32 %39)
  %41 = load %struct.page*, %struct.page** %4, align 8
  %42 = call %struct.buffer_head* @page_buffers(%struct.page* %41)
  store %struct.buffer_head* %42, %struct.buffer_head** %7, align 8
  br label %56

43:                                               ; preds = %22
  %44 = load %struct.page*, %struct.page** %4, align 8
  %45 = call %struct.buffer_head* @page_buffers(%struct.page* %44)
  store %struct.buffer_head* %45, %struct.buffer_head** %7, align 8
  %46 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %47 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %48 = load i32, i32* @buffer_unmapped, align 4
  %49 = call i32 @walk_page_buffers(i32* null, %struct.buffer_head* %46, i32 0, i32 %47, i32* null, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %43
  %52 = load %struct.page*, %struct.page** %4, align 8
  %53 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %54 = call i32 @block_write_full_page(%struct.page* %52, i32* null, %struct.writeback_control* %53)
  store i32 %54, i32* %3, align 4
  br label %111

55:                                               ; preds = %43
  br label %56

56:                                               ; preds = %55, %28
  %57 = load %struct.inode*, %struct.inode** %6, align 8
  %58 = load %struct.inode*, %struct.inode** %6, align 8
  %59 = call i32 @ext3_writepage_trans_blocks(%struct.inode* %58)
  %60 = call i32* @ext3_journal_start(%struct.inode* %57, i32 %59)
  store i32* %60, i32** %8, align 8
  %61 = load i32*, i32** %8, align 8
  %62 = call i64 @IS_ERR(i32* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %56
  %65 = load i32*, i32** %8, align 8
  %66 = call i32 @PTR_ERR(i32* %65)
  store i32 %66, i32* %9, align 4
  br label %104

67:                                               ; preds = %56
  %68 = load i32*, i32** %8, align 8
  %69 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %70 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %71 = load i32, i32* @bget_one, align 4
  %72 = call i32 @walk_page_buffers(i32* %68, %struct.buffer_head* %69, i32 0, i32 %70, i32* null, i32 %71)
  %73 = load %struct.page*, %struct.page** %4, align 8
  %74 = load i32*, i32** @ext3_get_block, align 8
  %75 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %76 = call i32 @block_write_full_page(%struct.page* %73, i32* %74, %struct.writeback_control* %75)
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %90

79:                                               ; preds = %67
  %80 = load i32*, i32** %8, align 8
  %81 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %82 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %83 = load i32, i32* @journal_dirty_data_fn, align 4
  %84 = call i32 @walk_page_buffers(i32* %80, %struct.buffer_head* %81, i32 0, i32 %82, i32* null, i32 %83)
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* %9, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %79
  %88 = load i32, i32* %10, align 4
  store i32 %88, i32* %9, align 4
  br label %89

89:                                               ; preds = %87, %79
  br label %90

90:                                               ; preds = %89, %67
  %91 = load i32*, i32** %8, align 8
  %92 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %93 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %94 = load i32, i32* @bput_one, align 4
  %95 = call i32 @walk_page_buffers(i32* %91, %struct.buffer_head* %92, i32 0, i32 %93, i32* null, i32 %94)
  %96 = load i32*, i32** %8, align 8
  %97 = call i32 @ext3_journal_stop(i32* %96)
  store i32 %97, i32* %10, align 4
  %98 = load i32, i32* %9, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %90
  %101 = load i32, i32* %10, align 4
  store i32 %101, i32* %9, align 4
  br label %102

102:                                              ; preds = %100, %90
  %103 = load i32, i32* %9, align 4
  store i32 %103, i32* %3, align 4
  br label %111

104:                                              ; preds = %64, %21
  %105 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %106 = load %struct.page*, %struct.page** %4, align 8
  %107 = call i32 @redirty_page_for_writepage(%struct.writeback_control* %105, %struct.page* %106)
  %108 = load %struct.page*, %struct.page** %4, align 8
  %109 = call i32 @unlock_page(%struct.page* %108)
  %110 = load i32, i32* %9, align 4
  store i32 %110, i32* %3, align 4
  br label %111

111:                                              ; preds = %104, %102, %51
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i32 @J_ASSERT(i32) #1

declare dso_local i32 @PageLocked(%struct.page*) #1

declare dso_local i64 @ext3_journal_current_handle(...) #1

declare dso_local i32 @trace_ext3_ordered_writepage(%struct.page*) #1

declare dso_local i32 @page_has_buffers(%struct.page*) #1

declare dso_local i32 @create_empty_buffers(%struct.page*, i32, i32) #1

declare dso_local %struct.buffer_head* @page_buffers(%struct.page*) #1

declare dso_local i32 @walk_page_buffers(i32*, %struct.buffer_head*, i32, i32, i32*, i32) #1

declare dso_local i32 @block_write_full_page(%struct.page*, i32*, %struct.writeback_control*) #1

declare dso_local i32* @ext3_journal_start(%struct.inode*, i32) #1

declare dso_local i32 @ext3_writepage_trans_blocks(%struct.inode*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @ext3_journal_stop(i32*) #1

declare dso_local i32 @redirty_page_for_writepage(%struct.writeback_control*, %struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
