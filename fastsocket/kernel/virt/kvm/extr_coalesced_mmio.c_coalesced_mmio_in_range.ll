; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/virt/kvm/extr_coalesced_mmio.c_coalesced_mmio_in_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/virt/kvm/extr_coalesced_mmio.c_coalesced_mmio_in_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_coalesced_mmio_dev = type { i32, %struct.kvm_coalesced_mmio_zone*, %struct.TYPE_2__* }
%struct.kvm_coalesced_mmio_zone = type { i64, i64 }
%struct.TYPE_2__ = type { %struct.kvm_coalesced_mmio_ring* }
%struct.kvm_coalesced_mmio_ring = type { i32, i32 }

@KVM_COALESCED_MMIO_MAX = common dso_local global i32 0, align 4
@KVM_MAX_VCPUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_coalesced_mmio_dev*, i64, i32)* @coalesced_mmio_in_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coalesced_mmio_in_range(%struct.kvm_coalesced_mmio_dev* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm_coalesced_mmio_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.kvm_coalesced_mmio_zone*, align 8
  %9 = alloca %struct.kvm_coalesced_mmio_ring*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.kvm_coalesced_mmio_dev* %0, %struct.kvm_coalesced_mmio_dev** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.kvm_coalesced_mmio_dev*, %struct.kvm_coalesced_mmio_dev** %5, align 8
  %13 = getelementptr inbounds %struct.kvm_coalesced_mmio_dev, %struct.kvm_coalesced_mmio_dev* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.kvm_coalesced_mmio_ring*, %struct.kvm_coalesced_mmio_ring** %15, align 8
  store %struct.kvm_coalesced_mmio_ring* %16, %struct.kvm_coalesced_mmio_ring** %9, align 8
  %17 = load %struct.kvm_coalesced_mmio_ring*, %struct.kvm_coalesced_mmio_ring** %9, align 8
  %18 = getelementptr inbounds %struct.kvm_coalesced_mmio_ring, %struct.kvm_coalesced_mmio_ring* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.kvm_coalesced_mmio_ring*, %struct.kvm_coalesced_mmio_ring** %9, align 8
  %21 = getelementptr inbounds %struct.kvm_coalesced_mmio_ring, %struct.kvm_coalesced_mmio_ring* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = sub nsw i32 %19, %22
  %24 = sub nsw i32 %23, 1
  %25 = load i32, i32* @KVM_COALESCED_MMIO_MAX, align 4
  %26 = srem i32 %24, %25
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @KVM_MAX_VCPUS, align 4
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %69

31:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  br label %32

32:                                               ; preds = %65, %31
  %33 = load i32, i32* %11, align 4
  %34 = load %struct.kvm_coalesced_mmio_dev*, %struct.kvm_coalesced_mmio_dev** %5, align 8
  %35 = getelementptr inbounds %struct.kvm_coalesced_mmio_dev, %struct.kvm_coalesced_mmio_dev* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %68

38:                                               ; preds = %32
  %39 = load %struct.kvm_coalesced_mmio_dev*, %struct.kvm_coalesced_mmio_dev** %5, align 8
  %40 = getelementptr inbounds %struct.kvm_coalesced_mmio_dev, %struct.kvm_coalesced_mmio_dev* %39, i32 0, i32 1
  %41 = load %struct.kvm_coalesced_mmio_zone*, %struct.kvm_coalesced_mmio_zone** %40, align 8
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.kvm_coalesced_mmio_zone, %struct.kvm_coalesced_mmio_zone* %41, i64 %43
  store %struct.kvm_coalesced_mmio_zone* %44, %struct.kvm_coalesced_mmio_zone** %8, align 8
  %45 = load %struct.kvm_coalesced_mmio_zone*, %struct.kvm_coalesced_mmio_zone** %8, align 8
  %46 = getelementptr inbounds %struct.kvm_coalesced_mmio_zone, %struct.kvm_coalesced_mmio_zone* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %6, align 8
  %49 = icmp sle i64 %47, %48
  br i1 %49, label %50, label %64

50:                                               ; preds = %38
  %51 = load i64, i64* %6, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %51, %53
  %55 = load %struct.kvm_coalesced_mmio_zone*, %struct.kvm_coalesced_mmio_zone** %8, align 8
  %56 = getelementptr inbounds %struct.kvm_coalesced_mmio_zone, %struct.kvm_coalesced_mmio_zone* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.kvm_coalesced_mmio_zone*, %struct.kvm_coalesced_mmio_zone** %8, align 8
  %59 = getelementptr inbounds %struct.kvm_coalesced_mmio_zone, %struct.kvm_coalesced_mmio_zone* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %57, %60
  %62 = icmp sle i64 %54, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %50
  store i32 1, i32* %4, align 4
  br label %69

64:                                               ; preds = %50, %38
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %11, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %11, align 4
  br label %32

68:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %69

69:                                               ; preds = %68, %63, %30
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
