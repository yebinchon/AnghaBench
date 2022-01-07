; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_page_alloc.c___pagevec_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_page_alloc.c___pagevec_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pagevec = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__pagevec_free(%struct.pagevec* %0) #0 {
  %2 = alloca %struct.pagevec*, align 8
  %3 = alloca i32, align 4
  store %struct.pagevec* %0, %struct.pagevec** %2, align 8
  %4 = load %struct.pagevec*, %struct.pagevec** %2, align 8
  %5 = call i32 @pagevec_count(%struct.pagevec* %4)
  store i32 %5, i32* %3, align 4
  br label %6

6:                                                ; preds = %10, %1
  %7 = load i32, i32* %3, align 4
  %8 = add nsw i32 %7, -1
  store i32 %8, i32* %3, align 4
  %9 = icmp sge i32 %8, 0
  br i1 %9, label %10, label %33

10:                                               ; preds = %6
  %11 = load %struct.pagevec*, %struct.pagevec** %2, align 8
  %12 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.pagevec*, %struct.pagevec** %2, align 8
  %19 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @trace_mm_pagevec_free(i32 %17, i32 %20)
  %22 = load %struct.pagevec*, %struct.pagevec** %2, align 8
  %23 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.pagevec*, %struct.pagevec** %2, align 8
  %30 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @free_hot_cold_page(i32 %28, i32 %31)
  br label %6

33:                                               ; preds = %6
  ret void
}

declare dso_local i32 @pagevec_count(%struct.pagevec*) #1

declare dso_local i32 @trace_mm_pagevec_free(i32, i32) #1

declare dso_local i32 @free_hot_cold_page(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
