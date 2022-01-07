; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memory.c_do_linear_fault.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memory.c_do_linear_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }
%struct.vm_area_struct = type { i64, i64 }

@PAGE_MASK = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mm_struct*, %struct.vm_area_struct*, i64, i32*, i32*, i32, i32)* @do_linear_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_linear_fault(%struct.mm_struct* %0, %struct.vm_area_struct* %1, i64 %2, i32* %3, i32* %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.mm_struct*, align 8
  %9 = alloca %struct.vm_area_struct*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %8, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %16 = load i64, i64* %10, align 8
  %17 = load i64, i64* @PAGE_MASK, align 8
  %18 = and i64 %16, %17
  %19 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %20 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = sub i64 %18, %21
  %23 = load i64, i64* @PAGE_SHIFT, align 8
  %24 = lshr i64 %22, %23
  %25 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %26 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = add i64 %24, %27
  store i64 %28, i64* %15, align 8
  %29 = load i32*, i32** %11, align 8
  %30 = call i32 @pte_unmap(i32* %29)
  %31 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %32 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %33 = load i64, i64* %10, align 8
  %34 = load i32*, i32** %12, align 8
  %35 = load i64, i64* %15, align 8
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* %14, align 4
  %38 = call i32 @__do_fault(%struct.mm_struct* %31, %struct.vm_area_struct* %32, i64 %33, i32* %34, i64 %35, i32 %36, i32 %37)
  ret i32 %38
}

declare dso_local i32 @pte_unmap(i32*) #1

declare dso_local i32 @__do_fault(%struct.mm_struct*, %struct.vm_area_struct*, i64, i32*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
