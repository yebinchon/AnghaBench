; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/virt/kvm/extr_kvm_main.c_memslot_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/virt/kvm/extr_kvm_main.c_memslot_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }
%struct.kvm_memslots = type { i32, %struct.kvm_memory_slot* }
%struct.kvm_memory_slot = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @memslot_id(%struct.kvm* %0, i64 %1) #0 {
  %3 = alloca %struct.kvm*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.kvm_memslots*, align 8
  %7 = alloca %struct.kvm_memory_slot*, align 8
  store %struct.kvm* %0, %struct.kvm** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.kvm*, %struct.kvm** %3, align 8
  %9 = getelementptr inbounds %struct.kvm, %struct.kvm* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.kvm_memslots* @rcu_dereference(i32 %10)
  store %struct.kvm_memslots* %11, %struct.kvm_memslots** %6, align 8
  store %struct.kvm_memory_slot* null, %struct.kvm_memory_slot** %7, align 8
  %12 = load %struct.kvm*, %struct.kvm** %3, align 8
  %13 = load i64, i64* %4, align 8
  %14 = call i64 @unalias_gfn(%struct.kvm* %12, i64 %13)
  store i64 %14, i64* %4, align 8
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %45, %2
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.kvm_memslots*, %struct.kvm_memslots** %6, align 8
  %18 = getelementptr inbounds %struct.kvm_memslots, %struct.kvm_memslots* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %48

21:                                               ; preds = %15
  %22 = load %struct.kvm_memslots*, %struct.kvm_memslots** %6, align 8
  %23 = getelementptr inbounds %struct.kvm_memslots, %struct.kvm_memslots* %22, i32 0, i32 1
  %24 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %24, i64 %26
  store %struct.kvm_memory_slot* %27, %struct.kvm_memory_slot** %7, align 8
  %28 = load i64, i64* %4, align 8
  %29 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %7, align 8
  %30 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp sge i64 %28, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %21
  %34 = load i64, i64* %4, align 8
  %35 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %7, align 8
  %36 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %7, align 8
  %39 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %37, %40
  %42 = icmp slt i64 %34, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %33
  br label %48

44:                                               ; preds = %33, %21
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %5, align 4
  br label %15

48:                                               ; preds = %43, %15
  %49 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %7, align 8
  %50 = load %struct.kvm_memslots*, %struct.kvm_memslots** %6, align 8
  %51 = getelementptr inbounds %struct.kvm_memslots, %struct.kvm_memslots* %50, i32 0, i32 1
  %52 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %51, align 8
  %53 = ptrtoint %struct.kvm_memory_slot* %49 to i64
  %54 = ptrtoint %struct.kvm_memory_slot* %52 to i64
  %55 = sub i64 %53, %54
  %56 = sdiv exact i64 %55, 16
  %57 = trunc i64 %56 to i32
  ret i32 %57
}

declare dso_local %struct.kvm_memslots* @rcu_dereference(i32) #1

declare dso_local i64 @unalias_gfn(%struct.kvm*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
