; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_kmemcheck.c_kmemcheck_free_shadow.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_kmemcheck.c_kmemcheck_free_shadow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kmemcheck_free_shadow(%struct.page* %0, i32 %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.page*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.page*, %struct.page** %3, align 8
  %9 = call i32 @kmemcheck_page_is_tracked(%struct.page* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %40

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = shl i32 1, %13
  store i32 %14, i32* %6, align 4
  %15 = load %struct.page*, %struct.page** %3, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @kmemcheck_show_pages(%struct.page* %15, i32 %16)
  %18 = load %struct.page*, %struct.page** %3, align 8
  %19 = getelementptr inbounds %struct.page, %struct.page* %18, i64 0
  %20 = getelementptr inbounds %struct.page, %struct.page* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = call %struct.page* @virt_to_page(i32* %21)
  store %struct.page* %22, %struct.page** %5, align 8
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %33, %12
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %23
  %28 = load %struct.page*, %struct.page** %3, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.page, %struct.page* %28, i64 %30
  %32 = getelementptr inbounds %struct.page, %struct.page* %31, i32 0, i32 0
  store i32* null, i32** %32, align 8
  br label %33

33:                                               ; preds = %27
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %7, align 4
  br label %23

36:                                               ; preds = %23
  %37 = load %struct.page*, %struct.page** %5, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @__free_pages(%struct.page* %37, i32 %38)
  br label %40

40:                                               ; preds = %36, %11
  ret void
}

declare dso_local i32 @kmemcheck_page_is_tracked(%struct.page*) #1

declare dso_local i32 @kmemcheck_show_pages(%struct.page*, i32) #1

declare dso_local %struct.page* @virt_to_page(i32*) #1

declare dso_local i32 @__free_pages(%struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
