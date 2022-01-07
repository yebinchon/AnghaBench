; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/virt/kvm/extr_coalesced_mmio.c_coalesced_mmio_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/virt/kvm/extr_coalesced_mmio.c_coalesced_mmio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_io_device = type { i32 }
%struct.kvm_coalesced_mmio_dev = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.kvm_coalesced_mmio_ring* }
%struct.kvm_coalesced_mmio_ring = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@KVM_COALESCED_MMIO_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_io_device*, i32, i32, i8*)* @coalesced_mmio_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coalesced_mmio_write(%struct.kvm_io_device* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kvm_io_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.kvm_coalesced_mmio_dev*, align 8
  %11 = alloca %struct.kvm_coalesced_mmio_ring*, align 8
  store %struct.kvm_io_device* %0, %struct.kvm_io_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %12 = load %struct.kvm_io_device*, %struct.kvm_io_device** %6, align 8
  %13 = call %struct.kvm_coalesced_mmio_dev* @to_mmio(%struct.kvm_io_device* %12)
  store %struct.kvm_coalesced_mmio_dev* %13, %struct.kvm_coalesced_mmio_dev** %10, align 8
  %14 = load %struct.kvm_coalesced_mmio_dev*, %struct.kvm_coalesced_mmio_dev** %10, align 8
  %15 = getelementptr inbounds %struct.kvm_coalesced_mmio_dev, %struct.kvm_coalesced_mmio_dev* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.kvm_coalesced_mmio_ring*, %struct.kvm_coalesced_mmio_ring** %17, align 8
  store %struct.kvm_coalesced_mmio_ring* %18, %struct.kvm_coalesced_mmio_ring** %11, align 8
  %19 = load %struct.kvm_coalesced_mmio_dev*, %struct.kvm_coalesced_mmio_dev** %10, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @coalesced_mmio_in_range(%struct.kvm_coalesced_mmio_dev* %19, i32 %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %4
  %25 = load i32, i32* @EOPNOTSUPP, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %74

27:                                               ; preds = %4
  %28 = load %struct.kvm_coalesced_mmio_dev*, %struct.kvm_coalesced_mmio_dev** %10, align 8
  %29 = getelementptr inbounds %struct.kvm_coalesced_mmio_dev, %struct.kvm_coalesced_mmio_dev* %28, i32 0, i32 0
  %30 = call i32 @spin_lock(i32* %29)
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.kvm_coalesced_mmio_ring*, %struct.kvm_coalesced_mmio_ring** %11, align 8
  %33 = getelementptr inbounds %struct.kvm_coalesced_mmio_ring, %struct.kvm_coalesced_mmio_ring* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = load %struct.kvm_coalesced_mmio_ring*, %struct.kvm_coalesced_mmio_ring** %11, align 8
  %36 = getelementptr inbounds %struct.kvm_coalesced_mmio_ring, %struct.kvm_coalesced_mmio_ring* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  store i32 %31, i32* %39, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.kvm_coalesced_mmio_ring*, %struct.kvm_coalesced_mmio_ring** %11, align 8
  %42 = getelementptr inbounds %struct.kvm_coalesced_mmio_ring, %struct.kvm_coalesced_mmio_ring* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = load %struct.kvm_coalesced_mmio_ring*, %struct.kvm_coalesced_mmio_ring** %11, align 8
  %45 = getelementptr inbounds %struct.kvm_coalesced_mmio_ring, %struct.kvm_coalesced_mmio_ring* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  store i32 %40, i32* %48, align 4
  %49 = load %struct.kvm_coalesced_mmio_ring*, %struct.kvm_coalesced_mmio_ring** %11, align 8
  %50 = getelementptr inbounds %struct.kvm_coalesced_mmio_ring, %struct.kvm_coalesced_mmio_ring* %49, i32 0, i32 1
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = load %struct.kvm_coalesced_mmio_ring*, %struct.kvm_coalesced_mmio_ring** %11, align 8
  %53 = getelementptr inbounds %struct.kvm_coalesced_mmio_ring, %struct.kvm_coalesced_mmio_ring* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i8*, i8** %9, align 8
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @memcpy(i32 %57, i8* %58, i32 %59)
  %61 = call i32 (...) @smp_wmb()
  %62 = load %struct.kvm_coalesced_mmio_ring*, %struct.kvm_coalesced_mmio_ring** %11, align 8
  %63 = getelementptr inbounds %struct.kvm_coalesced_mmio_ring, %struct.kvm_coalesced_mmio_ring* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = add i64 %64, 1
  %66 = load i32, i32* @KVM_COALESCED_MMIO_MAX, align 4
  %67 = sext i32 %66 to i64
  %68 = urem i64 %65, %67
  %69 = load %struct.kvm_coalesced_mmio_ring*, %struct.kvm_coalesced_mmio_ring** %11, align 8
  %70 = getelementptr inbounds %struct.kvm_coalesced_mmio_ring, %struct.kvm_coalesced_mmio_ring* %69, i32 0, i32 0
  store i64 %68, i64* %70, align 8
  %71 = load %struct.kvm_coalesced_mmio_dev*, %struct.kvm_coalesced_mmio_dev** %10, align 8
  %72 = getelementptr inbounds %struct.kvm_coalesced_mmio_dev, %struct.kvm_coalesced_mmio_dev* %71, i32 0, i32 0
  %73 = call i32 @spin_unlock(i32* %72)
  store i32 0, i32* %5, align 4
  br label %74

74:                                               ; preds = %27, %24
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local %struct.kvm_coalesced_mmio_dev* @to_mmio(%struct.kvm_io_device*) #1

declare dso_local i32 @coalesced_mmio_in_range(%struct.kvm_coalesced_mmio_dev*, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
