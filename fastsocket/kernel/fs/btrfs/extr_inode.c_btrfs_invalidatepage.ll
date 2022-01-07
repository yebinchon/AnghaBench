; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_btrfs_invalidatepage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_btrfs_invalidatepage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.extent_io_tree = type { i32 }
%struct.btrfs_ordered_extent = type { i32 }
%struct.extent_state = type { i32 }
%struct.TYPE_4__ = type { %struct.extent_io_tree }

@PAGE_CACHE_SIZE = common dso_local global i64 0, align 8
@GFP_NOFS = common dso_local global i32 0, align 4
@EXTENT_DIRTY = common dso_local global i32 0, align 4
@EXTENT_DELALLOC = common dso_local global i32 0, align 4
@EXTENT_LOCKED = common dso_local global i32 0, align 4
@EXTENT_DO_ACCOUNTING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.page*, i64)* @btrfs_invalidatepage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btrfs_invalidatepage(%struct.page* %0, i64 %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.extent_io_tree*, align 8
  %7 = alloca %struct.btrfs_ordered_extent*, align 8
  %8 = alloca %struct.extent_state*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.page* %0, %struct.page** %3, align 8
  store i64 %1, i64* %4, align 8
  %11 = load %struct.page*, %struct.page** %3, align 8
  %12 = getelementptr inbounds %struct.page, %struct.page* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.inode*, %struct.inode** %14, align 8
  store %struct.inode* %15, %struct.inode** %5, align 8
  store %struct.extent_state* null, %struct.extent_state** %8, align 8
  %16 = load %struct.page*, %struct.page** %3, align 8
  %17 = call i64 @page_offset(%struct.page* %16)
  store i64 %17, i64* %9, align 8
  %18 = load i64, i64* %9, align 8
  %19 = load i64, i64* @PAGE_CACHE_SIZE, align 8
  %20 = add nsw i64 %18, %19
  %21 = sub nsw i64 %20, 1
  store i64 %21, i64* %10, align 8
  %22 = load %struct.page*, %struct.page** %3, align 8
  %23 = call i32 @wait_on_page_writeback(%struct.page* %22)
  %24 = load %struct.inode*, %struct.inode** %5, align 8
  %25 = call %struct.TYPE_4__* @BTRFS_I(%struct.inode* %24)
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store %struct.extent_io_tree* %26, %struct.extent_io_tree** %6, align 8
  %27 = load i64, i64* %4, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %2
  %30 = load %struct.page*, %struct.page** %3, align 8
  %31 = load i32, i32* @GFP_NOFS, align 4
  %32 = call i32 @btrfs_releasepage(%struct.page* %30, i32 %31)
  br label %104

33:                                               ; preds = %2
  %34 = load %struct.extent_io_tree*, %struct.extent_io_tree** %6, align 8
  %35 = load i64, i64* %9, align 8
  %36 = load i64, i64* %10, align 8
  %37 = call i32 @lock_extent_bits(%struct.extent_io_tree* %34, i64 %35, i64 %36, i32 0, %struct.extent_state** %8)
  %38 = load %struct.inode*, %struct.inode** %5, align 8
  %39 = load %struct.page*, %struct.page** %3, align 8
  %40 = call i64 @page_offset(%struct.page* %39)
  %41 = call %struct.btrfs_ordered_extent* @btrfs_lookup_ordered_extent(%struct.inode* %38, i64 %40)
  store %struct.btrfs_ordered_extent* %41, %struct.btrfs_ordered_extent** %7, align 8
  %42 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %7, align 8
  %43 = icmp ne %struct.btrfs_ordered_extent* %42, null
  br i1 %43, label %44, label %76

44:                                               ; preds = %33
  %45 = load %struct.extent_io_tree*, %struct.extent_io_tree** %6, align 8
  %46 = load i64, i64* %9, align 8
  %47 = load i64, i64* %10, align 8
  %48 = load i32, i32* @EXTENT_DIRTY, align 4
  %49 = load i32, i32* @EXTENT_DELALLOC, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @EXTENT_LOCKED, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @EXTENT_DO_ACCOUNTING, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @GFP_NOFS, align 4
  %56 = call i32 @clear_extent_bit(%struct.extent_io_tree* %45, i64 %46, i64 %47, i32 %54, i32 1, i32 0, %struct.extent_state** %8, i32 %55)
  %57 = load %struct.page*, %struct.page** %3, align 8
  %58 = call i64 @TestClearPagePrivate2(%struct.page* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %44
  %61 = load %struct.inode*, %struct.inode** %5, align 8
  %62 = load i64, i64* %9, align 8
  %63 = load i64, i64* @PAGE_CACHE_SIZE, align 8
  %64 = call i64 @btrfs_dec_test_ordered_pending(%struct.inode* %61, %struct.btrfs_ordered_extent** %7, i64 %62, i64 %63, i32 1)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %60
  %67 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %7, align 8
  %68 = call i32 @btrfs_finish_ordered_io(%struct.btrfs_ordered_extent* %67)
  br label %69

69:                                               ; preds = %66, %60, %44
  %70 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %7, align 8
  %71 = call i32 @btrfs_put_ordered_extent(%struct.btrfs_ordered_extent* %70)
  store %struct.extent_state* null, %struct.extent_state** %8, align 8
  %72 = load %struct.extent_io_tree*, %struct.extent_io_tree** %6, align 8
  %73 = load i64, i64* %9, align 8
  %74 = load i64, i64* %10, align 8
  %75 = call i32 @lock_extent_bits(%struct.extent_io_tree* %72, i64 %73, i64 %74, i32 0, %struct.extent_state** %8)
  br label %76

76:                                               ; preds = %69, %33
  %77 = load %struct.extent_io_tree*, %struct.extent_io_tree** %6, align 8
  %78 = load i64, i64* %9, align 8
  %79 = load i64, i64* %10, align 8
  %80 = load i32, i32* @EXTENT_LOCKED, align 4
  %81 = load i32, i32* @EXTENT_DIRTY, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @EXTENT_DELALLOC, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @EXTENT_DO_ACCOUNTING, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @GFP_NOFS, align 4
  %88 = call i32 @clear_extent_bit(%struct.extent_io_tree* %77, i64 %78, i64 %79, i32 %86, i32 1, i32 1, %struct.extent_state** %8, i32 %87)
  %89 = load %struct.page*, %struct.page** %3, align 8
  %90 = load i32, i32* @GFP_NOFS, align 4
  %91 = call i32 @__btrfs_releasepage(%struct.page* %89, i32 %90)
  %92 = load %struct.page*, %struct.page** %3, align 8
  %93 = call i32 @ClearPageChecked(%struct.page* %92)
  %94 = load %struct.page*, %struct.page** %3, align 8
  %95 = call i64 @PagePrivate(%struct.page* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %76
  %98 = load %struct.page*, %struct.page** %3, align 8
  %99 = call i32 @ClearPagePrivate(%struct.page* %98)
  %100 = load %struct.page*, %struct.page** %3, align 8
  %101 = call i32 @set_page_private(%struct.page* %100, i32 0)
  %102 = load %struct.page*, %struct.page** %3, align 8
  %103 = call i32 @page_cache_release(%struct.page* %102)
  br label %104

104:                                              ; preds = %29, %97, %76
  ret void
}

declare dso_local i64 @page_offset(%struct.page*) #1

declare dso_local i32 @wait_on_page_writeback(%struct.page*) #1

declare dso_local %struct.TYPE_4__* @BTRFS_I(%struct.inode*) #1

declare dso_local i32 @btrfs_releasepage(%struct.page*, i32) #1

declare dso_local i32 @lock_extent_bits(%struct.extent_io_tree*, i64, i64, i32, %struct.extent_state**) #1

declare dso_local %struct.btrfs_ordered_extent* @btrfs_lookup_ordered_extent(%struct.inode*, i64) #1

declare dso_local i32 @clear_extent_bit(%struct.extent_io_tree*, i64, i64, i32, i32, i32, %struct.extent_state**, i32) #1

declare dso_local i64 @TestClearPagePrivate2(%struct.page*) #1

declare dso_local i64 @btrfs_dec_test_ordered_pending(%struct.inode*, %struct.btrfs_ordered_extent**, i64, i64, i32) #1

declare dso_local i32 @btrfs_finish_ordered_io(%struct.btrfs_ordered_extent*) #1

declare dso_local i32 @btrfs_put_ordered_extent(%struct.btrfs_ordered_extent*) #1

declare dso_local i32 @__btrfs_releasepage(%struct.page*, i32) #1

declare dso_local i32 @ClearPageChecked(%struct.page*) #1

declare dso_local i64 @PagePrivate(%struct.page*) #1

declare dso_local i32 @ClearPagePrivate(%struct.page*) #1

declare dso_local i32 @set_page_private(%struct.page*, i32) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
