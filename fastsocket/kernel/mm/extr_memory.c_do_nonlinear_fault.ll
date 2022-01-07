; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memory.c_do_nonlinear_fault.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memory.c_do_nonlinear_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }
%struct.vm_area_struct = type { i32 }

@FAULT_FLAG_NONLINEAR = common dso_local global i32 0, align 4
@VM_NONLINEAR = common dso_local global i32 0, align 4
@VM_FAULT_SIGBUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mm_struct*, %struct.vm_area_struct*, i64, i32*, i32*, i32, i32)* @do_nonlinear_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_nonlinear_fault(%struct.mm_struct* %0, %struct.vm_area_struct* %1, i64 %2, i32* %3, i32* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.mm_struct*, align 8
  %10 = alloca %struct.vm_area_struct*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.mm_struct* %0, %struct.mm_struct** %9, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %10, align 8
  store i64 %2, i64* %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %17 = load i32, i32* @FAULT_FLAG_NONLINEAR, align 4
  %18 = load i32, i32* %14, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %14, align 4
  %20 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %21 = load i32*, i32** %13, align 8
  %22 = load i32*, i32** %12, align 8
  %23 = load i32, i32* %15, align 4
  %24 = call i32 @pte_unmap_same(%struct.mm_struct* %20, i32* %21, i32* %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %7
  store i32 0, i32* %8, align 4
  br label %55

27:                                               ; preds = %7
  %28 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %29 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @VM_NONLINEAR, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %27
  %39 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %40 = load i64, i64* %11, align 8
  %41 = load i32, i32* %15, align 4
  %42 = call i32 @print_bad_pte(%struct.vm_area_struct* %39, i64 %40, i32 %41, i32* null)
  %43 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  store i32 %43, i32* %8, align 4
  br label %55

44:                                               ; preds = %27
  %45 = load i32, i32* %15, align 4
  %46 = call i32 @pte_to_pgoff(i32 %45)
  store i32 %46, i32* %16, align 4
  %47 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %48 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %49 = load i64, i64* %11, align 8
  %50 = load i32*, i32** %13, align 8
  %51 = load i32, i32* %16, align 4
  %52 = load i32, i32* %14, align 4
  %53 = load i32, i32* %15, align 4
  %54 = call i32 @__do_fault(%struct.mm_struct* %47, %struct.vm_area_struct* %48, i64 %49, i32* %50, i32 %51, i32 %52, i32 %53)
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %44, %38, %26
  %56 = load i32, i32* %8, align 4
  ret i32 %56
}

declare dso_local i32 @pte_unmap_same(%struct.mm_struct*, i32*, i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @print_bad_pte(%struct.vm_area_struct*, i64, i32, i32*) #1

declare dso_local i32 @pte_to_pgoff(i32) #1

declare dso_local i32 @__do_fault(%struct.mm_struct*, %struct.vm_area_struct*, i64, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
