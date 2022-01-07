; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memory-failure.c_unpoison_memory.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memory-failure.c_unpoison_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"MCE: Page was already unpoisoned %#lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"MCE: Memory failure is now running on free hugepage %#lx\0A\00", align 1
@num_poisoned_pages = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"MCE: Software-unpoisoned free page %#lx\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"MCE: Software-unpoisoned page %#lx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unpoison_memory(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 0, i32* %6, align 4
  %8 = load i64, i64* %3, align 8
  %9 = call i32 @pfn_valid(i64 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENXIO, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %78

14:                                               ; preds = %1
  %15 = load i64, i64* %3, align 8
  %16 = call %struct.page* @pfn_to_page(i64 %15)
  store %struct.page* %16, %struct.page** %5, align 8
  %17 = load %struct.page*, %struct.page** %5, align 8
  %18 = call %struct.page* @compound_head(%struct.page* %17)
  store %struct.page* %18, %struct.page** %4, align 8
  %19 = load %struct.page*, %struct.page** %5, align 8
  %20 = call i32 @PageHWPoison(%struct.page* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %14
  %23 = load i64, i64* %3, align 8
  %24 = call i32 @pr_info(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %23)
  store i32 0, i32* %2, align 4
  br label %78

25:                                               ; preds = %14
  %26 = load %struct.page*, %struct.page** %4, align 8
  %27 = call i32 @compound_trans_order(%struct.page* %26)
  %28 = shl i32 1, %27
  store i32 %28, i32* %7, align 4
  %29 = load %struct.page*, %struct.page** %4, align 8
  %30 = call i32 @get_page_unless_zero(%struct.page* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %49, label %32

32:                                               ; preds = %25
  %33 = load %struct.page*, %struct.page** %4, align 8
  %34 = call i64 @PageHuge(%struct.page* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i64, i64* %3, align 8
  %38 = call i32 @pr_info(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i64 %37)
  store i32 0, i32* %2, align 4
  br label %78

39:                                               ; preds = %32
  %40 = load %struct.page*, %struct.page** %5, align 8
  %41 = call i64 @TestClearPageHWPoison(%struct.page* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @atomic_long_sub(i32 %44, i32* @num_poisoned_pages)
  br label %46

46:                                               ; preds = %43, %39
  %47 = load i64, i64* %3, align 8
  %48 = call i32 @pr_info(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i64 %47)
  store i32 0, i32* %2, align 4
  br label %78

49:                                               ; preds = %25
  %50 = load %struct.page*, %struct.page** %4, align 8
  %51 = call i32 @lock_page_nosync(%struct.page* %50)
  %52 = load %struct.page*, %struct.page** %4, align 8
  %53 = call i64 @TestClearPageHWPoison(%struct.page* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %67

55:                                               ; preds = %49
  %56 = load i64, i64* %3, align 8
  %57 = call i32 @pr_info(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i64 %56)
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @atomic_long_sub(i32 %58, i32* @num_poisoned_pages)
  store i32 1, i32* %6, align 4
  %60 = load %struct.page*, %struct.page** %4, align 8
  %61 = call i64 @PageHuge(%struct.page* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %55
  %64 = load %struct.page*, %struct.page** %4, align 8
  %65 = call i32 @clear_page_hwpoison_huge_page(%struct.page* %64)
  br label %66

66:                                               ; preds = %63, %55
  br label %67

67:                                               ; preds = %66, %49
  %68 = load %struct.page*, %struct.page** %4, align 8
  %69 = call i32 @unlock_page(%struct.page* %68)
  %70 = load %struct.page*, %struct.page** %4, align 8
  %71 = call i32 @put_page(%struct.page* %70)
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %67
  %75 = load %struct.page*, %struct.page** %4, align 8
  %76 = call i32 @put_page(%struct.page* %75)
  br label %77

77:                                               ; preds = %74, %67
  store i32 0, i32* %2, align 4
  br label %78

78:                                               ; preds = %77, %46, %36, %22, %11
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i32 @pfn_valid(i64) #1

declare dso_local %struct.page* @pfn_to_page(i64) #1

declare dso_local %struct.page* @compound_head(%struct.page*) #1

declare dso_local i32 @PageHWPoison(%struct.page*) #1

declare dso_local i32 @pr_info(i8*, i64) #1

declare dso_local i32 @compound_trans_order(%struct.page*) #1

declare dso_local i32 @get_page_unless_zero(%struct.page*) #1

declare dso_local i64 @PageHuge(%struct.page*) #1

declare dso_local i64 @TestClearPageHWPoison(%struct.page*) #1

declare dso_local i32 @atomic_long_sub(i32, i32*) #1

declare dso_local i32 @lock_page_nosync(%struct.page*) #1

declare dso_local i32 @clear_page_hwpoison_huge_page(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
