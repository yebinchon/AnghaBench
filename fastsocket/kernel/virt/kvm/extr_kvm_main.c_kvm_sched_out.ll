; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/virt/kvm/extr_kvm_main.c_kvm_sched_out.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/virt/kvm/extr_kvm_main.c_kvm_sched_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.preempt_notifier = type { i32 }
%struct.task_struct = type { i32 }
%struct.kvm_vcpu = type { i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@TASK_RUNNING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.preempt_notifier*, %struct.task_struct*)* @kvm_sched_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvm_sched_out(%struct.preempt_notifier* %0, %struct.task_struct* %1) #0 {
  %3 = alloca %struct.preempt_notifier*, align 8
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca %struct.kvm_vcpu*, align 8
  store %struct.preempt_notifier* %0, %struct.preempt_notifier** %3, align 8
  store %struct.task_struct* %1, %struct.task_struct** %4, align 8
  %6 = load %struct.preempt_notifier*, %struct.preempt_notifier** %3, align 8
  %7 = call %struct.kvm_vcpu* @preempt_notifier_to_vcpu(%struct.preempt_notifier* %6)
  store %struct.kvm_vcpu* %7, %struct.kvm_vcpu** %5, align 8
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @TASK_RUNNING, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %15 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %14, i32 0, i32 0
  store i32 1, i32* %15, align 4
  br label %16

16:                                               ; preds = %13, %2
  %17 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %18 = call i32 @kvm_arch_vcpu_put(%struct.kvm_vcpu* %17)
  ret void
}

declare dso_local %struct.kvm_vcpu* @preempt_notifier_to_vcpu(%struct.preempt_notifier*) #1

declare dso_local i32 @kvm_arch_vcpu_put(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
