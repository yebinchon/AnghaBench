; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/virt/kvm/extr_ioapic.c___kvm_ioapic_update_eoi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/virt/kvm/extr_ioapic.c___kvm_ioapic_update_eoi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_ioapic = type { i32, i32, i32, %union.kvm_ioapic_redirect_entry* }
%union.kvm_ioapic_redirect_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i64 }

@IOAPIC_NUM_PINS = common dso_local global i32 0, align 4
@KVM_IRQCHIP_IOAPIC = common dso_local global i32 0, align 4
@IOAPIC_LEVEL_TRIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_ioapic*, i32, i32)* @__kvm_ioapic_update_eoi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__kvm_ioapic_update_eoi(%struct.kvm_ioapic* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.kvm_ioapic*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %union.kvm_ioapic_redirect_entry*, align 8
  store %struct.kvm_ioapic* %0, %struct.kvm_ioapic** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %74, %3
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @IOAPIC_NUM_PINS, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %77

13:                                               ; preds = %9
  %14 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %4, align 8
  %15 = getelementptr inbounds %struct.kvm_ioapic, %struct.kvm_ioapic* %14, i32 0, i32 3
  %16 = load %union.kvm_ioapic_redirect_entry*, %union.kvm_ioapic_redirect_entry** %15, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %union.kvm_ioapic_redirect_entry, %union.kvm_ioapic_redirect_entry* %16, i64 %18
  store %union.kvm_ioapic_redirect_entry* %19, %union.kvm_ioapic_redirect_entry** %8, align 8
  %20 = load %union.kvm_ioapic_redirect_entry*, %union.kvm_ioapic_redirect_entry** %8, align 8
  %21 = bitcast %union.kvm_ioapic_redirect_entry* %20 to %struct.TYPE_2__*
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %13
  br label %74

27:                                               ; preds = %13
  %28 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %4, align 8
  %29 = getelementptr inbounds %struct.kvm_ioapic, %struct.kvm_ioapic* %28, i32 0, i32 1
  %30 = call i32 @spin_unlock(i32* %29)
  %31 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %4, align 8
  %32 = getelementptr inbounds %struct.kvm_ioapic, %struct.kvm_ioapic* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @KVM_IRQCHIP_IOAPIC, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @kvm_notify_acked_irq(i32 %33, i32 %34, i32 %35)
  %37 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %4, align 8
  %38 = getelementptr inbounds %struct.kvm_ioapic, %struct.kvm_ioapic* %37, i32 0, i32 1
  %39 = call i32 @spin_lock(i32* %38)
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @IOAPIC_LEVEL_TRIG, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %27
  br label %74

44:                                               ; preds = %27
  %45 = load %union.kvm_ioapic_redirect_entry*, %union.kvm_ioapic_redirect_entry** %8, align 8
  %46 = bitcast %union.kvm_ioapic_redirect_entry* %45 to %struct.TYPE_2__*
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @IOAPIC_LEVEL_TRIG, align 4
  %50 = icmp eq i32 %48, %49
  %51 = zext i1 %50 to i32
  %52 = call i32 @ASSERT(i32 %51)
  %53 = load %union.kvm_ioapic_redirect_entry*, %union.kvm_ioapic_redirect_entry** %8, align 8
  %54 = bitcast %union.kvm_ioapic_redirect_entry* %53 to %struct.TYPE_2__*
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 3
  store i64 0, i64* %55, align 8
  %56 = load %union.kvm_ioapic_redirect_entry*, %union.kvm_ioapic_redirect_entry** %8, align 8
  %57 = bitcast %union.kvm_ioapic_redirect_entry* %56 to %struct.TYPE_2__*
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %73, label %61

61:                                               ; preds = %44
  %62 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %4, align 8
  %63 = getelementptr inbounds %struct.kvm_ioapic, %struct.kvm_ioapic* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = shl i32 1, %65
  %67 = and i32 %64, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %61
  %70 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %4, align 8
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @ioapic_service(%struct.kvm_ioapic* %70, i32 %71)
  br label %73

73:                                               ; preds = %69, %61, %44
  br label %74

74:                                               ; preds = %73, %43, %26
  %75 = load i32, i32* %7, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %7, align 4
  br label %9

77:                                               ; preds = %9
  ret void
}

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kvm_notify_acked_irq(i32, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @ioapic_service(%struct.kvm_ioapic*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
