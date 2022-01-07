; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/virt/kvm/extr_iommu.c_kvm_iommu_put_pages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/virt/kvm/extr_iommu.c_kvm_iommu_put_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.iommu_domain* }
%struct.iommu_domain = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm*, i32, i64)* @kvm_iommu_put_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvm_iommu_put_pages(%struct.kvm* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.iommu_domain*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %7, align 4
  %13 = load %struct.kvm*, %struct.kvm** %4, align 8
  %14 = getelementptr inbounds %struct.kvm, %struct.kvm* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.iommu_domain*, %struct.iommu_domain** %15, align 8
  store %struct.iommu_domain* %16, %struct.iommu_domain** %9, align 8
  %17 = load %struct.iommu_domain*, %struct.iommu_domain** %9, align 8
  %18 = icmp ne %struct.iommu_domain* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  br label %48

20:                                               ; preds = %3
  store i64 0, i64* %10, align 8
  br label %21

21:                                               ; preds = %37, %20
  %22 = load i64, i64* %10, align 8
  %23 = load i64, i64* %6, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %40

25:                                               ; preds = %21
  %26 = load %struct.iommu_domain*, %struct.iommu_domain** %9, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @gfn_to_gpa(i32 %27)
  %29 = call i32 @iommu_iova_to_phys(%struct.iommu_domain* %26, i32 %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* @PAGE_SHIFT, align 4
  %32 = ashr i32 %30, %31
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @kvm_release_pfn_clean(i32 %33)
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %25
  %38 = load i64, i64* %10, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %10, align 8
  br label %21

40:                                               ; preds = %21
  %41 = load %struct.iommu_domain*, %struct.iommu_domain** %9, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @gfn_to_gpa(i32 %42)
  %44 = load i64, i64* @PAGE_SIZE, align 8
  %45 = load i64, i64* %6, align 8
  %46 = mul i64 %44, %45
  %47 = call i32 @iommu_unmap_range(%struct.iommu_domain* %41, i32 %43, i64 %46)
  br label %48

48:                                               ; preds = %40, %19
  ret void
}

declare dso_local i32 @iommu_iova_to_phys(%struct.iommu_domain*, i32) #1

declare dso_local i32 @gfn_to_gpa(i32) #1

declare dso_local i32 @kvm_release_pfn_clean(i32) #1

declare dso_local i32 @iommu_unmap_range(%struct.iommu_domain*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
