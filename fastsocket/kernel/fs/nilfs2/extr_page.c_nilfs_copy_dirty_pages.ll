; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_page.c_nilfs_copy_dirty_pages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_page.c_nilfs_copy_dirty_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { i32 }
%struct.pagevec = type { %struct.page** }
%struct.page = type { i32 }

@PAGECACHE_TAG_DIRTY = common dso_local global i32 0, align 4
@PAGEVEC_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"inconsistent dirty state\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"found empty page in dat page cache\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nilfs_copy_dirty_pages(%struct.address_space* %0, %struct.address_space* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.address_space*, align 8
  %5 = alloca %struct.address_space*, align 8
  %6 = alloca %struct.pagevec, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.page*, align 8
  %11 = alloca %struct.page*, align 8
  store %struct.address_space* %0, %struct.address_space** %4, align 8
  store %struct.address_space* %1, %struct.address_space** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %12 = call i32 @pagevec_init(%struct.pagevec* %6, i32 0)
  br label %13

13:                                               ; preds = %96, %2
  %14 = load %struct.address_space*, %struct.address_space** %5, align 8
  %15 = load i32, i32* @PAGECACHE_TAG_DIRTY, align 4
  %16 = load i32, i32* @PAGEVEC_SIZE, align 4
  %17 = call i32 @pagevec_lookup_tag(%struct.pagevec* %6, %struct.address_space* %14, i32* %8, i32 %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %99

20:                                               ; preds = %13
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %84, %20
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @pagevec_count(%struct.pagevec* %6)
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %25, label %87

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %6, i32 0, i32 0
  %27 = load %struct.page**, %struct.page*** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.page*, %struct.page** %27, i64 %29
  %31 = load %struct.page*, %struct.page** %30, align 8
  store %struct.page* %31, %struct.page** %10, align 8
  %32 = load %struct.page*, %struct.page** %10, align 8
  %33 = call i32 @lock_page(%struct.page* %32)
  %34 = load %struct.page*, %struct.page** %10, align 8
  %35 = call i32 @PageDirty(%struct.page* %34)
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %25
  %42 = load %struct.page*, %struct.page** %10, align 8
  %43 = call i32 @NILFS_PAGE_BUG(%struct.page* %42, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %41, %25
  %45 = load %struct.address_space*, %struct.address_space** %4, align 8
  %46 = load %struct.page*, %struct.page** %10, align 8
  %47 = getelementptr inbounds %struct.page, %struct.page* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call %struct.page* @grab_cache_page(%struct.address_space* %45, i32 %48)
  store %struct.page* %49, %struct.page** %11, align 8
  %50 = load %struct.page*, %struct.page** %11, align 8
  %51 = icmp ne %struct.page* %50, null
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = call i64 @unlikely(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %44
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %9, align 4
  %59 = load %struct.page*, %struct.page** %10, align 8
  %60 = call i32 @unlock_page(%struct.page* %59)
  br label %87

61:                                               ; preds = %44
  %62 = load %struct.page*, %struct.page** %10, align 8
  %63 = call i32 @page_has_buffers(%struct.page* %62)
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i32
  %67 = call i64 @unlikely(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %61
  %70 = load %struct.page*, %struct.page** %10, align 8
  %71 = call i32 @NILFS_PAGE_BUG(%struct.page* %70, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %72

72:                                               ; preds = %69, %61
  %73 = load %struct.page*, %struct.page** %11, align 8
  %74 = load %struct.page*, %struct.page** %10, align 8
  %75 = call i32 @nilfs_copy_page(%struct.page* %73, %struct.page* %74, i32 1)
  %76 = load %struct.page*, %struct.page** %11, align 8
  %77 = call i32 @__set_page_dirty_nobuffers(%struct.page* %76)
  %78 = load %struct.page*, %struct.page** %11, align 8
  %79 = call i32 @unlock_page(%struct.page* %78)
  %80 = load %struct.page*, %struct.page** %11, align 8
  %81 = call i32 @page_cache_release(%struct.page* %80)
  %82 = load %struct.page*, %struct.page** %10, align 8
  %83 = call i32 @unlock_page(%struct.page* %82)
  br label %84

84:                                               ; preds = %72
  %85 = load i32, i32* %7, align 4
  %86 = add i32 %85, 1
  store i32 %86, i32* %7, align 4
  br label %21

87:                                               ; preds = %56, %21
  %88 = call i32 @pagevec_release(%struct.pagevec* %6)
  %89 = call i32 (...) @cond_resched()
  %90 = load i32, i32* %9, align 4
  %91 = icmp ne i32 %90, 0
  %92 = xor i1 %91, true
  %93 = zext i1 %92 to i32
  %94 = call i64 @likely(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %87
  br label %13

97:                                               ; preds = %87
  %98 = load i32, i32* %9, align 4
  store i32 %98, i32* %3, align 4
  br label %99

99:                                               ; preds = %97, %19
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i32 @pagevec_init(%struct.pagevec*, i32) #1

declare dso_local i32 @pagevec_lookup_tag(%struct.pagevec*, %struct.address_space*, i32*, i32, i32) #1

declare dso_local i32 @pagevec_count(%struct.pagevec*) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @PageDirty(%struct.page*) #1

declare dso_local i32 @NILFS_PAGE_BUG(%struct.page*, i8*) #1

declare dso_local %struct.page* @grab_cache_page(%struct.address_space*, i32) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @page_has_buffers(%struct.page*) #1

declare dso_local i32 @nilfs_copy_page(%struct.page*, %struct.page*, i32) #1

declare dso_local i32 @__set_page_dirty_nobuffers(%struct.page*) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

declare dso_local i32 @pagevec_release(%struct.pagevec*) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
