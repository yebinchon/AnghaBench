; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/virt/kvm/extr_kvm_main.c_kvm_create_vm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/virt/kvm/extr_kvm_main.c_kvm_create_vm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.kvm = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_5__*, %struct.kvm*, i32, %struct.kvm**, %struct.TYPE_4__, %struct.kvm_coalesced_mmio_ring*, i32, i32 }
%struct.TYPE_4__ = type { i32* }
%struct.kvm_coalesced_mmio_ring = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@KVM_NR_BUSES = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_6__* null, align 8
@kvm_lock = common dso_local global i32 0, align 4
@vm_list = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@kvm_mmu_notifier_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.kvm* ()* @kvm_create_vm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.kvm* @kvm_create_vm() #0 {
  %1 = alloca %struct.kvm*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm*, align 8
  store i32 0, i32* %2, align 4
  %5 = call %struct.kvm* (...) @kvm_arch_create_vm()
  store %struct.kvm* %5, %struct.kvm** %4, align 8
  %6 = load %struct.kvm*, %struct.kvm** %4, align 8
  %7 = call i64 @IS_ERR(%struct.kvm* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  br label %122

10:                                               ; preds = %0
  %11 = call i32 (...) @hardware_enable_all()
  store i32 %11, i32* %2, align 4
  %12 = load i32, i32* %2, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  br label %126

15:                                               ; preds = %10
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i8* @kzalloc(i32 4, i32 %16)
  %18 = bitcast i8* %17 to %struct.kvm*
  %19 = load %struct.kvm*, %struct.kvm** %4, align 8
  %20 = getelementptr inbounds %struct.kvm, %struct.kvm* %19, i32 0, i32 8
  store %struct.kvm* %18, %struct.kvm** %20, align 8
  %21 = load %struct.kvm*, %struct.kvm** %4, align 8
  %22 = getelementptr inbounds %struct.kvm, %struct.kvm* %21, i32 0, i32 8
  %23 = load %struct.kvm*, %struct.kvm** %22, align 8
  %24 = icmp ne %struct.kvm* %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %15
  %26 = load %struct.kvm*, %struct.kvm** %4, align 8
  %27 = call i32 @kfree(%struct.kvm* %26)
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  %30 = call %struct.kvm* @ERR_PTR(i32 %29)
  store %struct.kvm* %30, %struct.kvm** %1, align 8
  br label %131

31:                                               ; preds = %15
  %32 = load %struct.kvm*, %struct.kvm** %4, align 8
  %33 = getelementptr inbounds %struct.kvm, %struct.kvm* %32, i32 0, i32 9
  %34 = call i32 @init_srcu_struct(i32* %33)
  store i32 %34, i32* %2, align 4
  %35 = load i32, i32* %2, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %31
  %38 = load %struct.kvm*, %struct.kvm** %4, align 8
  %39 = getelementptr inbounds %struct.kvm, %struct.kvm* %38, i32 0, i32 8
  %40 = load %struct.kvm*, %struct.kvm** %39, align 8
  %41 = call i32 @kfree(%struct.kvm* %40)
  %42 = load %struct.kvm*, %struct.kvm** %4, align 8
  %43 = call i32 @kfree(%struct.kvm* %42)
  %44 = load i32, i32* %2, align 4
  %45 = call %struct.kvm* @ERR_PTR(i32 %44)
  store %struct.kvm* %45, %struct.kvm** %1, align 8
  br label %131

46:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %83, %46
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* @KVM_NR_BUSES, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %86

51:                                               ; preds = %47
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call i8* @kzalloc(i32 4, i32 %52)
  %54 = bitcast i8* %53 to %struct.kvm*
  %55 = load %struct.kvm*, %struct.kvm** %4, align 8
  %56 = getelementptr inbounds %struct.kvm, %struct.kvm* %55, i32 0, i32 10
  %57 = load %struct.kvm**, %struct.kvm*** %56, align 8
  %58 = load i32, i32* %3, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.kvm*, %struct.kvm** %57, i64 %59
  store %struct.kvm* %54, %struct.kvm** %60, align 8
  %61 = load %struct.kvm*, %struct.kvm** %4, align 8
  %62 = getelementptr inbounds %struct.kvm, %struct.kvm* %61, i32 0, i32 10
  %63 = load %struct.kvm**, %struct.kvm*** %62, align 8
  %64 = load i32, i32* %3, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.kvm*, %struct.kvm** %63, i64 %65
  %67 = load %struct.kvm*, %struct.kvm** %66, align 8
  %68 = icmp ne %struct.kvm* %67, null
  br i1 %68, label %82, label %69

69:                                               ; preds = %51
  %70 = load %struct.kvm*, %struct.kvm** %4, align 8
  %71 = getelementptr inbounds %struct.kvm, %struct.kvm* %70, i32 0, i32 9
  %72 = call i32 @cleanup_srcu_struct(i32* %71)
  %73 = load %struct.kvm*, %struct.kvm** %4, align 8
  %74 = getelementptr inbounds %struct.kvm, %struct.kvm* %73, i32 0, i32 8
  %75 = load %struct.kvm*, %struct.kvm** %74, align 8
  %76 = call i32 @kfree(%struct.kvm* %75)
  %77 = load %struct.kvm*, %struct.kvm** %4, align 8
  %78 = call i32 @kfree(%struct.kvm* %77)
  %79 = load i32, i32* @ENOMEM, align 4
  %80 = sub nsw i32 0, %79
  %81 = call %struct.kvm* @ERR_PTR(i32 %80)
  store %struct.kvm* %81, %struct.kvm** %1, align 8
  br label %131

82:                                               ; preds = %51
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %3, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %3, align 4
  br label %47

86:                                               ; preds = %47
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = load %struct.kvm*, %struct.kvm** %4, align 8
  %91 = getelementptr inbounds %struct.kvm, %struct.kvm* %90, i32 0, i32 7
  store %struct.TYPE_5__* %89, %struct.TYPE_5__** %91, align 8
  %92 = load %struct.kvm*, %struct.kvm** %4, align 8
  %93 = getelementptr inbounds %struct.kvm, %struct.kvm* %92, i32 0, i32 7
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = call i32 @atomic_inc(i32* %95)
  %97 = load %struct.kvm*, %struct.kvm** %4, align 8
  %98 = getelementptr inbounds %struct.kvm, %struct.kvm* %97, i32 0, i32 6
  %99 = call i32 @spin_lock_init(i32* %98)
  %100 = load %struct.kvm*, %struct.kvm** %4, align 8
  %101 = getelementptr inbounds %struct.kvm, %struct.kvm* %100, i32 0, i32 5
  %102 = call i32 @spin_lock_init(i32* %101)
  %103 = load %struct.kvm*, %struct.kvm** %4, align 8
  %104 = call i32 @kvm_eventfd_init(%struct.kvm* %103)
  %105 = load %struct.kvm*, %struct.kvm** %4, align 8
  %106 = getelementptr inbounds %struct.kvm, %struct.kvm* %105, i32 0, i32 4
  %107 = call i32 @mutex_init(i32* %106)
  %108 = load %struct.kvm*, %struct.kvm** %4, align 8
  %109 = getelementptr inbounds %struct.kvm, %struct.kvm* %108, i32 0, i32 3
  %110 = call i32 @mutex_init(i32* %109)
  %111 = load %struct.kvm*, %struct.kvm** %4, align 8
  %112 = getelementptr inbounds %struct.kvm, %struct.kvm* %111, i32 0, i32 2
  %113 = call i32 @mutex_init(i32* %112)
  %114 = load %struct.kvm*, %struct.kvm** %4, align 8
  %115 = getelementptr inbounds %struct.kvm, %struct.kvm* %114, i32 0, i32 1
  %116 = call i32 @atomic_set(i32* %115, i32 1)
  %117 = call i32 @spin_lock(i32* @kvm_lock)
  %118 = load %struct.kvm*, %struct.kvm** %4, align 8
  %119 = getelementptr inbounds %struct.kvm, %struct.kvm* %118, i32 0, i32 0
  %120 = call i32 @list_add(i32* %119, i32* @vm_list)
  %121 = call i32 @spin_unlock(i32* @kvm_lock)
  br label %122

122:                                              ; preds = %86, %9
  %123 = load %struct.kvm*, %struct.kvm** %4, align 8
  store %struct.kvm* %123, %struct.kvm** %1, align 8
  br label %131

124:                                              ; No predecessors!
  %125 = call i32 (...) @hardware_disable_all()
  br label %126

126:                                              ; preds = %124, %14
  %127 = load %struct.kvm*, %struct.kvm** %4, align 8
  %128 = call i32 @kfree(%struct.kvm* %127)
  %129 = load i32, i32* %2, align 4
  %130 = call %struct.kvm* @ERR_PTR(i32 %129)
  store %struct.kvm* %130, %struct.kvm** %1, align 8
  br label %131

131:                                              ; preds = %126, %122, %69, %37, %25
  %132 = load %struct.kvm*, %struct.kvm** %1, align 8
  ret %struct.kvm* %132
}

declare dso_local %struct.kvm* @kvm_arch_create_vm(...) #1

declare dso_local i64 @IS_ERR(%struct.kvm*) #1

declare dso_local i32 @hardware_enable_all(...) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.kvm*) #1

declare dso_local %struct.kvm* @ERR_PTR(i32) #1

declare dso_local i32 @init_srcu_struct(i32*) #1

declare dso_local i32 @cleanup_srcu_struct(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @kvm_eventfd_init(%struct.kvm*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @hardware_disable_all(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
