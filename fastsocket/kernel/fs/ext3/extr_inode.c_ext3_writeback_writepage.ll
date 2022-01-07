; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_inode.c_ext3_writeback_writepage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_inode.c_ext3_writeback_writepage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.writeback_control = type { i32 }

@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@buffer_unmapped = common dso_local global i32 0, align 4
@NOBH = common dso_local global i32 0, align 4
@ext3_get_block = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*, %struct.writeback_control*)* @ext3_writeback_writepage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext3_writeback_writepage(%struct.page* %0, %struct.writeback_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.writeback_control*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %4, align 8
  store %struct.writeback_control* %1, %struct.writeback_control** %5, align 8
  %10 = load %struct.page*, %struct.page** %4, align 8
  %11 = getelementptr inbounds %struct.page, %struct.page* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.inode*, %struct.inode** %13, align 8
  store %struct.inode* %14, %struct.inode** %6, align 8
  store i32* null, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %15 = call i64 (...) @ext3_journal_current_handle()
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %77

18:                                               ; preds = %2
  %19 = load %struct.page*, %struct.page** %4, align 8
  %20 = call i32 @trace_ext3_writeback_writepage(%struct.page* %19)
  %21 = load %struct.page*, %struct.page** %4, align 8
  %22 = call i64 @page_has_buffers(%struct.page* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %18
  %25 = load %struct.page*, %struct.page** %4, align 8
  %26 = call i32 @page_buffers(%struct.page* %25)
  %27 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %28 = load i32, i32* @buffer_unmapped, align 4
  %29 = call i32 @walk_page_buffers(i32* null, i32 %26, i32 0, i32 %27, i32* null, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %24
  %32 = load %struct.page*, %struct.page** %4, align 8
  %33 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %34 = call i32 @block_write_full_page(%struct.page* %32, i32* null, %struct.writeback_control* %33)
  store i32 %34, i32* %3, align 4
  br label %84

35:                                               ; preds = %24
  br label %36

36:                                               ; preds = %35, %18
  %37 = load %struct.inode*, %struct.inode** %6, align 8
  %38 = load %struct.inode*, %struct.inode** %6, align 8
  %39 = call i32 @ext3_writepage_trans_blocks(%struct.inode* %38)
  %40 = call i32* @ext3_journal_start(%struct.inode* %37, i32 %39)
  store i32* %40, i32** %7, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = call i64 @IS_ERR(i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %36
  %45 = load i32*, i32** %7, align 8
  %46 = call i32 @PTR_ERR(i32* %45)
  store i32 %46, i32* %8, align 4
  br label %77

47:                                               ; preds = %36
  %48 = load %struct.inode*, %struct.inode** %6, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @NOBH, align 4
  %52 = call i64 @test_opt(i32 %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %47
  %55 = load %struct.inode*, %struct.inode** %6, align 8
  %56 = call i64 @ext3_should_writeback_data(%struct.inode* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = load %struct.page*, %struct.page** %4, align 8
  %60 = load i32*, i32** @ext3_get_block, align 8
  %61 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %62 = call i32 @nobh_writepage(%struct.page* %59, i32* %60, %struct.writeback_control* %61)
  store i32 %62, i32* %8, align 4
  br label %68

63:                                               ; preds = %54, %47
  %64 = load %struct.page*, %struct.page** %4, align 8
  %65 = load i32*, i32** @ext3_get_block, align 8
  %66 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %67 = call i32 @block_write_full_page(%struct.page* %64, i32* %65, %struct.writeback_control* %66)
  store i32 %67, i32* %8, align 4
  br label %68

68:                                               ; preds = %63, %58
  %69 = load i32*, i32** %7, align 8
  %70 = call i32 @ext3_journal_stop(i32* %69)
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %68
  %74 = load i32, i32* %9, align 4
  store i32 %74, i32* %8, align 4
  br label %75

75:                                               ; preds = %73, %68
  %76 = load i32, i32* %8, align 4
  store i32 %76, i32* %3, align 4
  br label %84

77:                                               ; preds = %44, %17
  %78 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %79 = load %struct.page*, %struct.page** %4, align 8
  %80 = call i32 @redirty_page_for_writepage(%struct.writeback_control* %78, %struct.page* %79)
  %81 = load %struct.page*, %struct.page** %4, align 8
  %82 = call i32 @unlock_page(%struct.page* %81)
  %83 = load i32, i32* %8, align 4
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %77, %75, %31
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i64 @ext3_journal_current_handle(...) #1

declare dso_local i32 @trace_ext3_writeback_writepage(%struct.page*) #1

declare dso_local i64 @page_has_buffers(%struct.page*) #1

declare dso_local i32 @walk_page_buffers(i32*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @page_buffers(%struct.page*) #1

declare dso_local i32 @block_write_full_page(%struct.page*, i32*, %struct.writeback_control*) #1

declare dso_local i32* @ext3_journal_start(%struct.inode*, i32) #1

declare dso_local i32 @ext3_writepage_trans_blocks(%struct.inode*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i64 @test_opt(i32, i32) #1

declare dso_local i64 @ext3_should_writeback_data(%struct.inode*) #1

declare dso_local i32 @nobh_writepage(%struct.page*, i32*, %struct.writeback_control*) #1

declare dso_local i32 @ext3_journal_stop(i32*) #1

declare dso_local i32 @redirty_page_for_writepage(%struct.writeback_control*, %struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
