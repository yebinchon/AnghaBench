; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/virt/kvm/extr_kvm_main.c___gfn_to_hva.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/virt/kvm/extr_kvm_main.c___gfn_to_hva.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_memory_slot = type { i32, i64, i32 }

@KVM_MEMSLOT_INVALID = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kvm_memory_slot*, i32)* @__gfn_to_hva to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__gfn_to_hva(%struct.kvm_memory_slot* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.kvm_memory_slot*, align 8
  %5 = alloca i32, align 4
  store %struct.kvm_memory_slot* %0, %struct.kvm_memory_slot** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %4, align 8
  %7 = icmp ne %struct.kvm_memory_slot* %6, null
  br i1 %7, label %8, label %15

8:                                                ; preds = %2
  %9 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %4, align 8
  %10 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @KVM_MEMSLOT_INVALID, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %8, %2
  %16 = call i64 (...) @bad_hva()
  store i64 %16, i64* %3, align 8
  br label %30

17:                                               ; preds = %8
  %18 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %4, align 8
  %19 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %4, align 8
  %23 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = sub nsw i32 %21, %24
  %26 = load i32, i32* @PAGE_SIZE, align 4
  %27 = mul nsw i32 %25, %26
  %28 = sext i32 %27 to i64
  %29 = add i64 %20, %28
  store i64 %29, i64* %3, align 8
  br label %30

30:                                               ; preds = %17, %15
  %31 = load i64, i64* %3, align 8
  ret i64 %31
}

declare dso_local i64 @bad_hva(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
