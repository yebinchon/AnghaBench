; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/virt/kvm/extr_irq_comm.c_kvm_set_ioapic_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/virt/kvm/extr_irq_comm.c_kvm_set_ioapic_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_kernel_irq_routing_entry = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.kvm = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.kvm_ioapic* }
%struct.kvm_ioapic = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_kernel_irq_routing_entry*, %struct.kvm*, i32, i32)* @kvm_set_ioapic_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_set_ioapic_irq(%struct.kvm_kernel_irq_routing_entry* %0, %struct.kvm* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.kvm_kernel_irq_routing_entry*, align 8
  %6 = alloca %struct.kvm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.kvm_ioapic*, align 8
  store %struct.kvm_kernel_irq_routing_entry* %0, %struct.kvm_kernel_irq_routing_entry** %5, align 8
  store %struct.kvm* %1, %struct.kvm** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.kvm*, %struct.kvm** %6, align 8
  %11 = getelementptr inbounds %struct.kvm, %struct.kvm* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %12, align 8
  store %struct.kvm_ioapic* %13, %struct.kvm_ioapic** %9, align 8
  %14 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %9, align 8
  %15 = load %struct.kvm_kernel_irq_routing_entry*, %struct.kvm_kernel_irq_routing_entry** %5, align 8
  %16 = getelementptr inbounds %struct.kvm_kernel_irq_routing_entry, %struct.kvm_kernel_irq_routing_entry* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @kvm_ioapic_set_irq(%struct.kvm_ioapic* %14, i32 %18, i32 %19, i32 %20)
  ret i32 %21
}

declare dso_local i32 @kvm_ioapic_set_irq(%struct.kvm_ioapic*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
