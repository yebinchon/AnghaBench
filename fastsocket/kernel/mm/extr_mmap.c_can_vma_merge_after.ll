; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mmap.c_can_vma_merge_after.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mmap.c_can_vma_merge_after.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i64, i64, i64, i32 }
%struct.anon_vma = type { i32 }
%struct.file = type { i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_area_struct*, i64, %struct.anon_vma*, %struct.file*, i64)* @can_vma_merge_after to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @can_vma_merge_after(%struct.vm_area_struct* %0, i64 %1, %struct.anon_vma* %2, %struct.file* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vm_area_struct*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.anon_vma*, align 8
  %10 = alloca %struct.file*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.anon_vma* %2, %struct.anon_vma** %9, align 8
  store %struct.file* %3, %struct.file** %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %14 = load %struct.file*, %struct.file** %10, align 8
  %15 = load i64, i64* %8, align 8
  %16 = call i64 @is_mergeable_vma(%struct.vm_area_struct* %13, %struct.file* %14, i64 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %45

18:                                               ; preds = %5
  %19 = load %struct.anon_vma*, %struct.anon_vma** %9, align 8
  %20 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %21 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %24 = call i64 @is_mergeable_anon_vma(%struct.anon_vma* %19, i32 %22, %struct.vm_area_struct* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %45

26:                                               ; preds = %18
  %27 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %28 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %31 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = sub nsw i64 %29, %32
  %34 = load i64, i64* @PAGE_SHIFT, align 8
  %35 = ashr i64 %33, %34
  store i64 %35, i64* %12, align 8
  %36 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %37 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %12, align 8
  %40 = add nsw i64 %38, %39
  %41 = load i64, i64* %11, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %26
  store i32 1, i32* %6, align 4
  br label %46

44:                                               ; preds = %26
  br label %45

45:                                               ; preds = %44, %18, %5
  store i32 0, i32* %6, align 4
  br label %46

46:                                               ; preds = %45, %43
  %47 = load i32, i32* %6, align 4
  ret i32 %47
}

declare dso_local i64 @is_mergeable_vma(%struct.vm_area_struct*, %struct.file*, i64) #1

declare dso_local i64 @is_mergeable_anon_vma(%struct.anon_vma*, i32, %struct.vm_area_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
