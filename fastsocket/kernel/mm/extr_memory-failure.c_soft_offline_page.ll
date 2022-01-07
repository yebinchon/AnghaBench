; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memory-failure.c_soft_offline_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memory-failure.c_soft_offline_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"soft offline: %#lx page already poisoned\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"soft offline: %#lx: failed to split THP\0A\00", align 1
@num_poisoned_pages = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @soft_offline_page(%struct.page* %0, i32 %1) #0 {
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
  %12 = call %struct.page* @compound_trans_head(%struct.page* %11)
  store %struct.page* %12, %struct.page** %8, align 8
  %13 = load %struct.page*, %struct.page** %4, align 8
  %14 = call i64 @PageHWPoison(%struct.page* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load i64, i64* %7, align 8
  %18 = call i32 @pr_info(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %17)
  %19 = load i32, i32* @EBUSY, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %89

21:                                               ; preds = %2
  %22 = load %struct.page*, %struct.page** %4, align 8
  %23 = call i64 @PageHuge(%struct.page* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %44, label %25

25:                                               ; preds = %21
  %26 = load %struct.page*, %struct.page** %8, align 8
  %27 = call i64 @PageTransHuge(%struct.page* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %44

29:                                               ; preds = %25
  %30 = load %struct.page*, %struct.page** %8, align 8
  %31 = call i64 @PageAnon(%struct.page* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %29
  %34 = load %struct.page*, %struct.page** %8, align 8
  %35 = call i32 @split_huge_page(%struct.page* %34)
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load i64, i64* %7, align 8
  %40 = call i32 @pr_info(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %39)
  %41 = load i32, i32* @EBUSY, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %89

43:                                               ; preds = %33, %29
  br label %44

44:                                               ; preds = %43, %25, %21
  %45 = load %struct.page*, %struct.page** %4, align 8
  %46 = load i64, i64* %7, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @get_any_page(%struct.page* %45, i64 %46, i32 %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %3, align 4
  br label %89

53:                                               ; preds = %44
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %53
  %57 = load %struct.page*, %struct.page** %4, align 8
  %58 = call i64 @PageHuge(%struct.page* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = load %struct.page*, %struct.page** %4, align 8
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @soft_offline_huge_page(%struct.page* %61, i32 %62)
  store i32 %63, i32* %6, align 4
  br label %68

64:                                               ; preds = %56
  %65 = load %struct.page*, %struct.page** %4, align 8
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @__soft_offline_page(%struct.page* %65, i32 %66)
  store i32 %67, i32* %6, align 4
  br label %68

68:                                               ; preds = %64, %60
  br label %87

69:                                               ; preds = %53
  %70 = load %struct.page*, %struct.page** %4, align 8
  %71 = call i64 @PageHuge(%struct.page* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %69
  %74 = load %struct.page*, %struct.page** %8, align 8
  %75 = call i32 @set_page_hwpoison_huge_page(%struct.page* %74)
  %76 = load %struct.page*, %struct.page** %8, align 8
  %77 = call i32 @dequeue_hwpoisoned_huge_page(%struct.page* %76)
  %78 = load %struct.page*, %struct.page** %8, align 8
  %79 = call i32 @compound_trans_order(%struct.page* %78)
  %80 = shl i32 1, %79
  %81 = call i32 @atomic_long_add(i32 %80, i32* @num_poisoned_pages)
  br label %86

82:                                               ; preds = %69
  %83 = load %struct.page*, %struct.page** %4, align 8
  %84 = call i32 @SetPageHWPoison(%struct.page* %83)
  %85 = call i32 @atomic_long_inc(i32* @num_poisoned_pages)
  br label %86

86:                                               ; preds = %82, %73
  br label %87

87:                                               ; preds = %86, %68
  %88 = load i32, i32* %6, align 4
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %87, %51, %38, %16
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i64 @page_to_pfn(%struct.page*) #1

declare dso_local %struct.page* @compound_trans_head(%struct.page*) #1

declare dso_local i64 @PageHWPoison(%struct.page*) #1

declare dso_local i32 @pr_info(i8*, i64) #1

declare dso_local i64 @PageHuge(%struct.page*) #1

declare dso_local i64 @PageTransHuge(%struct.page*) #1

declare dso_local i64 @PageAnon(%struct.page*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @split_huge_page(%struct.page*) #1

declare dso_local i32 @get_any_page(%struct.page*, i64, i32) #1

declare dso_local i32 @soft_offline_huge_page(%struct.page*, i32) #1

declare dso_local i32 @__soft_offline_page(%struct.page*, i32) #1

declare dso_local i32 @set_page_hwpoison_huge_page(%struct.page*) #1

declare dso_local i32 @dequeue_hwpoisoned_huge_page(%struct.page*) #1

declare dso_local i32 @atomic_long_add(i32, i32*) #1

declare dso_local i32 @compound_trans_order(%struct.page*) #1

declare dso_local i32 @SetPageHWPoison(%struct.page*) #1

declare dso_local i32 @atomic_long_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
