; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_page.c_nilfs_clear_dirty_pages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_page.c_nilfs_clear_dirty_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { i32 }
%struct.pagevec = type { %struct.page** }
%struct.page = type { i32 }
%struct.buffer_head = type { %struct.buffer_head* }

@PAGECACHE_TAG_DIRTY = common dso_local global i32 0, align 4
@PAGEVEC_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nilfs_clear_dirty_pages(%struct.address_space* %0) #0 {
  %2 = alloca %struct.address_space*, align 8
  %3 = alloca %struct.pagevec, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.page*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  store %struct.address_space* %0, %struct.address_space** %2, align 8
  store i32 0, i32* %5, align 4
  %9 = call i32 @pagevec_init(%struct.pagevec* %3, i32 0)
  br label %10

10:                                               ; preds = %64, %1
  %11 = load %struct.address_space*, %struct.address_space** %2, align 8
  %12 = load i32, i32* @PAGECACHE_TAG_DIRTY, align 4
  %13 = load i32, i32* @PAGEVEC_SIZE, align 4
  %14 = call i64 @pagevec_lookup_tag(%struct.pagevec* %3, %struct.address_space* %11, i32* %5, i32 %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %67

16:                                               ; preds = %10
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %61, %16
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @pagevec_count(%struct.pagevec* %3)
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %21, label %64

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %3, i32 0, i32 0
  %23 = load %struct.page**, %struct.page*** %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.page*, %struct.page** %23, i64 %25
  %27 = load %struct.page*, %struct.page** %26, align 8
  store %struct.page* %27, %struct.page** %6, align 8
  %28 = load %struct.page*, %struct.page** %6, align 8
  %29 = call i32 @lock_page(%struct.page* %28)
  %30 = load %struct.page*, %struct.page** %6, align 8
  %31 = call i32 @ClearPageUptodate(%struct.page* %30)
  %32 = load %struct.page*, %struct.page** %6, align 8
  %33 = call i32 @ClearPageMappedToDisk(%struct.page* %32)
  %34 = load %struct.page*, %struct.page** %6, align 8
  %35 = call %struct.buffer_head* @page_buffers(%struct.page* %34)
  store %struct.buffer_head* %35, %struct.buffer_head** %8, align 8
  store %struct.buffer_head* %35, %struct.buffer_head** %7, align 8
  br label %36

36:                                               ; preds = %52, %21
  %37 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %38 = call i32 @lock_buffer(%struct.buffer_head* %37)
  %39 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %40 = call i32 @clear_buffer_dirty(%struct.buffer_head* %39)
  %41 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %42 = call i32 @clear_buffer_nilfs_volatile(%struct.buffer_head* %41)
  %43 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %44 = call i32 @clear_buffer_uptodate(%struct.buffer_head* %43)
  %45 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %46 = call i32 @clear_buffer_mapped(%struct.buffer_head* %45)
  %47 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %48 = call i32 @unlock_buffer(%struct.buffer_head* %47)
  %49 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %50 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %49, i32 0, i32 0
  %51 = load %struct.buffer_head*, %struct.buffer_head** %50, align 8
  store %struct.buffer_head* %51, %struct.buffer_head** %7, align 8
  br label %52

52:                                               ; preds = %36
  %53 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %54 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %55 = icmp ne %struct.buffer_head* %53, %54
  br i1 %55, label %36, label %56

56:                                               ; preds = %52
  %57 = load %struct.page*, %struct.page** %6, align 8
  %58 = call i32 @__nilfs_clear_page_dirty(%struct.page* %57)
  %59 = load %struct.page*, %struct.page** %6, align 8
  %60 = call i32 @unlock_page(%struct.page* %59)
  br label %61

61:                                               ; preds = %56
  %62 = load i32, i32* %4, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %4, align 4
  br label %17

64:                                               ; preds = %17
  %65 = call i32 @pagevec_release(%struct.pagevec* %3)
  %66 = call i32 (...) @cond_resched()
  br label %10

67:                                               ; preds = %10
  ret void
}

declare dso_local i32 @pagevec_init(%struct.pagevec*, i32) #1

declare dso_local i64 @pagevec_lookup_tag(%struct.pagevec*, %struct.address_space*, i32*, i32, i32) #1

declare dso_local i32 @pagevec_count(%struct.pagevec*) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i32 @ClearPageUptodate(%struct.page*) #1

declare dso_local i32 @ClearPageMappedToDisk(%struct.page*) #1

declare dso_local %struct.buffer_head* @page_buffers(%struct.page*) #1

declare dso_local i32 @lock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @clear_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @clear_buffer_nilfs_volatile(%struct.buffer_head*) #1

declare dso_local i32 @clear_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @clear_buffer_mapped(%struct.buffer_head*) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @__nilfs_clear_page_dirty(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @pagevec_release(%struct.pagevec*) #1

declare dso_local i32 @cond_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
