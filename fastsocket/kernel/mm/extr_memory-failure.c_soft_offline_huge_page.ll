; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memory-failure.c_soft_offline_huge_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memory-failure.c_soft_offline_huge_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32, i32 }

@pagelist = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"soft offline: %#lx hugepage already poisoned\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@new_page = common dso_local global i32 0, align 4
@MPOL_MF_MOVE_ALL = common dso_local global i32 0, align 4
@MIGRATE_SYNC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"soft offline: %#lx: migration failed %d, type %lx\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@num_poisoned_pages = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*, i32)* @soft_offline_huge_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @soft_offline_huge_page(%struct.page* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.page*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.page*, align 8
  store %struct.page* %0, %struct.page** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.page*, %struct.page** %4, align 8
  %10 = call i64 @page_to_pfn(%struct.page* %9)
  store i64 %10, i64* %7, align 8
  %11 = load %struct.page*, %struct.page** %4, align 8
  %12 = call %struct.page* @compound_head(%struct.page* %11)
  store %struct.page* %12, %struct.page** %8, align 8
  %13 = load i32, i32* @pagelist, align 4
  %14 = call i32 @LIST_HEAD(i32 %13)
  %15 = load %struct.page*, %struct.page** %8, align 8
  %16 = call i32 @lock_page(%struct.page* %15)
  %17 = load %struct.page*, %struct.page** %8, align 8
  %18 = call i64 @PageHWPoison(%struct.page* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %2
  %21 = load %struct.page*, %struct.page** %8, align 8
  %22 = call i32 @unlock_page(%struct.page* %21)
  %23 = load %struct.page*, %struct.page** %8, align 8
  %24 = call i32 @put_page(%struct.page* %23)
  %25 = load i64, i64* %7, align 8
  %26 = call i32 (i8*, i64, ...) @pr_info(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %25)
  %27 = load i32, i32* @EBUSY, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %65

29:                                               ; preds = %2
  %30 = load %struct.page*, %struct.page** %8, align 8
  %31 = call i32 @unlock_page(%struct.page* %30)
  %32 = load %struct.page*, %struct.page** %8, align 8
  %33 = getelementptr inbounds %struct.page, %struct.page* %32, i32 0, i32 1
  %34 = call i32 @list_add(i32* %33, i32* @pagelist)
  %35 = load i32, i32* @new_page, align 4
  %36 = load i32, i32* @MPOL_MF_MOVE_ALL, align 4
  %37 = load i32, i32* @MIGRATE_SYNC, align 4
  %38 = call i32 @migrate_huge_pages(i32* @pagelist, i32 %35, i32 %36, i32 0, i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %29
  %42 = load i64, i64* %7, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.page*, %struct.page** %4, align 8
  %45 = getelementptr inbounds %struct.page, %struct.page* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (i8*, i64, ...) @pr_info(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i64 %42, i32 %43, i32 %46)
  %48 = load i32, i32* %6, align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %41
  %51 = load i32, i32* @EIO, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %50, %41
  br label %63

54:                                               ; preds = %29
  %55 = load %struct.page*, %struct.page** %8, align 8
  %56 = call i32 @set_page_hwpoison_huge_page(%struct.page* %55)
  %57 = load %struct.page*, %struct.page** %8, align 8
  %58 = call i32 @dequeue_hwpoisoned_huge_page(%struct.page* %57)
  %59 = load %struct.page*, %struct.page** %8, align 8
  %60 = call i32 @compound_trans_order(%struct.page* %59)
  %61 = shl i32 1, %60
  %62 = call i32 @atomic_long_add(i32 %61, i32* @num_poisoned_pages)
  br label %63

63:                                               ; preds = %54, %53
  %64 = load i32, i32* %6, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %63, %20
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i64 @page_to_pfn(%struct.page*) #1

declare dso_local %struct.page* @compound_head(%struct.page*) #1

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i64 @PageHWPoison(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @pr_info(i8*, i64, ...) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @migrate_huge_pages(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @set_page_hwpoison_huge_page(%struct.page*) #1

declare dso_local i32 @dequeue_hwpoisoned_huge_page(%struct.page*) #1

declare dso_local i32 @atomic_long_add(i32, i32*) #1

declare dso_local i32 @compound_trans_order(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
