; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_page_alloc.c_alloc_pages_exact_nid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_page_alloc.c_alloc_pages_exact_nid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @alloc_pages_exact_nid(i32 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.page*, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i64, i64* %6, align 8
  %11 = call i32 @get_order(i64 %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %8, align 4
  %15 = call %struct.page* @alloc_pages_node(i32 %12, i32 %13, i32 %14)
  store %struct.page* %15, %struct.page** %9, align 8
  %16 = load %struct.page*, %struct.page** %9, align 8
  %17 = icmp ne %struct.page* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %25

19:                                               ; preds = %3
  %20 = load %struct.page*, %struct.page** %9, align 8
  %21 = call i64 @page_address(%struct.page* %20)
  %22 = load i32, i32* %8, align 4
  %23 = load i64, i64* %6, align 8
  %24 = call i8* @make_alloc_exact(i64 %21, i32 %22, i64 %23)
  store i8* %24, i8** %4, align 8
  br label %25

25:                                               ; preds = %19, %18
  %26 = load i8*, i8** %4, align 8
  ret i8* %26
}

declare dso_local i32 @get_order(i64) #1

declare dso_local %struct.page* @alloc_pages_node(i32, i32, i32) #1

declare dso_local i8* @make_alloc_exact(i64, i32, i64) #1

declare dso_local i64 @page_address(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
