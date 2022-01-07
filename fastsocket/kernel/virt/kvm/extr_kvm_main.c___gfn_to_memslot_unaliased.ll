; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/virt/kvm/extr_kvm_main.c___gfn_to_memslot_unaliased.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/virt/kvm/extr_kvm_main.c___gfn_to_memslot_unaliased.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_memory_slot = type { i64, i64 }
%struct.kvm_memslots = type { i32, %struct.kvm_memory_slot* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.kvm_memory_slot* (%struct.kvm_memslots*, i64)* @__gfn_to_memslot_unaliased to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.kvm_memory_slot* @__gfn_to_memslot_unaliased(%struct.kvm_memslots* %0, i64 %1) #0 {
  %3 = alloca %struct.kvm_memory_slot*, align 8
  %4 = alloca %struct.kvm_memslots*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.kvm_memory_slot*, align 8
  store %struct.kvm_memslots* %0, %struct.kvm_memslots** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %39, %2
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.kvm_memslots*, %struct.kvm_memslots** %4, align 8
  %11 = getelementptr inbounds %struct.kvm_memslots, %struct.kvm_memslots* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %42

14:                                               ; preds = %8
  %15 = load %struct.kvm_memslots*, %struct.kvm_memslots** %4, align 8
  %16 = getelementptr inbounds %struct.kvm_memslots, %struct.kvm_memslots* %15, i32 0, i32 1
  %17 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %17, i64 %19
  store %struct.kvm_memory_slot* %20, %struct.kvm_memory_slot** %7, align 8
  %21 = load i64, i64* %5, align 8
  %22 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %7, align 8
  %23 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp sge i64 %21, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %14
  %27 = load i64, i64* %5, align 8
  %28 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %7, align 8
  %29 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %7, align 8
  %32 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %30, %33
  %35 = icmp slt i64 %27, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %26
  %37 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %7, align 8
  store %struct.kvm_memory_slot* %37, %struct.kvm_memory_slot** %3, align 8
  br label %43

38:                                               ; preds = %26, %14
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  br label %8

42:                                               ; preds = %8
  store %struct.kvm_memory_slot* null, %struct.kvm_memory_slot** %3, align 8
  br label %43

43:                                               ; preds = %42, %36
  %44 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %3, align 8
  ret %struct.kvm_memory_slot* %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
