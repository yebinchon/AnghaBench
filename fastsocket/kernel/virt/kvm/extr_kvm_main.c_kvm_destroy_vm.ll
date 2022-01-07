; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/virt/kvm/extr_kvm_main.c_kvm_destroy_vm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/virt/kvm/extr_kvm_main.c_kvm_destroy_vm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { %struct.mm_struct*, i32, i32*, i32*, i32 }
%struct.mm_struct = type { i32 }

@kvm_lock = common dso_local global i32 0, align 4
@KVM_NR_BUSES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm*)* @kvm_destroy_vm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvm_destroy_vm(%struct.kvm* %0) #0 {
  %2 = alloca %struct.kvm*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mm_struct*, align 8
  store %struct.kvm* %0, %struct.kvm** %2, align 8
  %5 = load %struct.kvm*, %struct.kvm** %2, align 8
  %6 = getelementptr inbounds %struct.kvm, %struct.kvm* %5, i32 0, i32 0
  %7 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  store %struct.mm_struct* %7, %struct.mm_struct** %4, align 8
  %8 = load %struct.kvm*, %struct.kvm** %2, align 8
  %9 = call i32 @kvm_arch_sync_events(%struct.kvm* %8)
  %10 = call i32 @spin_lock(i32* @kvm_lock)
  %11 = load %struct.kvm*, %struct.kvm** %2, align 8
  %12 = getelementptr inbounds %struct.kvm, %struct.kvm* %11, i32 0, i32 4
  %13 = call i32 @list_del(i32* %12)
  %14 = call i32 @spin_unlock(i32* @kvm_lock)
  %15 = load %struct.kvm*, %struct.kvm** %2, align 8
  %16 = call i32 @kvm_free_irq_routing(%struct.kvm* %15)
  store i32 0, i32* %3, align 4
  br label %17

17:                                               ; preds = %30, %1
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @KVM_NR_BUSES, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %33

21:                                               ; preds = %17
  %22 = load %struct.kvm*, %struct.kvm** %2, align 8
  %23 = getelementptr inbounds %struct.kvm, %struct.kvm* %22, i32 0, i32 3
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @kvm_io_bus_destroy(i32 %28)
  br label %30

30:                                               ; preds = %21
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %3, align 4
  br label %17

33:                                               ; preds = %17
  %34 = load %struct.kvm*, %struct.kvm** %2, align 8
  %35 = call i32 @kvm_arch_flush_shadow(%struct.kvm* %34)
  %36 = load %struct.kvm*, %struct.kvm** %2, align 8
  %37 = call i32 @kvm_arch_destroy_vm(%struct.kvm* %36)
  %38 = call i32 (...) @hardware_disable_all()
  %39 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %40 = call i32 @mmdrop(%struct.mm_struct* %39)
  ret void
}

declare dso_local i32 @kvm_arch_sync_events(%struct.kvm*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kvm_free_irq_routing(%struct.kvm*) #1

declare dso_local i32 @kvm_io_bus_destroy(i32) #1

declare dso_local i32 @kvm_arch_flush_shadow(%struct.kvm*) #1

declare dso_local i32 @kvm_arch_destroy_vm(%struct.kvm*) #1

declare dso_local i32 @hardware_disable_all(...) #1

declare dso_local i32 @mmdrop(%struct.mm_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
