; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_filemap.c_wait_on_page_writeback_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_filemap.c_wait_on_page_writeback_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { i32 }
%struct.pagevec = type { %struct.page** }
%struct.page = type { i64 }

@PAGECACHE_TAG_WRITEBACK = common dso_local global i32 0, align 4
@PAGEVEC_SIZE = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@AS_ENOSPC = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@AS_EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wait_on_page_writeback_range(%struct.address_space* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.address_space*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.pagevec, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.page*, align 8
  store %struct.address_space* %0, %struct.address_space** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %10, align 4
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* %6, align 8
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %93

18:                                               ; preds = %3
  %19 = call i32 @pagevec_init(%struct.pagevec* %8, i32 0)
  %20 = load i64, i64* %6, align 8
  store i64 %20, i64* %11, align 8
  br label %21

21:                                               ; preds = %70, %18
  %22 = load i64, i64* %11, align 8
  %23 = load i64, i64* %7, align 8
  %24 = icmp sle i64 %22, %23
  br i1 %24, label %25, label %37

25:                                               ; preds = %21
  %26 = load %struct.address_space*, %struct.address_space** %5, align 8
  %27 = load i32, i32* @PAGECACHE_TAG_WRITEBACK, align 4
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* %11, align 8
  %30 = sub nsw i64 %28, %29
  %31 = load i64, i64* @PAGEVEC_SIZE, align 8
  %32 = sub nsw i64 %31, 1
  %33 = call i64 @min(i64 %30, i64 %32)
  %34 = add nsw i64 %33, 1
  %35 = call i32 @pagevec_lookup_tag(%struct.pagevec* %8, %struct.address_space* %26, i64* %11, i32 %27, i64 %34)
  store i32 %35, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br label %37

37:                                               ; preds = %25, %21
  %38 = phi i1 [ false, %21 ], [ %36, %25 ]
  br i1 %38, label %39, label %73

39:                                               ; preds = %37
  store i32 0, i32* %12, align 4
  br label %40

40:                                               ; preds = %67, %39
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp ult i32 %41, %42
  br i1 %43, label %44, label %70

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %8, i32 0, i32 0
  %46 = load %struct.page**, %struct.page*** %45, align 8
  %47 = load i32, i32* %12, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.page*, %struct.page** %46, i64 %48
  %50 = load %struct.page*, %struct.page** %49, align 8
  store %struct.page* %50, %struct.page** %13, align 8
  %51 = load %struct.page*, %struct.page** %13, align 8
  %52 = getelementptr inbounds %struct.page, %struct.page* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %7, align 8
  %55 = icmp sgt i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %44
  br label %67

57:                                               ; preds = %44
  %58 = load %struct.page*, %struct.page** %13, align 8
  %59 = call i32 @wait_on_page_writeback(%struct.page* %58)
  %60 = load %struct.page*, %struct.page** %13, align 8
  %61 = call i64 @TestClearPageError(%struct.page* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load i32, i32* @EIO, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %10, align 4
  br label %66

66:                                               ; preds = %63, %57
  br label %67

67:                                               ; preds = %66, %56
  %68 = load i32, i32* %12, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %12, align 4
  br label %40

70:                                               ; preds = %40
  %71 = call i32 @pagevec_release(%struct.pagevec* %8)
  %72 = call i32 (...) @cond_resched()
  br label %21

73:                                               ; preds = %37
  %74 = load i32, i32* @AS_ENOSPC, align 4
  %75 = load %struct.address_space*, %struct.address_space** %5, align 8
  %76 = getelementptr inbounds %struct.address_space, %struct.address_space* %75, i32 0, i32 0
  %77 = call i64 @test_and_clear_bit(i32 %74, i32* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %73
  %80 = load i32, i32* @ENOSPC, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %10, align 4
  br label %82

82:                                               ; preds = %79, %73
  %83 = load i32, i32* @AS_EIO, align 4
  %84 = load %struct.address_space*, %struct.address_space** %5, align 8
  %85 = getelementptr inbounds %struct.address_space, %struct.address_space* %84, i32 0, i32 0
  %86 = call i64 @test_and_clear_bit(i32 %83, i32* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %82
  %89 = load i32, i32* @EIO, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %10, align 4
  br label %91

91:                                               ; preds = %88, %82
  %92 = load i32, i32* %10, align 4
  store i32 %92, i32* %4, align 4
  br label %93

93:                                               ; preds = %91, %17
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local i32 @pagevec_init(%struct.pagevec*, i32) #1

declare dso_local i32 @pagevec_lookup_tag(%struct.pagevec*, %struct.address_space*, i64*, i32, i64) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @wait_on_page_writeback(%struct.page*) #1

declare dso_local i64 @TestClearPageError(%struct.page*) #1

declare dso_local i32 @pagevec_release(%struct.pagevec*) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
