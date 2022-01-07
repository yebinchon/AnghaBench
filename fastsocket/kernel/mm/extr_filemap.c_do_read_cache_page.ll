; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_filemap.c_do_read_cache_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_filemap.c_do_read_cache_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.address_space = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.page* (%struct.address_space*, i32, i32 (i8*, %struct.page*)*, i8*, i32)* @do_read_cache_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.page* @do_read_cache_page(%struct.address_space* %0, i32 %1, i32 (i8*, %struct.page*)* %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.page*, align 8
  %7 = alloca %struct.address_space*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32 (i8*, %struct.page*)*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.page*, align 8
  %13 = alloca i32, align 4
  store %struct.address_space* %0, %struct.address_space** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 (i8*, %struct.page*)* %2, i32 (i8*, %struct.page*)** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  br label %14

14:                                               ; preds = %38, %5
  %15 = load %struct.address_space*, %struct.address_space** %7, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load i32 (i8*, %struct.page*)*, i32 (i8*, %struct.page*)** %9, align 8
  %18 = load i8*, i8** %10, align 8
  %19 = load i32, i32* %11, align 4
  %20 = call %struct.page* @__read_cache_page(%struct.address_space* %15, i32 %16, i32 (i8*, %struct.page*)* %17, i8* %18, i32 %19)
  store %struct.page* %20, %struct.page** %12, align 8
  %21 = load %struct.page*, %struct.page** %12, align 8
  %22 = call i64 @IS_ERR(%struct.page* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %14
  %25 = load %struct.page*, %struct.page** %12, align 8
  store %struct.page* %25, %struct.page** %6, align 8
  br label %67

26:                                               ; preds = %14
  %27 = load %struct.page*, %struct.page** %12, align 8
  %28 = call i64 @PageUptodate(%struct.page* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  br label %63

31:                                               ; preds = %26
  %32 = load %struct.page*, %struct.page** %12, align 8
  %33 = call i32 @lock_page(%struct.page* %32)
  %34 = load %struct.page*, %struct.page** %12, align 8
  %35 = getelementptr inbounds %struct.page, %struct.page* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %31
  %39 = load %struct.page*, %struct.page** %12, align 8
  %40 = call i32 @unlock_page(%struct.page* %39)
  %41 = load %struct.page*, %struct.page** %12, align 8
  %42 = call i32 @page_cache_release(%struct.page* %41)
  br label %14

43:                                               ; preds = %31
  %44 = load %struct.page*, %struct.page** %12, align 8
  %45 = call i64 @PageUptodate(%struct.page* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load %struct.page*, %struct.page** %12, align 8
  %49 = call i32 @unlock_page(%struct.page* %48)
  br label %63

50:                                               ; preds = %43
  %51 = load i32 (i8*, %struct.page*)*, i32 (i8*, %struct.page*)** %9, align 8
  %52 = load i8*, i8** %10, align 8
  %53 = load %struct.page*, %struct.page** %12, align 8
  %54 = call i32 %51(i8* %52, %struct.page* %53)
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %13, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %50
  %58 = load %struct.page*, %struct.page** %12, align 8
  %59 = call i32 @page_cache_release(%struct.page* %58)
  %60 = load i32, i32* %13, align 4
  %61 = call %struct.page* @ERR_PTR(i32 %60)
  store %struct.page* %61, %struct.page** %6, align 8
  br label %67

62:                                               ; preds = %50
  br label %63

63:                                               ; preds = %62, %47, %30
  %64 = load %struct.page*, %struct.page** %12, align 8
  %65 = call i32 @mark_page_accessed(%struct.page* %64)
  %66 = load %struct.page*, %struct.page** %12, align 8
  store %struct.page* %66, %struct.page** %6, align 8
  br label %67

67:                                               ; preds = %63, %57, %24
  %68 = load %struct.page*, %struct.page** %6, align 8
  ret %struct.page* %68
}

declare dso_local %struct.page* @__read_cache_page(%struct.address_space*, i32, i32 (i8*, %struct.page*)*, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i64 @PageUptodate(%struct.page*) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

declare dso_local %struct.page* @ERR_PTR(i32) #1

declare dso_local i32 @mark_page_accessed(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
