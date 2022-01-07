; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memory.c_apply_to_pud_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memory.c_apply_to_pud_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mm_struct*, i32*, i64, i64, i32, i8*)* @apply_to_pud_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apply_to_pud_range(%struct.mm_struct* %0, i32* %1, i64 %2, i64 %3, i32 %4, i8* %5) #0 {
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
  %17 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = load i64, i64* %10, align 8
  %20 = call i32* @pud_alloc(%struct.mm_struct* %17, i32* %18, i64 %19)
  store i32* %20, i32** %14, align 8
  %21 = load i32*, i32** %14, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %6
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %7, align 4
  br label %51

26:                                               ; preds = %6
  br label %27

27:                                               ; preds = %42, %26
  %28 = load i64, i64* %10, align 8
  %29 = load i64, i64* %11, align 8
  %30 = call i64 @pud_addr_end(i64 %28, i64 %29)
  store i64 %30, i64* %15, align 8
  %31 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %32 = load i32*, i32** %14, align 8
  %33 = load i64, i64* %10, align 8
  %34 = load i64, i64* %15, align 8
  %35 = load i32, i32* %12, align 4
  %36 = load i8*, i8** %13, align 8
  %37 = call i32 @apply_to_pmd_range(%struct.mm_struct* %31, i32* %32, i64 %33, i64 %34, i32 %35, i8* %36)
  store i32 %37, i32* %16, align 4
  %38 = load i32, i32* %16, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %27
  br label %49

41:                                               ; preds = %27
  br label %42

42:                                               ; preds = %41
  %43 = load i32*, i32** %14, align 8
  %44 = getelementptr inbounds i32, i32* %43, i32 1
  store i32* %44, i32** %14, align 8
  %45 = load i64, i64* %15, align 8
  store i64 %45, i64* %10, align 8
  %46 = load i64, i64* %10, align 8
  %47 = load i64, i64* %11, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %27, label %49

49:                                               ; preds = %42, %40
  %50 = load i32, i32* %16, align 4
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %49, %23
  %52 = load i32, i32* %7, align 4
  ret i32 %52
}

declare dso_local i32* @pud_alloc(%struct.mm_struct*, i32*, i64) #1

declare dso_local i64 @pud_addr_end(i64, i64) #1

declare dso_local i32 @apply_to_pmd_range(%struct.mm_struct*, i32*, i64, i64, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
