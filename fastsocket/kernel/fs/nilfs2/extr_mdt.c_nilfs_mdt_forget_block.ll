; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_mdt.c_nilfs_mdt_forget_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_mdt.c_nilfs_mdt_forget_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32 }
%struct.page = type { i32 }
%struct.buffer_head = type { i32 }

@PAGE_CACHE_SHIFT = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nilfs_mdt_forget_block(%struct.inode* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.buffer_head*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @PAGE_CACHE_SHIFT, align 8
  %14 = load %struct.inode*, %struct.inode** %4, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = sub i64 %13, %16
  %18 = lshr i64 %12, %17
  store i64 %18, i64* %6, align 8
  store i32 0, i32* %9, align 4
  %19 = load %struct.inode*, %struct.inode** %4, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i64, i64* %6, align 8
  %23 = call %struct.page* @find_lock_page(i32 %21, i64 %22)
  store %struct.page* %23, %struct.page** %7, align 8
  %24 = load %struct.page*, %struct.page** %7, align 8
  %25 = icmp ne %struct.page* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* @ENOENT, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %72

29:                                               ; preds = %2
  %30 = load %struct.page*, %struct.page** %7, align 8
  %31 = call i32 @wait_on_page_writeback(%struct.page* %30)
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* @PAGE_CACHE_SHIFT, align 8
  %34 = load %struct.inode*, %struct.inode** %4, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = sub i64 %33, %36
  %38 = shl i64 %32, %37
  store i64 %38, i64* %8, align 8
  %39 = load %struct.page*, %struct.page** %7, align 8
  %40 = call i64 @page_has_buffers(%struct.page* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %29
  %43 = load %struct.page*, %struct.page** %7, align 8
  %44 = load i64, i64* %5, align 8
  %45 = load i64, i64* %8, align 8
  %46 = sub i64 %44, %45
  %47 = call %struct.buffer_head* @nilfs_page_get_nth_block(%struct.page* %43, i64 %46)
  store %struct.buffer_head* %47, %struct.buffer_head** %11, align 8
  %48 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %49 = call i32 @nilfs_forget_buffer(%struct.buffer_head* %48)
  br label %50

50:                                               ; preds = %42, %29
  %51 = load %struct.page*, %struct.page** %7, align 8
  %52 = call i32 @PageDirty(%struct.page* %51)
  store i32 %52, i32* %10, align 4
  %53 = load %struct.page*, %struct.page** %7, align 8
  %54 = call i32 @unlock_page(%struct.page* %53)
  %55 = load %struct.page*, %struct.page** %7, align 8
  %56 = call i32 @page_cache_release(%struct.page* %55)
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %67, label %59

59:                                               ; preds = %50
  %60 = load %struct.inode*, %struct.inode** %4, align 8
  %61 = getelementptr inbounds %struct.inode, %struct.inode* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load i64, i64* %6, align 8
  %64 = load i64, i64* %6, align 8
  %65 = call i64 @invalidate_inode_pages2_range(i32 %62, i64 %63, i64 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %59, %50
  %68 = load i32, i32* @EBUSY, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %9, align 4
  br label %70

70:                                               ; preds = %67, %59
  %71 = load i32, i32* %9, align 4
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %70, %26
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local %struct.page* @find_lock_page(i32, i64) #1

declare dso_local i32 @wait_on_page_writeback(%struct.page*) #1

declare dso_local i64 @page_has_buffers(%struct.page*) #1

declare dso_local %struct.buffer_head* @nilfs_page_get_nth_block(%struct.page*, i64) #1

declare dso_local i32 @nilfs_forget_buffer(%struct.buffer_head*) #1

declare dso_local i32 @PageDirty(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

declare dso_local i64 @invalidate_inode_pages2_range(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
