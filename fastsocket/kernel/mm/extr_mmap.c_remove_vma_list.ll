; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mmap.c_remove_vma_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mmap.c_remove_vma_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i64, i64 }
%struct.vm_area_struct = type { i32, i32 }

@sysctl_unmap_area_factor = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mm_struct*, %struct.vm_area_struct*)* @remove_vma_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_vma_list(%struct.mm_struct* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca %struct.mm_struct*, align 8
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %3, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %4, align 8
  %7 = load i32, i32* @sysctl_unmap_area_factor, align 4
  store i32 %7, i32* %5, align 4
  %8 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %9 = call i32 @update_hiwater_vm(%struct.mm_struct* %8)
  br label %10

10:                                               ; preds = %40, %2
  %11 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %12 = call i64 @vma_pages(%struct.vm_area_struct* %11)
  store i64 %12, i64* %6, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %15 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = sub nsw i64 %16, %13
  store i64 %17, i64* %15, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %10
  %22 = load i64, i64* %6, align 8
  %23 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %24 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, %22
  store i64 %26, i64* %24, align 8
  br label %27

27:                                               ; preds = %21, %10
  %28 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %29 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %30 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %33 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i64, i64* %6, align 8
  %36 = sub nsw i64 0, %35
  %37 = call i32 @vm_stat_account(%struct.mm_struct* %28, i32 %31, i32 %34, i64 %36)
  %38 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %39 = call %struct.vm_area_struct* @remove_vma(%struct.vm_area_struct* %38)
  store %struct.vm_area_struct* %39, %struct.vm_area_struct** %4, align 8
  br label %40

40:                                               ; preds = %27
  %41 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %42 = icmp ne %struct.vm_area_struct* %41, null
  br i1 %42, label %10, label %43

43:                                               ; preds = %40
  %44 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %45 = call i32 @validate_mm(%struct.mm_struct* %44)
  ret void
}

declare dso_local i32 @update_hiwater_vm(%struct.mm_struct*) #1

declare dso_local i64 @vma_pages(%struct.vm_area_struct*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @vm_stat_account(%struct.mm_struct*, i32, i32, i64) #1

declare dso_local %struct.vm_area_struct* @remove_vma(%struct.vm_area_struct*) #1

declare dso_local i32 @validate_mm(%struct.mm_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
