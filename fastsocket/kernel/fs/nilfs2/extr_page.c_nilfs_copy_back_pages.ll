; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_page.c_nilfs_copy_back_pages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_page.c_nilfs_copy_back_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { i32, i32, i32 }
%struct.pagevec = type { %struct.page** }
%struct.page = type { %struct.address_space*, i64 }

@PAGEVEC_SIZE = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@PAGECACHE_TAG_DIRTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nilfs_copy_back_pages(%struct.address_space* %0, %struct.address_space* %1) #0 {
  %3 = alloca %struct.address_space*, align 8
  %4 = alloca %struct.address_space*, align 8
  %5 = alloca %struct.pagevec, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.page*, align 8
  %11 = alloca %struct.page*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.page*, align 8
  store %struct.address_space* %0, %struct.address_space** %3, align 8
  store %struct.address_space* %1, %struct.address_space** %4, align 8
  store i64 0, i64* %8, align 8
  %14 = call i32 @pagevec_init(%struct.pagevec* %5, i32 0)
  br label %15

15:                                               ; preds = %138, %2
  %16 = load %struct.address_space*, %struct.address_space** %4, align 8
  %17 = load i64, i64* %8, align 8
  %18 = load i32, i32* @PAGEVEC_SIZE, align 4
  %19 = call i32 @pagevec_lookup(%struct.pagevec* %5, %struct.address_space* %16, i64 %17, i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %15
  ret void

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %5, i32 0, i32 0
  %25 = load %struct.page**, %struct.page*** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sub i32 %26, 1
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.page*, %struct.page** %25, i64 %28
  %30 = load %struct.page*, %struct.page** %29, align 8
  %31 = getelementptr inbounds %struct.page, %struct.page* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, 1
  store i64 %33, i64* %8, align 8
  store i32 0, i32* %6, align 4
  br label %34

34:                                               ; preds = %135, %23
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @pagevec_count(%struct.pagevec* %5)
  %37 = icmp ult i32 %35, %36
  br i1 %37, label %38, label %138

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %5, i32 0, i32 0
  %40 = load %struct.page**, %struct.page*** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.page*, %struct.page** %40, i64 %42
  %44 = load %struct.page*, %struct.page** %43, align 8
  store %struct.page* %44, %struct.page** %10, align 8
  %45 = load %struct.page*, %struct.page** %10, align 8
  %46 = getelementptr inbounds %struct.page, %struct.page* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %12, align 8
  %48 = load %struct.page*, %struct.page** %10, align 8
  %49 = call i32 @lock_page(%struct.page* %48)
  %50 = load %struct.address_space*, %struct.address_space** %3, align 8
  %51 = load i64, i64* %12, align 8
  %52 = call %struct.page* @find_lock_page(%struct.address_space* %50, i64 %51)
  store %struct.page* %52, %struct.page** %11, align 8
  %53 = load %struct.page*, %struct.page** %11, align 8
  %54 = icmp ne %struct.page* %53, null
  br i1 %54, label %55, label %66

55:                                               ; preds = %38
  %56 = load %struct.page*, %struct.page** %11, align 8
  %57 = call i32 @PageDirty(%struct.page* %56)
  %58 = call i32 @WARN_ON(i32 %57)
  %59 = load %struct.page*, %struct.page** %11, align 8
  %60 = load %struct.page*, %struct.page** %10, align 8
  %61 = call i32 @nilfs_copy_page(%struct.page* %59, %struct.page* %60, i32 0)
  %62 = load %struct.page*, %struct.page** %11, align 8
  %63 = call i32 @unlock_page(%struct.page* %62)
  %64 = load %struct.page*, %struct.page** %11, align 8
  %65 = call i32 @page_cache_release(%struct.page* %64)
  br label %132

66:                                               ; preds = %38
  %67 = load %struct.address_space*, %struct.address_space** %4, align 8
  %68 = getelementptr inbounds %struct.address_space, %struct.address_space* %67, i32 0, i32 0
  %69 = call i32 @spin_lock_irq(i32* %68)
  %70 = load %struct.address_space*, %struct.address_space** %4, align 8
  %71 = getelementptr inbounds %struct.address_space, %struct.address_space* %70, i32 0, i32 1
  %72 = load i64, i64* %12, align 8
  %73 = call %struct.page* @radix_tree_delete(i32* %71, i64 %72)
  store %struct.page* %73, %struct.page** %13, align 8
  %74 = load %struct.page*, %struct.page** %13, align 8
  %75 = load %struct.page*, %struct.page** %10, align 8
  %76 = icmp ne %struct.page* %74, %75
  %77 = zext i1 %76 to i32
  %78 = call i32 @WARN_ON(i32 %77)
  %79 = load %struct.address_space*, %struct.address_space** %4, align 8
  %80 = getelementptr inbounds %struct.address_space, %struct.address_space* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, -1
  store i32 %82, i32* %80, align 4
  %83 = load %struct.address_space*, %struct.address_space** %4, align 8
  %84 = getelementptr inbounds %struct.address_space, %struct.address_space* %83, i32 0, i32 0
  %85 = call i32 @spin_unlock_irq(i32* %84)
  %86 = load %struct.address_space*, %struct.address_space** %3, align 8
  %87 = getelementptr inbounds %struct.address_space, %struct.address_space* %86, i32 0, i32 0
  %88 = call i32 @spin_lock_irq(i32* %87)
  %89 = load %struct.address_space*, %struct.address_space** %3, align 8
  %90 = getelementptr inbounds %struct.address_space, %struct.address_space* %89, i32 0, i32 1
  %91 = load i64, i64* %12, align 8
  %92 = load %struct.page*, %struct.page** %10, align 8
  %93 = call i32 @radix_tree_insert(i32* %90, i64 %91, %struct.page* %92)
  store i32 %93, i32* %9, align 4
  %94 = load i32, i32* %9, align 4
  %95 = icmp slt i32 %94, 0
  %96 = zext i1 %95 to i32
  %97 = call i64 @unlikely(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %110

99:                                               ; preds = %66
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* @EEXIST, align 4
  %102 = sub nsw i32 0, %101
  %103 = icmp eq i32 %100, %102
  %104 = zext i1 %103 to i32
  %105 = call i32 @WARN_ON(i32 %104)
  %106 = load %struct.page*, %struct.page** %10, align 8
  %107 = getelementptr inbounds %struct.page, %struct.page* %106, i32 0, i32 0
  store %struct.address_space* null, %struct.address_space** %107, align 8
  %108 = load %struct.page*, %struct.page** %10, align 8
  %109 = call i32 @page_cache_release(%struct.page* %108)
  br label %128

110:                                              ; preds = %66
  %111 = load %struct.address_space*, %struct.address_space** %3, align 8
  %112 = load %struct.page*, %struct.page** %10, align 8
  %113 = getelementptr inbounds %struct.page, %struct.page* %112, i32 0, i32 0
  store %struct.address_space* %111, %struct.address_space** %113, align 8
  %114 = load %struct.address_space*, %struct.address_space** %3, align 8
  %115 = getelementptr inbounds %struct.address_space, %struct.address_space* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %115, align 4
  %118 = load %struct.page*, %struct.page** %10, align 8
  %119 = call i32 @PageDirty(%struct.page* %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %110
  %122 = load %struct.address_space*, %struct.address_space** %3, align 8
  %123 = getelementptr inbounds %struct.address_space, %struct.address_space* %122, i32 0, i32 1
  %124 = load i64, i64* %12, align 8
  %125 = load i32, i32* @PAGECACHE_TAG_DIRTY, align 4
  %126 = call i32 @radix_tree_tag_set(i32* %123, i64 %124, i32 %125)
  br label %127

127:                                              ; preds = %121, %110
  br label %128

128:                                              ; preds = %127, %99
  %129 = load %struct.address_space*, %struct.address_space** %3, align 8
  %130 = getelementptr inbounds %struct.address_space, %struct.address_space* %129, i32 0, i32 0
  %131 = call i32 @spin_unlock_irq(i32* %130)
  br label %132

132:                                              ; preds = %128, %55
  %133 = load %struct.page*, %struct.page** %10, align 8
  %134 = call i32 @unlock_page(%struct.page* %133)
  br label %135

135:                                              ; preds = %132
  %136 = load i32, i32* %6, align 4
  %137 = add i32 %136, 1
  store i32 %137, i32* %6, align 4
  br label %34

138:                                              ; preds = %34
  %139 = call i32 @pagevec_release(%struct.pagevec* %5)
  %140 = call i32 (...) @cond_resched()
  br label %15
}

declare dso_local i32 @pagevec_init(%struct.pagevec*, i32) #1

declare dso_local i32 @pagevec_lookup(%struct.pagevec*, %struct.address_space*, i64, i32) #1

declare dso_local i32 @pagevec_count(%struct.pagevec*) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local %struct.page* @find_lock_page(%struct.address_space*, i64) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @PageDirty(%struct.page*) #1

declare dso_local i32 @nilfs_copy_page(%struct.page*, %struct.page*, i32) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local %struct.page* @radix_tree_delete(i32*, i64) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @radix_tree_insert(i32*, i64, %struct.page*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @radix_tree_tag_set(i32*, i64, i32) #1

declare dso_local i32 @pagevec_release(%struct.pagevec*) #1

declare dso_local i32 @cond_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
