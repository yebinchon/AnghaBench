; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/virt/kvm/extr_iommu.c_kvm_iommu_unmap_guest.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/virt/kvm/extr_iommu.c_kvm_iommu_unmap_guest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.iommu_domain* }
%struct.iommu_domain = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_iommu_unmap_guest(%struct.kvm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm*, align 8
  %4 = alloca %struct.iommu_domain*, align 8
  store %struct.kvm* %0, %struct.kvm** %3, align 8
  %5 = load %struct.kvm*, %struct.kvm** %3, align 8
  %6 = getelementptr inbounds %struct.kvm, %struct.kvm* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.iommu_domain*, %struct.iommu_domain** %7, align 8
  store %struct.iommu_domain* %8, %struct.iommu_domain** %4, align 8
  %9 = load %struct.iommu_domain*, %struct.iommu_domain** %4, align 8
  %10 = icmp ne %struct.iommu_domain* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %26

12:                                               ; preds = %1
  %13 = load %struct.kvm*, %struct.kvm** %3, align 8
  %14 = getelementptr inbounds %struct.kvm, %struct.kvm* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.kvm*, %struct.kvm** %3, align 8
  %17 = call i32 @kvm_iommu_unmap_memslots(%struct.kvm* %16)
  %18 = load %struct.kvm*, %struct.kvm** %3, align 8
  %19 = getelementptr inbounds %struct.kvm, %struct.kvm* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store %struct.iommu_domain* null, %struct.iommu_domain** %20, align 8
  %21 = load %struct.kvm*, %struct.kvm** %3, align 8
  %22 = getelementptr inbounds %struct.kvm, %struct.kvm* %21, i32 0, i32 0
  %23 = call i32 @mutex_unlock(i32* %22)
  %24 = load %struct.iommu_domain*, %struct.iommu_domain** %4, align 8
  %25 = call i32 @iommu_domain_free(%struct.iommu_domain* %24)
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %12, %11
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @kvm_iommu_unmap_memslots(%struct.kvm*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @iommu_domain_free(%struct.iommu_domain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
