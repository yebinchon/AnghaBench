; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/virt/kvm/extr_ioapic.c_ioapic_deliver.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/virt/kvm/extr_ioapic.c_ioapic_deliver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_ioapic = type { %struct.TYPE_6__*, %union.kvm_ioapic_redirect_entry* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%union.kvm_ioapic_redirect_entry = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i64, i32, i32, i32 }
%struct.kvm_lapic_irq = type { i32, i32, i32, i64, i64, i32, i32 }

@.str = private unnamed_addr constant [62 x i8] c"dest=%x dest_mode=%x delivery_mode=%x vector=%x trig_mode=%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_ioapic*, i32)* @ioapic_deliver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ioapic_deliver(%struct.kvm_ioapic* %0, i32 %1) #0 {
  %3 = alloca %struct.kvm_ioapic*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %union.kvm_ioapic_redirect_entry*, align 8
  %6 = alloca %struct.kvm_lapic_irq, align 8
  store %struct.kvm_ioapic* %0, %struct.kvm_ioapic** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %3, align 8
  %8 = getelementptr inbounds %struct.kvm_ioapic, %struct.kvm_ioapic* %7, i32 0, i32 1
  %9 = load %union.kvm_ioapic_redirect_entry*, %union.kvm_ioapic_redirect_entry** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %union.kvm_ioapic_redirect_entry, %union.kvm_ioapic_redirect_entry* %9, i64 %11
  store %union.kvm_ioapic_redirect_entry* %12, %union.kvm_ioapic_redirect_entry** %5, align 8
  %13 = load %union.kvm_ioapic_redirect_entry*, %union.kvm_ioapic_redirect_entry** %5, align 8
  %14 = bitcast %union.kvm_ioapic_redirect_entry* %13 to %struct.TYPE_4__*
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 8
  %17 = load %union.kvm_ioapic_redirect_entry*, %union.kvm_ioapic_redirect_entry** %5, align 8
  %18 = bitcast %union.kvm_ioapic_redirect_entry* %17 to %struct.TYPE_4__*
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = load %union.kvm_ioapic_redirect_entry*, %union.kvm_ioapic_redirect_entry** %5, align 8
  %22 = bitcast %union.kvm_ioapic_redirect_entry* %21 to %struct.TYPE_4__*
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %union.kvm_ioapic_redirect_entry*, %union.kvm_ioapic_redirect_entry** %5, align 8
  %26 = bitcast %union.kvm_ioapic_redirect_entry* %25 to %struct.TYPE_4__*
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = load %union.kvm_ioapic_redirect_entry*, %union.kvm_ioapic_redirect_entry** %5, align 8
  %30 = bitcast %union.kvm_ioapic_redirect_entry* %29 to %struct.TYPE_4__*
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ioapic_debug(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %16, i64 %20, i32 %24, i32 %28, i32 %32)
  %34 = load %union.kvm_ioapic_redirect_entry*, %union.kvm_ioapic_redirect_entry** %5, align 8
  %35 = bitcast %union.kvm_ioapic_redirect_entry* %34 to %struct.TYPE_4__*
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.kvm_lapic_irq, %struct.kvm_lapic_irq* %6, i32 0, i32 2
  store i32 %37, i32* %38, align 8
  %39 = load %union.kvm_ioapic_redirect_entry*, %union.kvm_ioapic_redirect_entry** %5, align 8
  %40 = bitcast %union.kvm_ioapic_redirect_entry* %39 to %struct.TYPE_4__*
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = getelementptr inbounds %struct.kvm_lapic_irq, %struct.kvm_lapic_irq* %6, i32 0, i32 6
  store i32 %42, i32* %43, align 4
  %44 = load %union.kvm_ioapic_redirect_entry*, %union.kvm_ioapic_redirect_entry** %5, align 8
  %45 = bitcast %union.kvm_ioapic_redirect_entry* %44 to %struct.TYPE_4__*
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.kvm_lapic_irq, %struct.kvm_lapic_irq* %6, i32 0, i32 3
  store i64 %47, i64* %48, align 8
  %49 = load %union.kvm_ioapic_redirect_entry*, %union.kvm_ioapic_redirect_entry** %5, align 8
  %50 = bitcast %union.kvm_ioapic_redirect_entry* %49 to %struct.TYPE_4__*
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.kvm_lapic_irq, %struct.kvm_lapic_irq* %6, i32 0, i32 5
  store i32 %52, i32* %53, align 8
  %54 = load %union.kvm_ioapic_redirect_entry*, %union.kvm_ioapic_redirect_entry** %5, align 8
  %55 = bitcast %union.kvm_ioapic_redirect_entry* %54 to %struct.TYPE_4__*
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = shl i32 %57, 8
  %59 = getelementptr inbounds %struct.kvm_lapic_irq, %struct.kvm_lapic_irq* %6, i32 0, i32 0
  store i32 %58, i32* %59, align 8
  %60 = getelementptr inbounds %struct.kvm_lapic_irq, %struct.kvm_lapic_irq* %6, i32 0, i32 1
  store i32 1, i32* %60, align 4
  %61 = getelementptr inbounds %struct.kvm_lapic_irq, %struct.kvm_lapic_irq* %6, i32 0, i32 4
  store i64 0, i64* %61, align 8
  %62 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %3, align 8
  %63 = getelementptr inbounds %struct.kvm_ioapic, %struct.kvm_ioapic* %62, i32 0, i32 0
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = call i32 @kvm_irq_delivery_to_apic(%struct.TYPE_6__* %64, i32* null, %struct.kvm_lapic_irq* %6)
  ret i32 %65
}

declare dso_local i32 @ioapic_debug(i8*, i32, i64, i32, i32, i32) #1

declare dso_local i32 @kvm_irq_delivery_to_apic(%struct.TYPE_6__*, i32*, %struct.kvm_lapic_irq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
