; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_page_alloc.c___free_pages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_page_alloc.c___free_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__free_pages(%struct.page* %0, i32 %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.page*, %struct.page** %3, align 8
  %6 = call i64 @put_page_testzero(%struct.page* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %22

8:                                                ; preds = %2
  %9 = load %struct.page*, %struct.page** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @trace_mm_page_free_direct(%struct.page* %9, i32 %10)
  %12 = load i32, i32* %4, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %8
  %15 = load %struct.page*, %struct.page** %3, align 8
  %16 = call i32 @free_hot_page(%struct.page* %15)
  br label %21

17:                                               ; preds = %8
  %18 = load %struct.page*, %struct.page** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @__free_pages_ok(%struct.page* %18, i32 %19)
  br label %21

21:                                               ; preds = %17, %14
  br label %22

22:                                               ; preds = %21, %2
  ret void
}

declare dso_local i64 @put_page_testzero(%struct.page*) #1

declare dso_local i32 @trace_mm_page_free_direct(%struct.page*, i32) #1

declare dso_local i32 @free_hot_page(%struct.page*) #1

declare dso_local i32 @__free_pages_ok(%struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
