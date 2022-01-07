; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/virt/kvm/extr_kvm_main.c_kvm_free_physmem.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/virt/kvm/extr_kvm_main.c_kvm_free_physmem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { %struct.kvm_memslots* }
%struct.kvm_memslots = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_free_physmem(%struct.kvm* %0) #0 {
  %2 = alloca %struct.kvm*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_memslots*, align 8
  store %struct.kvm* %0, %struct.kvm** %2, align 8
  %5 = load %struct.kvm*, %struct.kvm** %2, align 8
  %6 = getelementptr inbounds %struct.kvm, %struct.kvm* %5, i32 0, i32 0
  %7 = load %struct.kvm_memslots*, %struct.kvm_memslots** %6, align 8
  store %struct.kvm_memslots* %7, %struct.kvm_memslots** %4, align 8
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %22, %1
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.kvm_memslots*, %struct.kvm_memslots** %4, align 8
  %11 = getelementptr inbounds %struct.kvm_memslots, %struct.kvm_memslots* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %25

14:                                               ; preds = %8
  %15 = load %struct.kvm_memslots*, %struct.kvm_memslots** %4, align 8
  %16 = getelementptr inbounds %struct.kvm_memslots, %struct.kvm_memslots* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = call i32 @kvm_free_physmem_slot(i32* %20, i32* null)
  br label %22

22:                                               ; preds = %14
  %23 = load i32, i32* %3, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %3, align 4
  br label %8

25:                                               ; preds = %8
  %26 = load %struct.kvm*, %struct.kvm** %2, align 8
  %27 = getelementptr inbounds %struct.kvm, %struct.kvm* %26, i32 0, i32 0
  %28 = load %struct.kvm_memslots*, %struct.kvm_memslots** %27, align 8
  %29 = call i32 @kfree(%struct.kvm_memslots* %28)
  ret void
}

declare dso_local i32 @kvm_free_physmem_slot(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.kvm_memslots*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
