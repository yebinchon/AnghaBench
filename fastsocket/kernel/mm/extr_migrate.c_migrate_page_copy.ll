; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_migrate.c_migrate_page_copy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_migrate.c_migrate_page_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @migrate_page_copy(%struct.page* %0, %struct.page* %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca %struct.page*, align 8
  store %struct.page* %0, %struct.page** %3, align 8
  store %struct.page* %1, %struct.page** %4, align 8
  %5 = load %struct.page*, %struct.page** %4, align 8
  %6 = call i64 @PageHuge(%struct.page* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load %struct.page*, %struct.page** %3, align 8
  %10 = load %struct.page*, %struct.page** %4, align 8
  %11 = call i32 @copy_huge_page(%struct.page* %9, %struct.page* %10)
  br label %16

12:                                               ; preds = %2
  %13 = load %struct.page*, %struct.page** %3, align 8
  %14 = load %struct.page*, %struct.page** %4, align 8
  %15 = call i32 @copy_highpage(%struct.page* %13, %struct.page* %14)
  br label %16

16:                                               ; preds = %12, %8
  %17 = load %struct.page*, %struct.page** %4, align 8
  %18 = call i64 @PageError(%struct.page* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load %struct.page*, %struct.page** %3, align 8
  %22 = call i32 @SetPageError(%struct.page* %21)
  br label %23

23:                                               ; preds = %20, %16
  %24 = load %struct.page*, %struct.page** %4, align 8
  %25 = call i64 @PageReferenced(%struct.page* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load %struct.page*, %struct.page** %3, align 8
  %29 = call i32 @SetPageReferenced(%struct.page* %28)
  br label %30

30:                                               ; preds = %27, %23
  %31 = load %struct.page*, %struct.page** %4, align 8
  %32 = call i64 @PageUptodate(%struct.page* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load %struct.page*, %struct.page** %3, align 8
  %36 = call i32 @SetPageUptodate(%struct.page* %35)
  br label %37

37:                                               ; preds = %34, %30
  %38 = load %struct.page*, %struct.page** %4, align 8
  %39 = call i64 @TestClearPageActive(%struct.page* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  %42 = load %struct.page*, %struct.page** %4, align 8
  %43 = call i32 @PageUnevictable(%struct.page* %42)
  %44 = call i32 @VM_BUG_ON(i32 %43)
  %45 = load %struct.page*, %struct.page** %3, align 8
  %46 = call i32 @SetPageActive(%struct.page* %45)
  br label %51

47:                                               ; preds = %37
  %48 = load %struct.page*, %struct.page** %3, align 8
  %49 = load %struct.page*, %struct.page** %4, align 8
  %50 = call i32 @unevictable_migrate_page(%struct.page* %48, %struct.page* %49)
  br label %51

51:                                               ; preds = %47, %41
  %52 = load %struct.page*, %struct.page** %4, align 8
  %53 = call i64 @PageChecked(%struct.page* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load %struct.page*, %struct.page** %3, align 8
  %57 = call i32 @SetPageChecked(%struct.page* %56)
  br label %58

58:                                               ; preds = %55, %51
  %59 = load %struct.page*, %struct.page** %4, align 8
  %60 = call i64 @PageMappedToDisk(%struct.page* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load %struct.page*, %struct.page** %3, align 8
  %64 = call i32 @SetPageMappedToDisk(%struct.page* %63)
  br label %65

65:                                               ; preds = %62, %58
  %66 = load %struct.page*, %struct.page** %4, align 8
  %67 = call i64 @PageDirty(%struct.page* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %65
  %70 = load %struct.page*, %struct.page** %4, align 8
  %71 = call i32 @clear_page_dirty_for_io(%struct.page* %70)
  %72 = load %struct.page*, %struct.page** %3, align 8
  %73 = call i32 @__set_page_dirty_nobuffers(%struct.page* %72)
  br label %74

74:                                               ; preds = %69, %65
  %75 = load %struct.page*, %struct.page** %3, align 8
  %76 = load %struct.page*, %struct.page** %4, align 8
  %77 = call i32 @mlock_migrate_page(%struct.page* %75, %struct.page* %76)
  %78 = load %struct.page*, %struct.page** %3, align 8
  %79 = load %struct.page*, %struct.page** %4, align 8
  %80 = call i32 @ksm_migrate_page(%struct.page* %78, %struct.page* %79)
  %81 = load %struct.page*, %struct.page** %4, align 8
  %82 = call i32 @ClearPageSwapCache(%struct.page* %81)
  %83 = load %struct.page*, %struct.page** %4, align 8
  %84 = call i32 @ClearPagePrivate(%struct.page* %83)
  %85 = load %struct.page*, %struct.page** %4, align 8
  %86 = call i32 @set_page_private(%struct.page* %85, i32 0)
  %87 = load %struct.page*, %struct.page** %4, align 8
  %88 = getelementptr inbounds %struct.page, %struct.page* %87, i32 0, i32 0
  store i32* null, i32** %88, align 8
  %89 = load %struct.page*, %struct.page** %3, align 8
  %90 = call i64 @PageWriteback(%struct.page* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %74
  %93 = load %struct.page*, %struct.page** %3, align 8
  %94 = call i32 @end_page_writeback(%struct.page* %93)
  br label %95

95:                                               ; preds = %92, %74
  ret void
}

declare dso_local i64 @PageHuge(%struct.page*) #1

declare dso_local i32 @copy_huge_page(%struct.page*, %struct.page*) #1

declare dso_local i32 @copy_highpage(%struct.page*, %struct.page*) #1

declare dso_local i64 @PageError(%struct.page*) #1

declare dso_local i32 @SetPageError(%struct.page*) #1

declare dso_local i64 @PageReferenced(%struct.page*) #1

declare dso_local i32 @SetPageReferenced(%struct.page*) #1

declare dso_local i64 @PageUptodate(%struct.page*) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local i64 @TestClearPageActive(%struct.page*) #1

declare dso_local i32 @VM_BUG_ON(i32) #1

declare dso_local i32 @PageUnevictable(%struct.page*) #1

declare dso_local i32 @SetPageActive(%struct.page*) #1

declare dso_local i32 @unevictable_migrate_page(%struct.page*, %struct.page*) #1

declare dso_local i64 @PageChecked(%struct.page*) #1

declare dso_local i32 @SetPageChecked(%struct.page*) #1

declare dso_local i64 @PageMappedToDisk(%struct.page*) #1

declare dso_local i32 @SetPageMappedToDisk(%struct.page*) #1

declare dso_local i64 @PageDirty(%struct.page*) #1

declare dso_local i32 @clear_page_dirty_for_io(%struct.page*) #1

declare dso_local i32 @__set_page_dirty_nobuffers(%struct.page*) #1

declare dso_local i32 @mlock_migrate_page(%struct.page*, %struct.page*) #1

declare dso_local i32 @ksm_migrate_page(%struct.page*, %struct.page*) #1

declare dso_local i32 @ClearPageSwapCache(%struct.page*) #1

declare dso_local i32 @ClearPagePrivate(%struct.page*) #1

declare dso_local i32 @set_page_private(%struct.page*, i32) #1

declare dso_local i64 @PageWriteback(%struct.page*) #1

declare dso_local i32 @end_page_writeback(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
