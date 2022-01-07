; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_hugetlb.c_return_unused_surplus_pages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_hugetlb.c_return_unused_surplus_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hstate = type { i64, i64, i32 }

@MAX_ORDER = common dso_local global i64 0, align 8
@node_states = common dso_local global i32* null, align 8
@N_HIGH_MEMORY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hstate*, i64)* @return_unused_surplus_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @return_unused_surplus_pages(%struct.hstate* %0, i64 %1) #0 {
  %3 = alloca %struct.hstate*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.hstate* %0, %struct.hstate** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = load %struct.hstate*, %struct.hstate** %3, align 8
  %8 = getelementptr inbounds %struct.hstate, %struct.hstate* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = sub i64 %9, %6
  store i64 %10, i64* %8, align 8
  %11 = load %struct.hstate*, %struct.hstate** %3, align 8
  %12 = getelementptr inbounds %struct.hstate, %struct.hstate* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @MAX_ORDER, align 8
  %15 = icmp sge i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %36

17:                                               ; preds = %2
  %18 = load i64, i64* %4, align 8
  %19 = load %struct.hstate*, %struct.hstate** %3, align 8
  %20 = getelementptr inbounds %struct.hstate, %struct.hstate* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @min(i64 %18, i32 %21)
  store i64 %22, i64* %5, align 8
  br label %23

23:                                               ; preds = %35, %17
  %24 = load i64, i64* %5, align 8
  %25 = add i64 %24, -1
  store i64 %25, i64* %5, align 8
  %26 = icmp ne i64 %24, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %23
  %28 = load %struct.hstate*, %struct.hstate** %3, align 8
  %29 = load i32*, i32** @node_states, align 8
  %30 = load i64, i64* @N_HIGH_MEMORY, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = call i32 @free_pool_huge_page(%struct.hstate* %28, i32* %31, i32 1)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %27
  br label %36

35:                                               ; preds = %27
  br label %23

36:                                               ; preds = %16, %34, %23
  ret void
}

declare dso_local i64 @min(i64, i32) #1

declare dso_local i32 @free_pool_huge_page(%struct.hstate*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
