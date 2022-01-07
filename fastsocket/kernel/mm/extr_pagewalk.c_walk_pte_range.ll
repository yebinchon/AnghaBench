; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_pagewalk.c_walk_pte_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_pagewalk.c_walk_pte_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_walk = type { i32 (i32*, i64, i64, %struct.mm_walk*)* }

@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i64, %struct.mm_walk*)* @walk_pte_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @walk_pte_range(i32* %0, i64 %1, i64 %2, %struct.mm_walk* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.mm_walk*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.mm_walk* %3, %struct.mm_walk** %8, align 8
  store i32 0, i32* %10, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = load i64, i64* %6, align 8
  %13 = call i32* @pte_offset_map(i32* %11, i64 %12)
  store i32* %13, i32** %9, align 8
  br label %14

14:                                               ; preds = %36, %4
  %15 = load %struct.mm_walk*, %struct.mm_walk** %8, align 8
  %16 = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %15, i32 0, i32 0
  %17 = load i32 (i32*, i64, i64, %struct.mm_walk*)*, i32 (i32*, i64, i64, %struct.mm_walk*)** %16, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* @PAGE_SIZE, align 8
  %22 = add i64 %20, %21
  %23 = load %struct.mm_walk*, %struct.mm_walk** %8, align 8
  %24 = call i32 %17(i32* %18, i64 %19, i64 %22, %struct.mm_walk* %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %14
  br label %39

28:                                               ; preds = %14
  %29 = load i64, i64* @PAGE_SIZE, align 8
  %30 = load i64, i64* %6, align 8
  %31 = add i64 %30, %29
  store i64 %31, i64* %6, align 8
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* %7, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  br label %39

36:                                               ; preds = %28
  %37 = load i32*, i32** %9, align 8
  %38 = getelementptr inbounds i32, i32* %37, i32 1
  store i32* %38, i32** %9, align 8
  br label %14

39:                                               ; preds = %35, %27
  %40 = load i32*, i32** %9, align 8
  %41 = call i32 @pte_unmap(i32* %40)
  %42 = load i32, i32* %10, align 4
  ret i32 %42
}

declare dso_local i32* @pte_offset_map(i32*, i64) #1

declare dso_local i32 @pte_unmap(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
