; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/virt/kvm/extr_kvm_main.c_vcpu_load.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/virt/kvm/extr_kvm_main.c_vcpu_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.pid* }
%struct.pid = type { i32 }
%struct.kvm_vcpu = type { i32, %struct.pid*, i32 }

@current = common dso_local global %struct.TYPE_5__* null, align 8
@PIDTYPE_PID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vcpu_load(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.pid*, align 8
  %5 = alloca %struct.pid*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %6 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %7 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %6, i32 0, i32 2
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %10 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %9, i32 0, i32 1
  %11 = load %struct.pid*, %struct.pid** %10, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = load i64, i64* @PIDTYPE_PID, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.pid*, %struct.pid** %17, align 8
  %19 = icmp ne %struct.pid* %11, %18
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %38

23:                                               ; preds = %1
  %24 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %25 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %24, i32 0, i32 1
  %26 = load %struct.pid*, %struct.pid** %25, align 8
  store %struct.pid* %26, %struct.pid** %4, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %28 = load i64, i64* @PIDTYPE_PID, align 8
  %29 = call %struct.pid* @get_task_pid(%struct.TYPE_5__* %27, i64 %28)
  store %struct.pid* %29, %struct.pid** %5, align 8
  %30 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %31 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %30, i32 0, i32 1
  %32 = load %struct.pid*, %struct.pid** %31, align 8
  %33 = load %struct.pid*, %struct.pid** %5, align 8
  %34 = call i32 @rcu_assign_pointer(%struct.pid* %32, %struct.pid* %33)
  %35 = call i32 (...) @synchronize_rcu()
  %36 = load %struct.pid*, %struct.pid** %4, align 8
  %37 = call i32 @put_pid(%struct.pid* %36)
  br label %38

38:                                               ; preds = %23, %1
  %39 = call i32 (...) @get_cpu()
  store i32 %39, i32* %3, align 4
  %40 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %41 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %40, i32 0, i32 0
  %42 = call i32 @preempt_notifier_register(i32* %41)
  %43 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @kvm_arch_vcpu_load(%struct.kvm_vcpu* %43, i32 %44)
  %46 = call i32 (...) @put_cpu()
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.pid* @get_task_pid(%struct.TYPE_5__*, i64) #1

declare dso_local i32 @rcu_assign_pointer(%struct.pid*, %struct.pid*) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @put_pid(%struct.pid*) #1

declare dso_local i32 @get_cpu(...) #1

declare dso_local i32 @preempt_notifier_register(i32*) #1

declare dso_local i32 @kvm_arch_vcpu_load(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @put_cpu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
