; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_swap.c___get_page_tail.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_swap.c___get_page_tail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*)* @__get_page_tail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__get_page_tail(%struct.page* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.page*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.page*, align 8
  store %struct.page* %0, %struct.page** %3, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.page*, %struct.page** %3, align 8
  %8 = call %struct.page* @compound_trans_head(%struct.page* %7)
  store %struct.page* %8, %struct.page** %6, align 8
  %9 = load %struct.page*, %struct.page** %3, align 8
  %10 = load %struct.page*, %struct.page** %6, align 8
  %11 = icmp ne %struct.page* %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.page*, %struct.page** %6, align 8
  %14 = call i64 @get_page_unless_zero(%struct.page* %13)
  %15 = icmp ne i64 %14, 0
  br label %16

16:                                               ; preds = %12, %1
  %17 = phi i1 [ false, %1 ], [ %15, %12 ]
  %18 = zext i1 %17 to i32
  %19 = call i64 @likely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %60

21:                                               ; preds = %16
  %22 = load %struct.page*, %struct.page** %6, align 8
  %23 = call i64 @PageSlab(%struct.page* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %21
  %26 = load %struct.page*, %struct.page** %3, align 8
  %27 = call i32 @PageTail(%struct.page* %26)
  %28 = call i64 @likely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load %struct.page*, %struct.page** %3, align 8
  %32 = call i32 @__get_page_tail_foll(%struct.page* %31, i32 0)
  store i32 1, i32* %2, align 4
  br label %62

33:                                               ; preds = %25
  %34 = load %struct.page*, %struct.page** %6, align 8
  %35 = call i32 @put_page(%struct.page* %34)
  store i32 0, i32* %2, align 4
  br label %62

36:                                               ; preds = %21
  %37 = load %struct.page*, %struct.page** %6, align 8
  %38 = call i64 @compound_lock_irqsave(%struct.page* %37)
  store i64 %38, i64* %4, align 8
  %39 = load %struct.page*, %struct.page** %3, align 8
  %40 = call i32 @PageTail(%struct.page* %39)
  %41 = call i64 @likely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load %struct.page*, %struct.page** %3, align 8
  %45 = call i32 @__get_page_tail_foll(%struct.page* %44, i32 0)
  store i32 1, i32* %5, align 4
  br label %46

46:                                               ; preds = %43, %36
  %47 = load %struct.page*, %struct.page** %6, align 8
  %48 = load i64, i64* %4, align 8
  %49 = call i32 @compound_unlock_irqrestore(%struct.page* %47, i64 %48)
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = call i64 @unlikely(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %46
  %57 = load %struct.page*, %struct.page** %6, align 8
  %58 = call i32 @put_page(%struct.page* %57)
  br label %59

59:                                               ; preds = %56, %46
  br label %60

60:                                               ; preds = %59, %16
  %61 = load i32, i32* %5, align 4
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %60, %33, %30
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local %struct.page* @compound_trans_head(%struct.page*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @get_page_unless_zero(%struct.page*) #1

declare dso_local i64 @PageSlab(%struct.page*) #1

declare dso_local i32 @PageTail(%struct.page*) #1

declare dso_local i32 @__get_page_tail_foll(%struct.page*, i32) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i64 @compound_lock_irqsave(%struct.page*) #1

declare dso_local i32 @compound_unlock_irqrestore(%struct.page*, i64) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
