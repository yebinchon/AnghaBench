; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mmap.c___vma_link_file.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mmap.c___vma_link_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32, %struct.file* }
%struct.file = type { %struct.TYPE_6__, %struct.address_space* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.address_space = type { i32, i32, i32 }

@VM_DENYWRITE = common dso_local global i32 0, align 4
@VM_SHARED = common dso_local global i32 0, align 4
@VM_NONLINEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vm_area_struct*)* @__vma_link_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__vma_link_file(%struct.vm_area_struct* %0) #0 {
  %2 = alloca %struct.vm_area_struct*, align 8
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.address_space*, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %2, align 8
  %5 = load %struct.vm_area_struct*, %struct.vm_area_struct** %2, align 8
  %6 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %5, i32 0, i32 1
  %7 = load %struct.file*, %struct.file** %6, align 8
  store %struct.file* %7, %struct.file** %3, align 8
  %8 = load %struct.file*, %struct.file** %3, align 8
  %9 = icmp ne %struct.file* %8, null
  br i1 %9, label %10, label %64

10:                                               ; preds = %1
  %11 = load %struct.file*, %struct.file** %3, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 1
  %13 = load %struct.address_space*, %struct.address_space** %12, align 8
  store %struct.address_space* %13, %struct.address_space** %4, align 8
  %14 = load %struct.vm_area_struct*, %struct.vm_area_struct** %2, align 8
  %15 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @VM_DENYWRITE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %10
  %21 = load %struct.file*, %struct.file** %3, align 8
  %22 = getelementptr inbounds %struct.file, %struct.file* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = call i32 @atomic_dec(i32* %27)
  br label %29

29:                                               ; preds = %20, %10
  %30 = load %struct.vm_area_struct*, %struct.vm_area_struct** %2, align 8
  %31 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @VM_SHARED, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %29
  %37 = load %struct.address_space*, %struct.address_space** %4, align 8
  %38 = getelementptr inbounds %struct.address_space, %struct.address_space* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %36, %29
  %42 = load %struct.address_space*, %struct.address_space** %4, align 8
  %43 = call i32 @flush_dcache_mmap_lock(%struct.address_space* %42)
  %44 = load %struct.vm_area_struct*, %struct.vm_area_struct** %2, align 8
  %45 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @VM_NONLINEAR, align 4
  %48 = and i32 %46, %47
  %49 = call i64 @unlikely(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %41
  %52 = load %struct.vm_area_struct*, %struct.vm_area_struct** %2, align 8
  %53 = load %struct.address_space*, %struct.address_space** %4, align 8
  %54 = getelementptr inbounds %struct.address_space, %struct.address_space* %53, i32 0, i32 1
  %55 = call i32 @vma_nonlinear_insert(%struct.vm_area_struct* %52, i32* %54)
  br label %61

56:                                               ; preds = %41
  %57 = load %struct.vm_area_struct*, %struct.vm_area_struct** %2, align 8
  %58 = load %struct.address_space*, %struct.address_space** %4, align 8
  %59 = getelementptr inbounds %struct.address_space, %struct.address_space* %58, i32 0, i32 0
  %60 = call i32 @vma_prio_tree_insert(%struct.vm_area_struct* %57, i32* %59)
  br label %61

61:                                               ; preds = %56, %51
  %62 = load %struct.address_space*, %struct.address_space** %4, align 8
  %63 = call i32 @flush_dcache_mmap_unlock(%struct.address_space* %62)
  br label %64

64:                                               ; preds = %61, %1
  ret void
}

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @flush_dcache_mmap_lock(%struct.address_space*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @vma_nonlinear_insert(%struct.vm_area_struct*, i32*) #1

declare dso_local i32 @vma_prio_tree_insert(%struct.vm_area_struct*, i32*) #1

declare dso_local i32 @flush_dcache_mmap_unlock(%struct.address_space*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
