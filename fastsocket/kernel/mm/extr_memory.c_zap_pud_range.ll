; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memory.c_zap_pud_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memory.c_zap_pud_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmu_gather = type { i32 }
%struct.vm_area_struct = type { i32 }
%struct.zap_details = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.mmu_gather*, %struct.vm_area_struct*, i32*, i64, i64, i64*, %struct.zap_details*)* @zap_pud_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @zap_pud_range(%struct.mmu_gather* %0, %struct.vm_area_struct* %1, i32* %2, i64 %3, i64 %4, i64* %5, %struct.zap_details* %6) #0 {
  %8 = alloca %struct.mmu_gather*, align 8
  %9 = alloca %struct.vm_area_struct*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca %struct.zap_details*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  store %struct.mmu_gather* %0, %struct.mmu_gather** %8, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %9, align 8
  store i32* %2, i32** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64* %5, i64** %13, align 8
  store %struct.zap_details* %6, %struct.zap_details** %14, align 8
  %17 = load i32*, i32** %10, align 8
  %18 = load i64, i64* %11, align 8
  %19 = call i32* @pud_offset(i32* %17, i64 %18)
  store i32* %19, i32** %15, align 8
  br label %20

20:                                               ; preds = %51, %7
  %21 = load i64, i64* %11, align 8
  %22 = load i64, i64* %12, align 8
  %23 = call i64 @pud_addr_end(i64 %21, i64 %22)
  store i64 %23, i64* %16, align 8
  %24 = load i32*, i32** %15, align 8
  %25 = call i64 @pud_none_or_clear_bad(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %20
  %28 = load i64*, i64** %13, align 8
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, -1
  store i64 %30, i64* %28, align 8
  br label %40

31:                                               ; preds = %20
  %32 = load %struct.mmu_gather*, %struct.mmu_gather** %8, align 8
  %33 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %34 = load i32*, i32** %15, align 8
  %35 = load i64, i64* %11, align 8
  %36 = load i64, i64* %16, align 8
  %37 = load i64*, i64** %13, align 8
  %38 = load %struct.zap_details*, %struct.zap_details** %14, align 8
  %39 = call i64 @zap_pmd_range(%struct.mmu_gather* %32, %struct.vm_area_struct* %33, i32* %34, i64 %35, i64 %36, i64* %37, %struct.zap_details* %38)
  store i64 %39, i64* %16, align 8
  br label %40

40:                                               ; preds = %31, %27
  %41 = load i32*, i32** %15, align 8
  %42 = getelementptr inbounds i32, i32* %41, i32 1
  store i32* %42, i32** %15, align 8
  %43 = load i64, i64* %16, align 8
  store i64 %43, i64* %11, align 8
  %44 = load i64, i64* %11, align 8
  %45 = load i64, i64* %12, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %40
  %48 = load i64*, i64** %13, align 8
  %49 = load i64, i64* %48, align 8
  %50 = icmp sgt i64 %49, 0
  br label %51

51:                                               ; preds = %47, %40
  %52 = phi i1 [ false, %40 ], [ %50, %47 ]
  br i1 %52, label %20, label %53

53:                                               ; preds = %51
  %54 = load i64, i64* %11, align 8
  ret i64 %54
}

declare dso_local i32* @pud_offset(i32*, i64) #1

declare dso_local i64 @pud_addr_end(i64, i64) #1

declare dso_local i64 @pud_none_or_clear_bad(i32*) #1

declare dso_local i64 @zap_pmd_range(%struct.mmu_gather*, %struct.vm_area_struct*, i32*, i64, i64, i64*, %struct.zap_details*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
