; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/virt/kvm/extr_ioapic.c_kvm_ioapic_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/virt/kvm/extr_ioapic.c_kvm_ioapic_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.kvm_ioapic* }
%struct.kvm_ioapic = type { i32, %struct.kvm*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ioapic_mmio_ops = common dso_local global i32 0, align 4
@KVM_MMIO_BUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_ioapic_init(%struct.kvm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm*, align 8
  %4 = alloca %struct.kvm_ioapic*, align 8
  %5 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.kvm_ioapic* @kzalloc(i32 24, i32 %6)
  store %struct.kvm_ioapic* %7, %struct.kvm_ioapic** %4, align 8
  %8 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %4, align 8
  %9 = icmp ne %struct.kvm_ioapic* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %47

13:                                               ; preds = %1
  %14 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %4, align 8
  %15 = getelementptr inbounds %struct.kvm_ioapic, %struct.kvm_ioapic* %14, i32 0, i32 2
  %16 = call i32 @spin_lock_init(i32* %15)
  %17 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %4, align 8
  %18 = load %struct.kvm*, %struct.kvm** %3, align 8
  %19 = getelementptr inbounds %struct.kvm, %struct.kvm* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store %struct.kvm_ioapic* %17, %struct.kvm_ioapic** %20, align 8
  %21 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %4, align 8
  %22 = call i32 @kvm_ioapic_reset(%struct.kvm_ioapic* %21)
  %23 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %4, align 8
  %24 = getelementptr inbounds %struct.kvm_ioapic, %struct.kvm_ioapic* %23, i32 0, i32 0
  %25 = call i32 @kvm_iodevice_init(i32* %24, i32* @ioapic_mmio_ops)
  %26 = load %struct.kvm*, %struct.kvm** %3, align 8
  %27 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %4, align 8
  %28 = getelementptr inbounds %struct.kvm_ioapic, %struct.kvm_ioapic* %27, i32 0, i32 1
  store %struct.kvm* %26, %struct.kvm** %28, align 8
  %29 = load %struct.kvm*, %struct.kvm** %3, align 8
  %30 = getelementptr inbounds %struct.kvm, %struct.kvm* %29, i32 0, i32 0
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load %struct.kvm*, %struct.kvm** %3, align 8
  %33 = load i32, i32* @KVM_MMIO_BUS, align 4
  %34 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %4, align 8
  %35 = getelementptr inbounds %struct.kvm_ioapic, %struct.kvm_ioapic* %34, i32 0, i32 0
  %36 = call i32 @kvm_io_bus_register_dev(%struct.kvm* %32, i32 %33, i32* %35)
  store i32 %36, i32* %5, align 4
  %37 = load %struct.kvm*, %struct.kvm** %3, align 8
  %38 = getelementptr inbounds %struct.kvm, %struct.kvm* %37, i32 0, i32 0
  %39 = call i32 @mutex_unlock(i32* %38)
  %40 = load i32, i32* %5, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %13
  %43 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %4, align 8
  %44 = call i32 @kfree(%struct.kvm_ioapic* %43)
  br label %45

45:                                               ; preds = %42, %13
  %46 = load i32, i32* %5, align 4
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %45, %10
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local %struct.kvm_ioapic* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @kvm_ioapic_reset(%struct.kvm_ioapic*) #1

declare dso_local i32 @kvm_iodevice_init(i32*, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @kvm_io_bus_register_dev(%struct.kvm*, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.kvm_ioapic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
