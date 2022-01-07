; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/virt/kvm/extr_ioapic.c_kvm_ioapic_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/virt/kvm/extr_ioapic.c_kvm_ioapic_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_ioapic = type { i64, i64, i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@IOAPIC_NUM_PINS = common dso_local global i32 0, align 4
@IOAPIC_DEFAULT_BASE_ADDRESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_ioapic_reset(%struct.kvm_ioapic* %0) #0 {
  %2 = alloca %struct.kvm_ioapic*, align 8
  %3 = alloca i32, align 4
  store %struct.kvm_ioapic* %0, %struct.kvm_ioapic** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %17, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @IOAPIC_NUM_PINS, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %20

8:                                                ; preds = %4
  %9 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %2, align 8
  %10 = getelementptr inbounds %struct.kvm_ioapic, %struct.kvm_ioapic* %9, i32 0, i32 4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store i32 1, i32* %16, align 4
  br label %17

17:                                               ; preds = %8
  %18 = load i32, i32* %3, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %3, align 4
  br label %4

20:                                               ; preds = %4
  %21 = load i32, i32* @IOAPIC_DEFAULT_BASE_ADDRESS, align 4
  %22 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %2, align 8
  %23 = getelementptr inbounds %struct.kvm_ioapic, %struct.kvm_ioapic* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 8
  %24 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %2, align 8
  %25 = getelementptr inbounds %struct.kvm_ioapic, %struct.kvm_ioapic* %24, i32 0, i32 2
  store i64 0, i64* %25, align 8
  %26 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %2, align 8
  %27 = getelementptr inbounds %struct.kvm_ioapic, %struct.kvm_ioapic* %26, i32 0, i32 1
  store i64 0, i64* %27, align 8
  %28 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %2, align 8
  %29 = getelementptr inbounds %struct.kvm_ioapic, %struct.kvm_ioapic* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  %30 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %2, align 8
  %31 = call i32 @update_handled_vectors(%struct.kvm_ioapic* %30)
  ret void
}

declare dso_local i32 @update_handled_vectors(%struct.kvm_ioapic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
