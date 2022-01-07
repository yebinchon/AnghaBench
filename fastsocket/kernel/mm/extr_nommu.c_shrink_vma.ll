; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_nommu.c_shrink_vma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_nommu.c_shrink_vma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_region* }
%struct.vm_region = type { i64, i64, i64, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@nommu_region_sem = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mm_struct*, %struct.vm_area_struct*, i64, i64)* @shrink_vma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shrink_vma(%struct.mm_struct* %0, %struct.vm_area_struct* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.mm_struct*, align 8
  %6 = alloca %struct.vm_area_struct*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.vm_region*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %5, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = call i32 @kenter(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %12 = call i32 @delete_vma_from_mm(%struct.vm_area_struct* %11)
  %13 = load i64, i64* %7, align 8
  %14 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %15 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ugt i64 %13, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %4
  %19 = load i64, i64* %7, align 8
  %20 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %21 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %20, i32 0, i32 1
  store i64 %19, i64* %21, align 8
  br label %26

22:                                               ; preds = %4
  %23 = load i64, i64* %8, align 8
  %24 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %25 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  br label %26

26:                                               ; preds = %22, %18
  %27 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %28 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %29 = call i32 @add_vma_to_mm(%struct.mm_struct* %27, %struct.vm_area_struct* %28)
  %30 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %31 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %30, i32 0, i32 2
  %32 = load %struct.vm_region*, %struct.vm_region** %31, align 8
  store %struct.vm_region* %32, %struct.vm_region** %9, align 8
  %33 = load %struct.vm_region*, %struct.vm_region** %9, align 8
  %34 = getelementptr inbounds %struct.vm_region, %struct.vm_region* %33, i32 0, i32 3
  %35 = call i32 @atomic_read(i32* %34)
  %36 = icmp ne i32 %35, 1
  %37 = zext i1 %36 to i32
  %38 = call i32 @BUG_ON(i32 %37)
  %39 = call i32 @down_write(i32* @nommu_region_sem)
  %40 = load %struct.vm_region*, %struct.vm_region** %9, align 8
  %41 = call i32 @delete_nommu_region(%struct.vm_region* %40)
  %42 = load i64, i64* %7, align 8
  %43 = load %struct.vm_region*, %struct.vm_region** %9, align 8
  %44 = getelementptr inbounds %struct.vm_region, %struct.vm_region* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ugt i64 %42, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %26
  %48 = load %struct.vm_region*, %struct.vm_region** %9, align 8
  %49 = getelementptr inbounds %struct.vm_region, %struct.vm_region* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %8, align 8
  %51 = load i64, i64* %7, align 8
  %52 = load %struct.vm_region*, %struct.vm_region** %9, align 8
  %53 = getelementptr inbounds %struct.vm_region, %struct.vm_region* %52, i32 0, i32 2
  store i64 %51, i64* %53, align 8
  %54 = load %struct.vm_region*, %struct.vm_region** %9, align 8
  %55 = getelementptr inbounds %struct.vm_region, %struct.vm_region* %54, i32 0, i32 1
  store i64 %51, i64* %55, align 8
  br label %60

56:                                               ; preds = %26
  %57 = load i64, i64* %8, align 8
  %58 = load %struct.vm_region*, %struct.vm_region** %9, align 8
  %59 = getelementptr inbounds %struct.vm_region, %struct.vm_region* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  br label %60

60:                                               ; preds = %56, %47
  %61 = load %struct.vm_region*, %struct.vm_region** %9, align 8
  %62 = call i32 @add_nommu_region(%struct.vm_region* %61)
  %63 = call i32 @up_write(i32* @nommu_region_sem)
  %64 = load i64, i64* %7, align 8
  %65 = load i64, i64* %8, align 8
  %66 = call i32 @free_page_series(i64 %64, i64 %65)
  ret i32 0
}

declare dso_local i32 @kenter(i8*) #1

declare dso_local i32 @delete_vma_from_mm(%struct.vm_area_struct*) #1

declare dso_local i32 @add_vma_to_mm(%struct.mm_struct*, %struct.vm_area_struct*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @delete_nommu_region(%struct.vm_region*) #1

declare dso_local i32 @add_nommu_region(%struct.vm_region*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @free_page_series(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
