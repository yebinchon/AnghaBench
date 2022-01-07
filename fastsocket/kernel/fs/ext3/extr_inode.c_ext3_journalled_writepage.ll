; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_inode.c_ext3_journalled_writepage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_inode.c_ext3_journalled_writepage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.writeback_control = type { i32 }
%struct.TYPE_4__ = type { i32 }

@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@ext3_journalled_get_block = common dso_local global i32 0, align 4
@do_journal_get_write_access = common dso_local global i32 0, align 4
@write_end_fn = common dso_local global i32 0, align 4
@EXT3_STATE_JDATA = common dso_local global i32 0, align 4
@ext3_get_block = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*, %struct.writeback_control*)* @ext3_journalled_writepage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext3_journalled_writepage(%struct.page* %0, %struct.writeback_control* %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca %struct.writeback_control*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %3, align 8
  store %struct.writeback_control* %1, %struct.writeback_control** %4, align 8
  %9 = load %struct.page*, %struct.page** %3, align 8
  %10 = getelementptr inbounds %struct.page, %struct.page* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.inode*, %struct.inode** %12, align 8
  store %struct.inode* %13, %struct.inode** %5, align 8
  store i32* null, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %14 = call i64 (...) @ext3_journal_current_handle()
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %91

17:                                               ; preds = %2
  %18 = load %struct.page*, %struct.page** %3, align 8
  %19 = call i32 @trace_ext3_journalled_writepage(%struct.page* %18)
  %20 = load %struct.inode*, %struct.inode** %5, align 8
  %21 = load %struct.inode*, %struct.inode** %5, align 8
  %22 = call i32 @ext3_writepage_trans_blocks(%struct.inode* %21)
  %23 = call i32* @ext3_journal_start(%struct.inode* %20, i32 %22)
  store i32* %23, i32** %6, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = call i64 @IS_ERR(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %17
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 @PTR_ERR(i32* %28)
  store i32 %29, i32* %7, align 4
  br label %91

30:                                               ; preds = %17
  %31 = load %struct.page*, %struct.page** %3, align 8
  %32 = call i32 @page_has_buffers(%struct.page* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load %struct.page*, %struct.page** %3, align 8
  %36 = call i64 @PageChecked(%struct.page* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %76

38:                                               ; preds = %34, %30
  %39 = load %struct.page*, %struct.page** %3, align 8
  %40 = call i32 @ClearPageChecked(%struct.page* %39)
  %41 = load %struct.page*, %struct.page** %3, align 8
  %42 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %43 = load i32, i32* @ext3_journalled_get_block, align 4
  %44 = call i32 @block_prepare_write(%struct.page* %41, i32 0, i32 %42, i32 %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %38
  %48 = load i32*, i32** %6, align 8
  %49 = call i32 @ext3_journal_stop(i32* %48)
  br label %95

50:                                               ; preds = %38
  %51 = load i32*, i32** %6, align 8
  %52 = load %struct.page*, %struct.page** %3, align 8
  %53 = call i32 @page_buffers(%struct.page* %52)
  %54 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %55 = load i32, i32* @do_journal_get_write_access, align 4
  %56 = call i32 @walk_page_buffers(i32* %51, i32 %53, i32 0, i32 %54, i32* null, i32 %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32*, i32** %6, align 8
  %58 = load %struct.page*, %struct.page** %3, align 8
  %59 = call i32 @page_buffers(%struct.page* %58)
  %60 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %61 = load i32, i32* @write_end_fn, align 4
  %62 = call i32 @walk_page_buffers(i32* %57, i32 %59, i32 0, i32 %60, i32* null, i32 %61)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %50
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %7, align 4
  br label %67

67:                                               ; preds = %65, %50
  %68 = load i32, i32* @EXT3_STATE_JDATA, align 4
  %69 = load %struct.inode*, %struct.inode** %5, align 8
  %70 = call %struct.TYPE_4__* @EXT3_I(%struct.inode* %69)
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %68
  store i32 %73, i32* %71, align 4
  %74 = load %struct.page*, %struct.page** %3, align 8
  %75 = call i32 @unlock_page(%struct.page* %74)
  br label %81

76:                                               ; preds = %34
  %77 = load %struct.page*, %struct.page** %3, align 8
  %78 = load i32, i32* @ext3_get_block, align 4
  %79 = load %struct.writeback_control*, %struct.writeback_control** %4, align 8
  %80 = call i32 @block_write_full_page(%struct.page* %77, i32 %78, %struct.writeback_control* %79)
  store i32 %80, i32* %7, align 4
  br label %81

81:                                               ; preds = %76, %67
  %82 = load i32*, i32** %6, align 8
  %83 = call i32 @ext3_journal_stop(i32* %82)
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %81
  %87 = load i32, i32* %8, align 4
  store i32 %87, i32* %7, align 4
  br label %88

88:                                               ; preds = %86, %81
  br label %89

89:                                               ; preds = %95, %88
  %90 = load i32, i32* %7, align 4
  ret i32 %90

91:                                               ; preds = %27, %16
  %92 = load %struct.writeback_control*, %struct.writeback_control** %4, align 8
  %93 = load %struct.page*, %struct.page** %3, align 8
  %94 = call i32 @redirty_page_for_writepage(%struct.writeback_control* %92, %struct.page* %93)
  br label %95

95:                                               ; preds = %91, %47
  %96 = load %struct.page*, %struct.page** %3, align 8
  %97 = call i32 @unlock_page(%struct.page* %96)
  br label %89
}

declare dso_local i64 @ext3_journal_current_handle(...) #1

declare dso_local i32 @trace_ext3_journalled_writepage(%struct.page*) #1

declare dso_local i32* @ext3_journal_start(%struct.inode*, i32) #1

declare dso_local i32 @ext3_writepage_trans_blocks(%struct.inode*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @page_has_buffers(%struct.page*) #1

declare dso_local i64 @PageChecked(%struct.page*) #1

declare dso_local i32 @ClearPageChecked(%struct.page*) #1

declare dso_local i32 @block_prepare_write(%struct.page*, i32, i32, i32) #1

declare dso_local i32 @ext3_journal_stop(i32*) #1

declare dso_local i32 @walk_page_buffers(i32*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @page_buffers(%struct.page*) #1

declare dso_local %struct.TYPE_4__* @EXT3_I(%struct.inode*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @block_write_full_page(%struct.page*, i32, %struct.writeback_control*) #1

declare dso_local i32 @redirty_page_for_writepage(%struct.writeback_control*, %struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
