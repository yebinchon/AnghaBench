; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mprotect.c_change_protection.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mprotect.c_change_protection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { %struct.mm_struct* }
%struct.mm_struct = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vm_area_struct*, i64, i64, i32, i32)* @change_protection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @change_protection(%struct.vm_area_struct* %0, i64 %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.vm_area_struct*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mm_struct*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %16 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %15, i32 0, i32 0
  %17 = load %struct.mm_struct*, %struct.mm_struct** %16, align 8
  store %struct.mm_struct* %17, %struct.mm_struct** %11, align 8
  %18 = load i64, i64* %7, align 8
  store i64 %18, i64* %14, align 8
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* %8, align 8
  %21 = icmp uge i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @BUG_ON(i32 %22)
  %24 = load %struct.mm_struct*, %struct.mm_struct** %11, align 8
  %25 = load i64, i64* %7, align 8
  %26 = call i32* @pgd_offset(%struct.mm_struct* %24, i64 %25)
  store i32* %26, i32** %12, align 8
  %27 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* %8, align 8
  %30 = call i32 @flush_cache_range(%struct.vm_area_struct* %27, i64 %28, i64 %29)
  br label %31

31:                                               ; preds = %47, %5
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* %8, align 8
  %34 = call i64 @pgd_addr_end(i64 %32, i64 %33)
  store i64 %34, i64* %13, align 8
  %35 = load i32*, i32** %12, align 8
  %36 = call i64 @pgd_none_or_clear_bad(i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %47

39:                                               ; preds = %31
  %40 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %41 = load i32*, i32** %12, align 8
  %42 = load i64, i64* %7, align 8
  %43 = load i64, i64* %13, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @change_pud_range(%struct.vm_area_struct* %40, i32* %41, i64 %42, i64 %43, i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %39, %38
  %48 = load i32*, i32** %12, align 8
  %49 = getelementptr inbounds i32, i32* %48, i32 1
  store i32* %49, i32** %12, align 8
  %50 = load i64, i64* %13, align 8
  store i64 %50, i64* %7, align 8
  %51 = load i64, i64* %7, align 8
  %52 = load i64, i64* %8, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %31, label %54

54:                                               ; preds = %47
  %55 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %56 = load i64, i64* %14, align 8
  %57 = load i64, i64* %8, align 8
  %58 = call i32 @flush_tlb_range(%struct.vm_area_struct* %55, i64 %56, i64 %57)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32* @pgd_offset(%struct.mm_struct*, i64) #1

declare dso_local i32 @flush_cache_range(%struct.vm_area_struct*, i64, i64) #1

declare dso_local i64 @pgd_addr_end(i64, i64) #1

declare dso_local i64 @pgd_none_or_clear_bad(i32*) #1

declare dso_local i32 @change_pud_range(%struct.vm_area_struct*, i32*, i64, i64, i32, i32) #1

declare dso_local i32 @flush_tlb_range(%struct.vm_area_struct*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
