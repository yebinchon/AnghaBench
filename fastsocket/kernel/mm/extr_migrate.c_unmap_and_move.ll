; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_migrate.c_unmap_and_move.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_migrate.c_unmap_and_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@NR_ISOLATED_ANON = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page* (%struct.page*, i64, i32**)*, i64, %struct.page*, i32, i32, i32)* @unmap_and_move to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unmap_and_move(%struct.page* (%struct.page*, i64, i32**)* %0, i64 %1, %struct.page* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.page* (%struct.page*, i64, i32**)*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.page*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.page*, align 8
  store %struct.page* (%struct.page*, i64, i32**)* %0, %struct.page* (%struct.page*, i64, i32**)** %8, align 8
  store i64 %1, i64* %9, align 8
  store %struct.page* %2, %struct.page** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32* null, i32** %15, align 8
  %17 = load %struct.page* (%struct.page*, i64, i32**)*, %struct.page* (%struct.page*, i64, i32**)** %8, align 8
  %18 = load %struct.page*, %struct.page** %10, align 8
  %19 = load i64, i64* %9, align 8
  %20 = call %struct.page* %17(%struct.page* %18, i64 %19, i32** %15)
  store %struct.page* %20, %struct.page** %16, align 8
  %21 = load %struct.page*, %struct.page** %16, align 8
  %22 = icmp ne %struct.page* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %6
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %7, align 4
  br label %85

26:                                               ; preds = %6
  %27 = load %struct.page*, %struct.page** %10, align 8
  %28 = call i32 @page_count(%struct.page* %27)
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  br label %50

31:                                               ; preds = %26
  %32 = load %struct.page*, %struct.page** %10, align 8
  %33 = call i32 @PageTransHuge(%struct.page* %32)
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load %struct.page*, %struct.page** %10, align 8
  %38 = call i32 @split_huge_page(%struct.page* %37)
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %50

42:                                               ; preds = %36
  br label %43

43:                                               ; preds = %42, %31
  %44 = load %struct.page*, %struct.page** %10, align 8
  %45 = load %struct.page*, %struct.page** %16, align 8
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* %13, align 4
  %49 = call i32 @__unmap_and_move(%struct.page* %44, %struct.page* %45, i32 %46, i32 %47, i32 %48)
  store i32 %49, i32* %14, align 4
  br label %50

50:                                               ; preds = %43, %41, %30
  %51 = load i32, i32* %14, align 4
  %52 = load i32, i32* @EAGAIN, align 4
  %53 = sub nsw i32 0, %52
  %54 = icmp ne i32 %51, %53
  br i1 %54, label %55, label %67

55:                                               ; preds = %50
  %56 = load %struct.page*, %struct.page** %10, align 8
  %57 = getelementptr inbounds %struct.page, %struct.page* %56, i32 0, i32 0
  %58 = call i32 @list_del(i32* %57)
  %59 = load %struct.page*, %struct.page** %10, align 8
  %60 = load i64, i64* @NR_ISOLATED_ANON, align 8
  %61 = load %struct.page*, %struct.page** %10, align 8
  %62 = call i64 @page_is_file_cache(%struct.page* %61)
  %63 = add nsw i64 %60, %62
  %64 = call i32 @dec_zone_page_state(%struct.page* %59, i64 %63)
  %65 = load %struct.page*, %struct.page** %10, align 8
  %66 = call i32 @putback_lru_page(%struct.page* %65)
  br label %67

67:                                               ; preds = %55, %50
  %68 = load %struct.page*, %struct.page** %16, align 8
  %69 = call i32 @putback_lru_page(%struct.page* %68)
  %70 = load i32*, i32** %15, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %83

72:                                               ; preds = %67
  %73 = load i32, i32* %14, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load i32, i32* %14, align 4
  %77 = load i32*, i32** %15, align 8
  store i32 %76, i32* %77, align 4
  br label %82

78:                                               ; preds = %72
  %79 = load %struct.page*, %struct.page** %16, align 8
  %80 = call i32 @page_to_nid(%struct.page* %79)
  %81 = load i32*, i32** %15, align 8
  store i32 %80, i32* %81, align 4
  br label %82

82:                                               ; preds = %78, %75
  br label %83

83:                                               ; preds = %82, %67
  %84 = load i32, i32* %14, align 4
  store i32 %84, i32* %7, align 4
  br label %85

85:                                               ; preds = %83, %23
  %86 = load i32, i32* %7, align 4
  ret i32 %86
}

declare dso_local i32 @page_count(%struct.page*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @PageTransHuge(%struct.page*) #1

declare dso_local i32 @split_huge_page(%struct.page*) #1

declare dso_local i32 @__unmap_and_move(%struct.page*, %struct.page*, i32, i32, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @dec_zone_page_state(%struct.page*, i64) #1

declare dso_local i64 @page_is_file_cache(%struct.page*) #1

declare dso_local i32 @putback_lru_page(%struct.page*) #1

declare dso_local i32 @page_to_nid(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
