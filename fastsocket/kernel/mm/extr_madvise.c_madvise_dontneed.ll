; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_madvise.c_madvise_dontneed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_madvise.c_madvise_dontneed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32 }
%struct.zap_details = type { i32, %struct.vm_area_struct* }

@VM_LOCKED = common dso_local global i32 0, align 4
@VM_HUGETLB = common dso_local global i32 0, align 4
@VM_PFNMAP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@VM_NONLINEAR = common dso_local global i32 0, align 4
@ULONG_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.vm_area_struct*, %struct.vm_area_struct**, i64, i64)* @madvise_dontneed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @madvise_dontneed(%struct.vm_area_struct* %0, %struct.vm_area_struct** %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.vm_area_struct*, align 8
  %7 = alloca %struct.vm_area_struct**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.zap_details, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %6, align 8
  store %struct.vm_area_struct** %1, %struct.vm_area_struct*** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %12 = load %struct.vm_area_struct**, %struct.vm_area_struct*** %7, align 8
  store %struct.vm_area_struct* %11, %struct.vm_area_struct** %12, align 8
  %13 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %14 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @VM_LOCKED, align 4
  %17 = load i32, i32* @VM_HUGETLB, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @VM_PFNMAP, align 4
  %20 = or i32 %18, %19
  %21 = and i32 %15, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load i64, i64* @EINVAL, align 8
  %25 = sub nsw i64 0, %24
  store i64 %25, i64* %5, align 8
  br label %53

26:                                               ; preds = %4
  %27 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %28 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @VM_NONLINEAR, align 4
  %31 = and i32 %29, %30
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.zap_details, %struct.zap_details* %10, i32 0, i32 0
  %36 = load i32, i32* @ULONG_MAX, align 4
  store i32 %36, i32* %35, align 8
  %37 = getelementptr inbounds %struct.zap_details, %struct.zap_details* %10, i32 0, i32 1
  %38 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  store %struct.vm_area_struct* %38, %struct.vm_area_struct** %37, align 8
  %39 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* %9, align 8
  %42 = load i64, i64* %8, align 8
  %43 = sub i64 %41, %42
  %44 = call i32 @zap_page_range(%struct.vm_area_struct* %39, i64 %40, i64 %43, %struct.zap_details* %10)
  br label %52

45:                                               ; preds = %26
  %46 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %47 = load i64, i64* %8, align 8
  %48 = load i64, i64* %9, align 8
  %49 = load i64, i64* %8, align 8
  %50 = sub i64 %48, %49
  %51 = call i32 @zap_page_range(%struct.vm_area_struct* %46, i64 %47, i64 %50, %struct.zap_details* null)
  br label %52

52:                                               ; preds = %45, %34
  store i64 0, i64* %5, align 8
  br label %53

53:                                               ; preds = %52, %23
  %54 = load i64, i64* %5, align 8
  ret i64 %54
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @zap_page_range(%struct.vm_area_struct*, i64, i64, %struct.zap_details*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
