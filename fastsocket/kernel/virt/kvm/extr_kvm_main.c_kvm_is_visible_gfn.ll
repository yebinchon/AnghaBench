; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/virt/kvm/extr_kvm_main.c_kvm_is_visible_gfn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/virt/kvm/extr_kvm_main.c_kvm_is_visible_gfn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }
%struct.kvm_memslots = type { %struct.kvm_memory_slot* }
%struct.kvm_memory_slot = type { i32, i64, i64 }

@KVM_MEMORY_SLOTS = common dso_local global i32 0, align 4
@KVM_MEMSLOT_INVALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_is_visible_gfn(%struct.kvm* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.kvm_memslots*, align 8
  %8 = alloca %struct.kvm_memory_slot*, align 8
  store %struct.kvm* %0, %struct.kvm** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.kvm*, %struct.kvm** %4, align 8
  %10 = getelementptr inbounds %struct.kvm, %struct.kvm* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.kvm_memslots* @rcu_dereference(i32 %11)
  store %struct.kvm_memslots* %12, %struct.kvm_memslots** %7, align 8
  %13 = load %struct.kvm*, %struct.kvm** %4, align 8
  %14 = load i64, i64* %5, align 8
  %15 = call i64 @unalias_gfn_instantiation(%struct.kvm* %13, i64 %14)
  store i64 %15, i64* %5, align 8
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %52, %2
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @KVM_MEMORY_SLOTS, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %55

20:                                               ; preds = %16
  %21 = load %struct.kvm_memslots*, %struct.kvm_memslots** %7, align 8
  %22 = getelementptr inbounds %struct.kvm_memslots, %struct.kvm_memslots* %21, i32 0, i32 0
  %23 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %23, i64 %25
  store %struct.kvm_memory_slot* %26, %struct.kvm_memory_slot** %8, align 8
  %27 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %8, align 8
  %28 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @KVM_MEMSLOT_INVALID, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %20
  br label %52

34:                                               ; preds = %20
  %35 = load i64, i64* %5, align 8
  %36 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %8, align 8
  %37 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp sge i64 %35, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %34
  %41 = load i64, i64* %5, align 8
  %42 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %8, align 8
  %43 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %8, align 8
  %46 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %44, %47
  %49 = icmp slt i64 %41, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %40
  store i32 1, i32* %3, align 4
  br label %56

51:                                               ; preds = %40, %34
  br label %52

52:                                               ; preds = %51, %33
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  br label %16

55:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %55, %50
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local %struct.kvm_memslots* @rcu_dereference(i32) #1

declare dso_local i64 @unalias_gfn_instantiation(%struct.kvm*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
