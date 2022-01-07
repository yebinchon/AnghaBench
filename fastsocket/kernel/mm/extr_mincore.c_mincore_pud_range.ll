; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mincore.c_mincore_pud_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mincore.c_mincore_pud_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vm_area_struct*, i32*, i64, i64, i8*)* @mincore_pud_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mincore_pud_range(%struct.vm_area_struct* %0, i32* %1, i64 %2, i64 %3, i8* %4) #0 {
  %6 = alloca %struct.vm_area_struct*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i8* %4, i8** %10, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = load i64, i64* %8, align 8
  %15 = call i32* @pud_offset(i32* %13, i64 %14)
  store i32* %15, i32** %12, align 8
  br label %16

16:                                               ; preds = %44, %5
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* %9, align 8
  %19 = call i64 @pud_addr_end(i64 %17, i64 %18)
  store i64 %19, i64* %11, align 8
  %20 = load i32*, i32** %12, align 8
  %21 = call i64 @pud_none_or_clear_bad(i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %16
  %24 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %25 = load i64, i64* %8, align 8
  %26 = load i64, i64* %11, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = call i32 @mincore_unmapped_range(%struct.vm_area_struct* %24, i64 %25, i64 %26, i8* %27)
  br label %36

29:                                               ; preds = %16
  %30 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %31 = load i32*, i32** %12, align 8
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* %11, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = call i32 @mincore_pmd_range(%struct.vm_area_struct* %30, i32* %31, i64 %32, i64 %33, i8* %34)
  br label %36

36:                                               ; preds = %29, %23
  %37 = load i64, i64* %11, align 8
  %38 = load i64, i64* %8, align 8
  %39 = sub i64 %37, %38
  %40 = load i64, i64* @PAGE_SHIFT, align 8
  %41 = lshr i64 %39, %40
  %42 = load i8*, i8** %10, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 %41
  store i8* %43, i8** %10, align 8
  br label %44

44:                                               ; preds = %36
  %45 = load i32*, i32** %12, align 8
  %46 = getelementptr inbounds i32, i32* %45, i32 1
  store i32* %46, i32** %12, align 8
  %47 = load i64, i64* %11, align 8
  store i64 %47, i64* %8, align 8
  %48 = load i64, i64* %8, align 8
  %49 = load i64, i64* %9, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %16, label %51

51:                                               ; preds = %44
  ret void
}

declare dso_local i32* @pud_offset(i32*, i64) #1

declare dso_local i64 @pud_addr_end(i64, i64) #1

declare dso_local i64 @pud_none_or_clear_bad(i32*) #1

declare dso_local i32 @mincore_unmapped_range(%struct.vm_area_struct*, i64, i64, i8*) #1

declare dso_local i32 @mincore_pmd_range(%struct.vm_area_struct*, i32*, i64, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
