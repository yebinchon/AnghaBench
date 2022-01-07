; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_truncate.c_invalidate_inode_pages2_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_truncate.c_invalidate_inode_pages2_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { i32 }
%struct.pagevec = type { %struct.page** }
%struct.page = type { i64, %struct.address_space* }

@PAGEVEC_SIZE = common dso_local global i64 0, align 8
@PAGE_CACHE_SHIFT = common dso_local global i32 0, align 4
@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @invalidate_inode_pages2_range(%struct.address_space* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.address_space*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.pagevec, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.page*, align 8
  store %struct.address_space* %0, %struct.address_space** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %14 = call i32 @pagevec_init(%struct.pagevec* %7, i32 0)
  %15 = load i64, i64* %5, align 8
  store i64 %15, i64* %8, align 8
  br label %16

16:                                               ; preds = %133, %3
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* %6, align 8
  %19 = icmp sle i64 %17, %18
  br i1 %19, label %20, label %32

20:                                               ; preds = %16
  %21 = load %struct.address_space*, %struct.address_space** %4, align 8
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* %8, align 8
  %25 = sub nsw i64 %23, %24
  %26 = load i64, i64* @PAGEVEC_SIZE, align 8
  %27 = sub nsw i64 %26, 1
  %28 = call i64 @min(i64 %25, i64 %27)
  %29 = add nsw i64 %28, 1
  %30 = call i64 @pagevec_lookup(%struct.pagevec* %7, %struct.address_space* %21, i64 %22, i64 %29)
  %31 = icmp ne i64 %30, 0
  br label %32

32:                                               ; preds = %20, %16
  %33 = phi i1 [ false, %16 ], [ %31, %20 ]
  br i1 %33, label %34, label %139

34:                                               ; preds = %32
  %35 = call i32 (...) @mem_cgroup_uncharge_start()
  store i32 0, i32* %9, align 4
  br label %36

36:                                               ; preds = %130, %34
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @pagevec_count(%struct.pagevec* %7)
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %133

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %7, i32 0, i32 0
  %42 = load %struct.page**, %struct.page*** %41, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.page*, %struct.page** %42, i64 %44
  %46 = load %struct.page*, %struct.page** %45, align 8
  store %struct.page* %46, %struct.page** %13, align 8
  %47 = load %struct.page*, %struct.page** %13, align 8
  %48 = getelementptr inbounds %struct.page, %struct.page* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %8, align 8
  %50 = load i64, i64* %8, align 8
  %51 = load i64, i64* %6, align 8
  %52 = icmp sgt i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %40
  br label %133

54:                                               ; preds = %40
  %55 = load %struct.page*, %struct.page** %13, align 8
  %56 = call i32 @lock_page(%struct.page* %55)
  %57 = load %struct.page*, %struct.page** %13, align 8
  %58 = getelementptr inbounds %struct.page, %struct.page* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %8, align 8
  %61 = icmp ne i64 %59, %60
  %62 = zext i1 %61 to i32
  %63 = call i32 @WARN_ON(i32 %62)
  %64 = load %struct.page*, %struct.page** %13, align 8
  %65 = getelementptr inbounds %struct.page, %struct.page* %64, i32 0, i32 1
  %66 = load %struct.address_space*, %struct.address_space** %65, align 8
  %67 = load %struct.address_space*, %struct.address_space** %4, align 8
  %68 = icmp ne %struct.address_space* %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %54
  %70 = load %struct.page*, %struct.page** %13, align 8
  %71 = call i32 @unlock_page(%struct.page* %70)
  br label %130

72:                                               ; preds = %54
  %73 = load %struct.page*, %struct.page** %13, align 8
  %74 = call i32 @wait_on_page_writeback(%struct.page* %73)
  %75 = load %struct.page*, %struct.page** %13, align 8
  %76 = call i64 @page_mapped(%struct.page* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %104

78:                                               ; preds = %72
  %79 = load i32, i32* %12, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %95, label %81

81:                                               ; preds = %78
  %82 = load %struct.address_space*, %struct.address_space** %4, align 8
  %83 = load i64, i64* %8, align 8
  %84 = trunc i64 %83 to i32
  %85 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %86 = shl i32 %84, %85
  %87 = load i64, i64* %6, align 8
  %88 = add nsw i64 1, %87
  %89 = load i64, i64* %8, align 8
  %90 = sub nsw i64 %88, %89
  %91 = trunc i64 %90 to i32
  %92 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %93 = shl i32 %91, %92
  %94 = call i32 @unmap_mapping_range(%struct.address_space* %82, i32 %86, i32 %93, i32 0)
  store i32 1, i32* %12, align 4
  br label %103

95:                                               ; preds = %78
  %96 = load %struct.address_space*, %struct.address_space** %4, align 8
  %97 = load i64, i64* %8, align 8
  %98 = trunc i64 %97 to i32
  %99 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %100 = shl i32 %98, %99
  %101 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %102 = call i32 @unmap_mapping_range(%struct.address_space* %96, i32 %100, i32 %101, i32 0)
  br label %103

103:                                              ; preds = %95, %81
  br label %104

104:                                              ; preds = %103, %72
  %105 = load %struct.page*, %struct.page** %13, align 8
  %106 = call i64 @page_mapped(%struct.page* %105)
  %107 = call i32 @BUG_ON(i64 %106)
  %108 = load %struct.address_space*, %struct.address_space** %4, align 8
  %109 = load %struct.page*, %struct.page** %13, align 8
  %110 = call i32 @do_launder_page(%struct.address_space* %108, %struct.page* %109)
  store i32 %110, i32* %11, align 4
  %111 = load i32, i32* %11, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %122

113:                                              ; preds = %104
  %114 = load %struct.address_space*, %struct.address_space** %4, align 8
  %115 = load %struct.page*, %struct.page** %13, align 8
  %116 = call i32 @invalidate_complete_page2(%struct.address_space* %114, %struct.page* %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %121, label %118

118:                                              ; preds = %113
  %119 = load i32, i32* @EBUSY, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %11, align 4
  br label %121

121:                                              ; preds = %118, %113
  br label %122

122:                                              ; preds = %121, %104
  %123 = load i32, i32* %11, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %122
  %126 = load i32, i32* %11, align 4
  store i32 %126, i32* %10, align 4
  br label %127

127:                                              ; preds = %125, %122
  %128 = load %struct.page*, %struct.page** %13, align 8
  %129 = call i32 @unlock_page(%struct.page* %128)
  br label %130

130:                                              ; preds = %127, %69
  %131 = load i32, i32* %9, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %9, align 4
  br label %36

133:                                              ; preds = %53, %36
  %134 = call i32 @pagevec_release(%struct.pagevec* %7)
  %135 = call i32 (...) @mem_cgroup_uncharge_end()
  %136 = call i32 (...) @cond_resched()
  %137 = load i64, i64* %8, align 8
  %138 = add nsw i64 %137, 1
  store i64 %138, i64* %8, align 8
  br label %16

139:                                              ; preds = %32
  %140 = load i32, i32* %10, align 4
  ret i32 %140
}

declare dso_local i32 @pagevec_init(%struct.pagevec*, i32) #1

declare dso_local i64 @pagevec_lookup(%struct.pagevec*, %struct.address_space*, i64, i64) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @mem_cgroup_uncharge_start(...) #1

declare dso_local i32 @pagevec_count(%struct.pagevec*) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @wait_on_page_writeback(%struct.page*) #1

declare dso_local i64 @page_mapped(%struct.page*) #1

declare dso_local i32 @unmap_mapping_range(%struct.address_space*, i32, i32, i32) #1

declare dso_local i32 @BUG_ON(i64) #1

declare dso_local i32 @do_launder_page(%struct.address_space*, %struct.page*) #1

declare dso_local i32 @invalidate_complete_page2(%struct.address_space*, %struct.page*) #1

declare dso_local i32 @pagevec_release(%struct.pagevec*) #1

declare dso_local i32 @mem_cgroup_uncharge_end(...) #1

declare dso_local i32 @cond_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
