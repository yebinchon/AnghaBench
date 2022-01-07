; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/virt/kvm/extr_kvm_main.c_mark_page_dirty_in_slot.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/virt/kvm/extr_kvm_main.c_mark_page_dirty_in_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }
%struct.kvm_memory_slot = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mark_page_dirty_in_slot(%struct.kvm* %0, %struct.kvm_memory_slot* %1, i64 %2) #0 {
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca %struct.kvm_memory_slot*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.kvm* %0, %struct.kvm** %4, align 8
  store %struct.kvm_memory_slot* %1, %struct.kvm_memory_slot** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %5, align 8
  %9 = icmp ne %struct.kvm_memory_slot* %8, null
  br i1 %9, label %10, label %34

10:                                               ; preds = %3
  %11 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %5, align 8
  %12 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %34

15:                                               ; preds = %10
  %16 = load i64, i64* %6, align 8
  %17 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %5, align 8
  %18 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = sub i64 %16, %19
  store i64 %20, i64* %7, align 8
  %21 = load i64, i64* %7, align 8
  %22 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %5, align 8
  %23 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @test_bit(i64 %21, i64 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %15
  %28 = load i64, i64* %7, align 8
  %29 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %5, align 8
  %30 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @set_bit(i64 %28, i64 %31)
  br label %33

33:                                               ; preds = %27, %15
  br label %34

34:                                               ; preds = %33, %10, %3
  ret void
}

declare dso_local i32 @test_bit(i64, i64) #1

declare dso_local i32 @set_bit(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
