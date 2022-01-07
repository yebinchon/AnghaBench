; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/virt/kvm/extr_irq_comm.c_kvm_set_msi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/virt/kvm/extr_irq_comm.c_kvm_set_msi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_kernel_irq_routing_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.kvm = type { i32 }
%struct.kvm_lapic_irq = type { i32, i32, i32, i32, i32, i32, i64 }

@MSI_ADDR_DEST_ID_MASK = common dso_local global i32 0, align 4
@MSI_ADDR_DEST_ID_SHIFT = common dso_local global i32 0, align 4
@MSI_DATA_VECTOR_MASK = common dso_local global i32 0, align 4
@MSI_DATA_VECTOR_SHIFT = common dso_local global i32 0, align 4
@MSI_ADDR_DEST_MODE_SHIFT = common dso_local global i32 0, align 4
@MSI_DATA_TRIGGER_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_set_msi(%struct.kvm_kernel_irq_routing_entry* %0, %struct.kvm* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kvm_kernel_irq_routing_entry*, align 8
  %7 = alloca %struct.kvm*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.kvm_lapic_irq, align 8
  store %struct.kvm_kernel_irq_routing_entry* %0, %struct.kvm_kernel_irq_routing_entry** %6, align 8
  store %struct.kvm* %1, %struct.kvm** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %9, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %68

14:                                               ; preds = %4
  %15 = load %struct.kvm_kernel_irq_routing_entry*, %struct.kvm_kernel_irq_routing_entry** %6, align 8
  %16 = getelementptr inbounds %struct.kvm_kernel_irq_routing_entry, %struct.kvm_kernel_irq_routing_entry* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.kvm_kernel_irq_routing_entry*, %struct.kvm_kernel_irq_routing_entry** %6, align 8
  %20 = getelementptr inbounds %struct.kvm_kernel_irq_routing_entry, %struct.kvm_kernel_irq_routing_entry* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @trace_kvm_msi_set_irq(i32 %18, i32 %22)
  %24 = load %struct.kvm_kernel_irq_routing_entry*, %struct.kvm_kernel_irq_routing_entry** %6, align 8
  %25 = getelementptr inbounds %struct.kvm_kernel_irq_routing_entry, %struct.kvm_kernel_irq_routing_entry* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @MSI_ADDR_DEST_ID_MASK, align 4
  %29 = and i32 %27, %28
  %30 = load i32, i32* @MSI_ADDR_DEST_ID_SHIFT, align 4
  %31 = ashr i32 %29, %30
  %32 = getelementptr inbounds %struct.kvm_lapic_irq, %struct.kvm_lapic_irq* %10, i32 0, i32 0
  store i32 %31, i32* %32, align 8
  %33 = load %struct.kvm_kernel_irq_routing_entry*, %struct.kvm_kernel_irq_routing_entry** %6, align 8
  %34 = getelementptr inbounds %struct.kvm_kernel_irq_routing_entry, %struct.kvm_kernel_irq_routing_entry* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @MSI_DATA_VECTOR_MASK, align 4
  %38 = and i32 %36, %37
  %39 = load i32, i32* @MSI_DATA_VECTOR_SHIFT, align 4
  %40 = ashr i32 %38, %39
  %41 = getelementptr inbounds %struct.kvm_lapic_irq, %struct.kvm_lapic_irq* %10, i32 0, i32 1
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* @MSI_ADDR_DEST_MODE_SHIFT, align 4
  %43 = shl i32 1, %42
  %44 = load %struct.kvm_kernel_irq_routing_entry*, %struct.kvm_kernel_irq_routing_entry** %6, align 8
  %45 = getelementptr inbounds %struct.kvm_kernel_irq_routing_entry, %struct.kvm_kernel_irq_routing_entry* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %43, %47
  %49 = getelementptr inbounds %struct.kvm_lapic_irq, %struct.kvm_lapic_irq* %10, i32 0, i32 2
  store i32 %48, i32* %49, align 8
  %50 = load i32, i32* @MSI_DATA_TRIGGER_SHIFT, align 4
  %51 = shl i32 1, %50
  %52 = load %struct.kvm_kernel_irq_routing_entry*, %struct.kvm_kernel_irq_routing_entry** %6, align 8
  %53 = getelementptr inbounds %struct.kvm_kernel_irq_routing_entry, %struct.kvm_kernel_irq_routing_entry* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %51, %55
  %57 = getelementptr inbounds %struct.kvm_lapic_irq, %struct.kvm_lapic_irq* %10, i32 0, i32 3
  store i32 %56, i32* %57, align 4
  %58 = load %struct.kvm_kernel_irq_routing_entry*, %struct.kvm_kernel_irq_routing_entry** %6, align 8
  %59 = getelementptr inbounds %struct.kvm_kernel_irq_routing_entry, %struct.kvm_kernel_irq_routing_entry* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, 1792
  %63 = getelementptr inbounds %struct.kvm_lapic_irq, %struct.kvm_lapic_irq* %10, i32 0, i32 4
  store i32 %62, i32* %63, align 8
  %64 = getelementptr inbounds %struct.kvm_lapic_irq, %struct.kvm_lapic_irq* %10, i32 0, i32 5
  store i32 1, i32* %64, align 4
  %65 = getelementptr inbounds %struct.kvm_lapic_irq, %struct.kvm_lapic_irq* %10, i32 0, i32 6
  store i64 0, i64* %65, align 8
  %66 = load %struct.kvm*, %struct.kvm** %7, align 8
  %67 = call i32 @kvm_irq_delivery_to_apic(%struct.kvm* %66, i32* null, %struct.kvm_lapic_irq* %10)
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %14, %13
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i32 @trace_kvm_msi_set_irq(i32, i32) #1

declare dso_local i32 @kvm_irq_delivery_to_apic(%struct.kvm*, i32*, %struct.kvm_lapic_irq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
