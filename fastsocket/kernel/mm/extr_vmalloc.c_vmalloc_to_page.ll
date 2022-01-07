; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_vmalloc.c_vmalloc_to_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_vmalloc.c_vmalloc_to_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.page* @vmalloc_to_page(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = ptrtoint i8* %10 to i64
  store i64 %11, i64* %3, align 8
  store %struct.page* null, %struct.page** %4, align 8
  %12 = load i64, i64* %3, align 8
  %13 = call i32* @pgd_offset_k(i64 %12)
  store i32* %13, i32** %5, align 8
  %14 = load i8*, i8** %2, align 8
  %15 = call i32 @is_vmalloc_or_module_addr(i8* %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @VIRTUAL_BUG_ON(i32 %18)
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @pgd_none(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %57, label %24

24:                                               ; preds = %1
  %25 = load i32*, i32** %5, align 8
  %26 = load i64, i64* %3, align 8
  %27 = call i32* @pud_offset(i32* %25, i64 %26)
  store i32* %27, i32** %6, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @pud_none(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %56, label %32

32:                                               ; preds = %24
  %33 = load i32*, i32** %6, align 8
  %34 = load i64, i64* %3, align 8
  %35 = call i32* @pmd_offset(i32* %33, i64 %34)
  store i32* %35, i32** %7, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @pmd_none(i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %55, label %40

40:                                               ; preds = %32
  %41 = load i32*, i32** %7, align 8
  %42 = load i64, i64* %3, align 8
  %43 = call i32* @pte_offset_map(i32* %41, i64 %42)
  store i32* %43, i32** %8, align 8
  %44 = load i32*, i32** %8, align 8
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call i64 @pte_present(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %40
  %50 = load i32, i32* %9, align 4
  %51 = call %struct.page* @pte_page(i32 %50)
  store %struct.page* %51, %struct.page** %4, align 8
  br label %52

52:                                               ; preds = %49, %40
  %53 = load i32*, i32** %8, align 8
  %54 = call i32 @pte_unmap(i32* %53)
  br label %55

55:                                               ; preds = %52, %32
  br label %56

56:                                               ; preds = %55, %24
  br label %57

57:                                               ; preds = %56, %1
  %58 = load %struct.page*, %struct.page** %4, align 8
  ret %struct.page* %58
}

declare dso_local i32* @pgd_offset_k(i64) #1

declare dso_local i32 @VIRTUAL_BUG_ON(i32) #1

declare dso_local i32 @is_vmalloc_or_module_addr(i8*) #1

declare dso_local i32 @pgd_none(i32) #1

declare dso_local i32* @pud_offset(i32*, i64) #1

declare dso_local i32 @pud_none(i32) #1

declare dso_local i32* @pmd_offset(i32*, i64) #1

declare dso_local i32 @pmd_none(i32) #1

declare dso_local i32* @pte_offset_map(i32*, i64) #1

declare dso_local i64 @pte_present(i32) #1

declare dso_local %struct.page* @pte_page(i32) #1

declare dso_local i32 @pte_unmap(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
