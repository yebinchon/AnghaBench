; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/virt/kvm/extr_kvm_main.c_gfn_to_hva_memslot.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/virt/kvm/extr_kvm_main.c_gfn_to_hva_memslot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_memory_slot = type { i64, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kvm_memory_slot*, i32)* @gfn_to_hva_memslot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @gfn_to_hva_memslot(%struct.kvm_memory_slot* %0, i32 %1) #0 {
  %3 = alloca %struct.kvm_memory_slot*, align 8
  %4 = alloca i32, align 4
  store %struct.kvm_memory_slot* %0, %struct.kvm_memory_slot** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %3, align 8
  %6 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %3, align 8
  %10 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = sub nsw i32 %8, %11
  %13 = load i32, i32* @PAGE_SIZE, align 4
  %14 = mul nsw i32 %12, %13
  %15 = sext i32 %14 to i64
  %16 = add i64 %7, %15
  ret i64 %16
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
