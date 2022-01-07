; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_slub.c_kmalloc_large_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_slub.c_kmalloc_large_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@__GFP_COMP = common dso_local global i32 0, align 4
@__GFP_NOTRACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64, i32, i32)* @kmalloc_large_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @kmalloc_large_node(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.page*, align 8
  %8 = alloca i8*, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i8* null, i8** %8, align 8
  %9 = load i32, i32* @__GFP_COMP, align 4
  %10 = load i32, i32* @__GFP_NOTRACK, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* %5, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i64, i64* %4, align 8
  %17 = call i32 @get_order(i64 %16)
  %18 = call %struct.page* @alloc_pages_node(i32 %14, i32 %15, i32 %17)
  store %struct.page* %18, %struct.page** %7, align 8
  %19 = load %struct.page*, %struct.page** %7, align 8
  %20 = icmp ne %struct.page* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load %struct.page*, %struct.page** %7, align 8
  %23 = call i8* @page_address(%struct.page* %22)
  store i8* %23, i8** %8, align 8
  br label %24

24:                                               ; preds = %21, %3
  %25 = load i8*, i8** %8, align 8
  %26 = load i64, i64* %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @kmemleak_alloc(i8* %25, i64 %26, i32 1, i32 %27)
  %29 = load i8*, i8** %8, align 8
  ret i8* %29
}

declare dso_local %struct.page* @alloc_pages_node(i32, i32, i32) #1

declare dso_local i32 @get_order(i64) #1

declare dso_local i8* @page_address(%struct.page*) #1

declare dso_local i32 @kmemleak_alloc(i8*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
