; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memory-failure.c___soft_offline_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memory-failure.c___soft_offline_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"soft offline: %#lx page already poisoned\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"soft_offline: %#lx: invalidated\0A\00", align 1
@num_poisoned_pages = common dso_local global i32 0, align 4
@pagelist = common dso_local global i32 0, align 4
@NR_ISOLATED_ANON = common dso_local global i64 0, align 8
@new_page = common dso_local global i32 0, align 4
@MPOL_MF_MOVE_ALL = common dso_local global i32 0, align 4
@MIGRATE_SYNC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"soft offline: %#lx: migration failed %d, type %lx\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [67 x i8] c"soft offline: %#lx: isolation failed: %d, page count %d, type %lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*, i32)* @__soft_offline_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__soft_offline_page(%struct.page* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.page*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.page* %0, %struct.page** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.page*, %struct.page** %4, align 8
  %9 = call i64 @page_to_pfn(%struct.page* %8)
  store i64 %9, i64* %7, align 8
  %10 = load %struct.page*, %struct.page** %4, align 8
  %11 = call i32 @lock_page(%struct.page* %10)
  %12 = load %struct.page*, %struct.page** %4, align 8
  %13 = call i32 @wait_on_page_writeback(%struct.page* %12)
  %14 = load %struct.page*, %struct.page** %4, align 8
  %15 = call i64 @PageHWPoison(%struct.page* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %2
  %18 = load %struct.page*, %struct.page** %4, align 8
  %19 = call i32 @unlock_page(%struct.page* %18)
  %20 = load %struct.page*, %struct.page** %4, align 8
  %21 = call i32 @put_page(%struct.page* %20)
  %22 = load i64, i64* %7, align 8
  %23 = call i32 (i8*, i64, ...) @pr_info(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %22)
  %24 = load i32, i32* @EBUSY, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %95

26:                                               ; preds = %2
  %27 = load %struct.page*, %struct.page** %4, align 8
  %28 = call i32 @invalidate_inode_page(%struct.page* %27)
  store i32 %28, i32* %6, align 4
  %29 = load %struct.page*, %struct.page** %4, align 8
  %30 = call i32 @unlock_page(%struct.page* %29)
  %31 = load i32, i32* %6, align 4
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %41

33:                                               ; preds = %26
  %34 = load %struct.page*, %struct.page** %4, align 8
  %35 = call i32 @put_page(%struct.page* %34)
  %36 = load i64, i64* %7, align 8
  %37 = call i32 (i8*, i64, ...) @pr_info(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %36)
  %38 = load %struct.page*, %struct.page** %4, align 8
  %39 = call i32 @SetPageHWPoison(%struct.page* %38)
  %40 = call i32 @atomic_long_inc(i32* @num_poisoned_pages)
  store i32 0, i32* %3, align 4
  br label %95

41:                                               ; preds = %26
  %42 = load %struct.page*, %struct.page** %4, align 8
  %43 = call i32 @isolate_lru_page(%struct.page* %42)
  store i32 %43, i32* %6, align 4
  %44 = load %struct.page*, %struct.page** %4, align 8
  %45 = call i32 @put_page(%struct.page* %44)
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %84, label %48

48:                                               ; preds = %41
  %49 = load i32, i32* @pagelist, align 4
  %50 = call i32 @LIST_HEAD(i32 %49)
  %51 = load %struct.page*, %struct.page** %4, align 8
  %52 = load i64, i64* @NR_ISOLATED_ANON, align 8
  %53 = load %struct.page*, %struct.page** %4, align 8
  %54 = call i64 @page_is_file_cache(%struct.page* %53)
  %55 = add nsw i64 %52, %54
  %56 = call i32 @inc_zone_page_state(%struct.page* %51, i64 %55)
  %57 = load %struct.page*, %struct.page** %4, align 8
  %58 = getelementptr inbounds %struct.page, %struct.page* %57, i32 0, i32 1
  %59 = call i32 @list_add(i32* %58, i32* @pagelist)
  %60 = load i32, i32* @new_page, align 4
  %61 = load i32, i32* @MPOL_MF_MOVE_ALL, align 4
  %62 = load i32, i32* @MIGRATE_SYNC, align 4
  %63 = call i32 @migrate_pages(i32* @pagelist, i32 %60, i32 %61, i32 0, i32 %62)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %79

66:                                               ; preds = %48
  %67 = load i64, i64* %7, align 8
  %68 = load i32, i32* %6, align 4
  %69 = load %struct.page*, %struct.page** %4, align 8
  %70 = getelementptr inbounds %struct.page, %struct.page* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (i8*, i64, ...) @pr_info(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i64 %67, i32 %68, i32 %71)
  %73 = load i32, i32* %6, align 4
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %66
  %76 = load i32, i32* @EIO, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %6, align 4
  br label %78

78:                                               ; preds = %75, %66
  br label %83

79:                                               ; preds = %48
  %80 = load %struct.page*, %struct.page** %4, align 8
  %81 = call i32 @SetPageHWPoison(%struct.page* %80)
  %82 = call i32 @atomic_long_inc(i32* @num_poisoned_pages)
  br label %83

83:                                               ; preds = %79, %78
  br label %93

84:                                               ; preds = %41
  %85 = load i64, i64* %7, align 8
  %86 = load i32, i32* %6, align 4
  %87 = load %struct.page*, %struct.page** %4, align 8
  %88 = call i32 @page_count(%struct.page* %87)
  %89 = load %struct.page*, %struct.page** %4, align 8
  %90 = getelementptr inbounds %struct.page, %struct.page* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 (i8*, i64, ...) @pr_info(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i64 0, i64 0), i64 %85, i32 %86, i32 %88, i32 %91)
  br label %93

93:                                               ; preds = %84, %83
  %94 = load i32, i32* %6, align 4
  store i32 %94, i32* %3, align 4
  br label %95

95:                                               ; preds = %93, %33, %17
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i64 @page_to_pfn(%struct.page*) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i32 @wait_on_page_writeback(%struct.page*) #1

declare dso_local i64 @PageHWPoison(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @pr_info(i8*, i64, ...) #1

declare dso_local i32 @invalidate_inode_page(%struct.page*) #1

declare dso_local i32 @SetPageHWPoison(%struct.page*) #1

declare dso_local i32 @atomic_long_inc(i32*) #1

declare dso_local i32 @isolate_lru_page(%struct.page*) #1

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @inc_zone_page_state(%struct.page*, i64) #1

declare dso_local i64 @page_is_file_cache(%struct.page*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @migrate_pages(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @page_count(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
