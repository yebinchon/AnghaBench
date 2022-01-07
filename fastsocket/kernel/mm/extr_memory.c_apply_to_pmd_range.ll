; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memory.c_apply_to_pmd_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memory.c_apply_to_pmd_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mm_struct*, i32*, i64, i64, i32, i8*)* @apply_to_pmd_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apply_to_pmd_range(%struct.mm_struct* %0, i32* %1, i64 %2, i64 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mm_struct*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.mm_struct* %0, %struct.mm_struct** %8, align 8
  store i32* %1, i32** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @pud_huge(i32 %18)
  %20 = call i32 @BUG_ON(i32 %19)
  %21 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = load i64, i64* %10, align 8
  %24 = call i32* @pmd_alloc(%struct.mm_struct* %21, i32* %22, i64 %23)
  store i32* %24, i32** %14, align 8
  %25 = load i32*, i32** %14, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %6
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %7, align 4
  br label %55

30:                                               ; preds = %6
  br label %31

31:                                               ; preds = %46, %30
  %32 = load i64, i64* %10, align 8
  %33 = load i64, i64* %11, align 8
  %34 = call i64 @pmd_addr_end(i64 %32, i64 %33)
  store i64 %34, i64* %15, align 8
  %35 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %36 = load i32*, i32** %14, align 8
  %37 = load i64, i64* %10, align 8
  %38 = load i64, i64* %15, align 8
  %39 = load i32, i32* %12, align 4
  %40 = load i8*, i8** %13, align 8
  %41 = call i32 @apply_to_pte_range(%struct.mm_struct* %35, i32* %36, i64 %37, i64 %38, i32 %39, i8* %40)
  store i32 %41, i32* %16, align 4
  %42 = load i32, i32* %16, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %31
  br label %53

45:                                               ; preds = %31
  br label %46

46:                                               ; preds = %45
  %47 = load i32*, i32** %14, align 8
  %48 = getelementptr inbounds i32, i32* %47, i32 1
  store i32* %48, i32** %14, align 8
  %49 = load i64, i64* %15, align 8
  store i64 %49, i64* %10, align 8
  %50 = load i64, i64* %10, align 8
  %51 = load i64, i64* %11, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %31, label %53

53:                                               ; preds = %46, %44
  %54 = load i32, i32* %16, align 4
  store i32 %54, i32* %7, align 4
  br label %55

55:                                               ; preds = %53, %27
  %56 = load i32, i32* %7, align 4
  ret i32 %56
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @pud_huge(i32) #1

declare dso_local i32* @pmd_alloc(%struct.mm_struct*, i32*, i64) #1

declare dso_local i64 @pmd_addr_end(i64, i64) #1

declare dso_local i32 @apply_to_pte_range(%struct.mm_struct*, i32*, i64, i64, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
