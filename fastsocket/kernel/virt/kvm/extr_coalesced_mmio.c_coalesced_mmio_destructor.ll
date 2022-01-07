; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/virt/kvm/extr_coalesced_mmio.c_coalesced_mmio_destructor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/virt/kvm/extr_coalesced_mmio.c_coalesced_mmio_destructor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_io_device = type { i32 }
%struct.kvm_coalesced_mmio_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_io_device*)* @coalesced_mmio_destructor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @coalesced_mmio_destructor(%struct.kvm_io_device* %0) #0 {
  %2 = alloca %struct.kvm_io_device*, align 8
  %3 = alloca %struct.kvm_coalesced_mmio_dev*, align 8
  store %struct.kvm_io_device* %0, %struct.kvm_io_device** %2, align 8
  %4 = load %struct.kvm_io_device*, %struct.kvm_io_device** %2, align 8
  %5 = call %struct.kvm_coalesced_mmio_dev* @to_mmio(%struct.kvm_io_device* %4)
  store %struct.kvm_coalesced_mmio_dev* %5, %struct.kvm_coalesced_mmio_dev** %3, align 8
  %6 = load %struct.kvm_coalesced_mmio_dev*, %struct.kvm_coalesced_mmio_dev** %3, align 8
  %7 = call i32 @kfree(%struct.kvm_coalesced_mmio_dev* %6)
  ret void
}

declare dso_local %struct.kvm_coalesced_mmio_dev* @to_mmio(%struct.kvm_io_device*) #1

declare dso_local i32 @kfree(%struct.kvm_coalesced_mmio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
