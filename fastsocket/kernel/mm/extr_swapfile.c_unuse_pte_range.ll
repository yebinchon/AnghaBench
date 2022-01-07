; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_swapfile.c_unuse_pte_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_swapfile.c_unuse_pte_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32 }
%struct.page = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_area_struct*, i32*, i64, i64, i32, %struct.page*)* @unuse_pte_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unuse_pte_range(%struct.vm_area_struct* %0, i32* %1, i64 %2, i64 %3, i32 %4, %struct.page* %5) #0 {
  %7 = alloca %struct.vm_area_struct*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.page*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.page* %5, %struct.page** %12, align 8
  %16 = load i32, i32* %11, align 4
  %17 = call i32 @swp_entry_to_pte(i32 %16)
  store i32 %17, i32* %13, align 4
  store i32 0, i32* %15, align 4
  %18 = load i32*, i32** %8, align 8
  %19 = load i64, i64* %9, align 8
  %20 = call i32* @pte_offset_map(i32* %18, i64 %19)
  store i32* %20, i32** %14, align 8
  br label %21

21:                                               ; preds = %45, %6
  %22 = load i32*, i32** %14, align 8
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %13, align 4
  %25 = call i32 @pte_same(i32 %23, i32 %24)
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %21
  %29 = load i32*, i32** %14, align 8
  %30 = call i32 @pte_unmap(i32* %29)
  %31 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = load i64, i64* %9, align 8
  %34 = load i32, i32* %11, align 4
  %35 = load %struct.page*, %struct.page** %12, align 8
  %36 = call i32 @unuse_pte(%struct.vm_area_struct* %31, i32* %32, i64 %33, i32 %34, %struct.page* %35)
  store i32 %36, i32* %15, align 4
  %37 = load i32, i32* %15, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %28
  br label %58

40:                                               ; preds = %28
  %41 = load i32*, i32** %8, align 8
  %42 = load i64, i64* %9, align 8
  %43 = call i32* @pte_offset_map(i32* %41, i64 %42)
  store i32* %43, i32** %14, align 8
  br label %44

44:                                               ; preds = %40, %21
  br label %45

45:                                               ; preds = %44
  %46 = load i32*, i32** %14, align 8
  %47 = getelementptr inbounds i32, i32* %46, i32 1
  store i32* %47, i32** %14, align 8
  %48 = load i64, i64* @PAGE_SIZE, align 8
  %49 = load i64, i64* %9, align 8
  %50 = add i64 %49, %48
  store i64 %50, i64* %9, align 8
  %51 = load i64, i64* %9, align 8
  %52 = load i64, i64* %10, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %21, label %54

54:                                               ; preds = %45
  %55 = load i32*, i32** %14, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 -1
  %57 = call i32 @pte_unmap(i32* %56)
  br label %58

58:                                               ; preds = %54, %39
  %59 = load i32, i32* %15, align 4
  ret i32 %59
}

declare dso_local i32 @swp_entry_to_pte(i32) #1

declare dso_local i32* @pte_offset_map(i32*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pte_same(i32, i32) #1

declare dso_local i32 @pte_unmap(i32*) #1

declare dso_local i32 @unuse_pte(%struct.vm_area_struct*, i32*, i64, i32, %struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
