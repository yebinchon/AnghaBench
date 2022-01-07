; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mlock.c_mlock_vma_pages_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mlock.c_mlock_vma_pages_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.vm_area_struct = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@VM_LOCKED = common dso_local global i32 0, align 4
@VM_IO = common dso_local global i32 0, align 4
@VM_PFNMAP = common dso_local global i32 0, align 4
@VM_DONTEXPAND = common dso_local global i32 0, align 4
@VM_RESERVED = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mlock_vma_pages_range(%struct.vm_area_struct* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i64, i64* %7, align 8
  %10 = load i64, i64* %6, align 8
  %11 = sub i64 %9, %10
  %12 = load i64, i64* @PAGE_SIZE, align 8
  %13 = udiv i64 %11, %12
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %8, align 4
  %15 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %16 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @VM_LOCKED, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @BUG_ON(i32 %22)
  %24 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %25 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @VM_IO, align 4
  %28 = load i32, i32* @VM_PFNMAP, align 4
  %29 = or i32 %27, %28
  %30 = and i32 %26, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %3
  br label %62

33:                                               ; preds = %3
  %34 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %35 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @VM_DONTEXPAND, align 4
  %38 = load i32, i32* @VM_RESERVED, align 4
  %39 = or i32 %37, %38
  %40 = and i32 %36, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %58, label %42

42:                                               ; preds = %33
  %43 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %44 = call i64 @is_vm_hugetlb_page(%struct.vm_area_struct* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %58, label %46

46:                                               ; preds = %42
  %47 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call %struct.vm_area_struct* @get_gate_vma(i32 %50)
  %52 = icmp eq %struct.vm_area_struct* %47, %51
  br i1 %52, label %58, label %53

53:                                               ; preds = %46
  %54 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %55 = load i64, i64* %6, align 8
  %56 = load i64, i64* %7, align 8
  %57 = call i32 @__mlock_vma_pages_range(%struct.vm_area_struct* %54, i64 %55, i64 %56)
  store i64 0, i64* %4, align 8
  br label %71

58:                                               ; preds = %46, %42, %33
  %59 = load i64, i64* %6, align 8
  %60 = load i64, i64* %7, align 8
  %61 = call i32 @make_pages_present(i64 %59, i64 %60)
  br label %62

62:                                               ; preds = %58, %32
  %63 = load i32, i32* @VM_LOCKED, align 4
  %64 = xor i32 %63, -1
  %65 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %66 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %67, %64
  store i32 %68, i32* %66, align 4
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  store i64 %70, i64* %4, align 8
  br label %71

71:                                               ; preds = %62, %53
  %72 = load i64, i64* %4, align 8
  ret i64 %72
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @is_vm_hugetlb_page(%struct.vm_area_struct*) #1

declare dso_local %struct.vm_area_struct* @get_gate_vma(i32) #1

declare dso_local i32 @__mlock_vma_pages_range(%struct.vm_area_struct*, i64, i64) #1

declare dso_local i32 @make_pages_present(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
