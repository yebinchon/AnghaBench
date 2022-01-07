; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_swap.c_pagevec_strip.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_swap.c_pagevec_strip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pagevec = type { %struct.page** }
%struct.page = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pagevec_strip(%struct.pagevec* %0) #0 {
  %2 = alloca %struct.pagevec*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.page*, align 8
  store %struct.pagevec* %0, %struct.pagevec** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %36, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.pagevec*, %struct.pagevec** %2, align 8
  %8 = call i32 @pagevec_count(%struct.pagevec* %7)
  %9 = icmp slt i32 %6, %8
  br i1 %9, label %10, label %39

10:                                               ; preds = %5
  %11 = load %struct.pagevec*, %struct.pagevec** %2, align 8
  %12 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %11, i32 0, i32 0
  %13 = load %struct.page**, %struct.page*** %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.page*, %struct.page** %13, i64 %15
  %17 = load %struct.page*, %struct.page** %16, align 8
  store %struct.page* %17, %struct.page** %4, align 8
  %18 = load %struct.page*, %struct.page** %4, align 8
  %19 = call i64 @page_has_private(%struct.page* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %10
  %22 = load %struct.page*, %struct.page** %4, align 8
  %23 = call i64 @trylock_page(%struct.page* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %21
  %26 = load %struct.page*, %struct.page** %4, align 8
  %27 = call i64 @page_has_private(%struct.page* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load %struct.page*, %struct.page** %4, align 8
  %31 = call i32 @try_to_release_page(%struct.page* %30, i32 0)
  br label %32

32:                                               ; preds = %29, %25
  %33 = load %struct.page*, %struct.page** %4, align 8
  %34 = call i32 @unlock_page(%struct.page* %33)
  br label %35

35:                                               ; preds = %32, %21, %10
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %3, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %3, align 4
  br label %5

39:                                               ; preds = %5
  ret void
}

declare dso_local i32 @pagevec_count(%struct.pagevec*) #1

declare dso_local i64 @page_has_private(%struct.page*) #1

declare dso_local i64 @trylock_page(%struct.page*) #1

declare dso_local i32 @try_to_release_page(%struct.page*, i32) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
