; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/virt/kvm/extr_kvm_main.c_kvm_vcpu_yield_to.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/virt/kvm/extr_kvm_main.c_kvm_vcpu_yield_to.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.pid = type { i32 }
%struct.task_struct = type { i32 }

@PIDTYPE_PID = common dso_local global i32 0, align 4
@PF_VCPU = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_vcpu_yield_to(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.pid*, align 8
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store %struct.task_struct* null, %struct.task_struct** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = call i32 (...) @rcu_read_lock()
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %9 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.pid* @rcu_dereference(i32 %10)
  store %struct.pid* %11, %struct.pid** %4, align 8
  %12 = load %struct.pid*, %struct.pid** %4, align 8
  %13 = icmp ne %struct.pid* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %16 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @PIDTYPE_PID, align 4
  %19 = call %struct.task_struct* @get_pid_task(i32 %17, i32 %18)
  store %struct.task_struct* %19, %struct.task_struct** %5, align 8
  br label %20

20:                                               ; preds = %14, %1
  %21 = call i32 (...) @rcu_read_unlock()
  %22 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %23 = icmp ne %struct.task_struct* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %2, align 4
  br label %43

26:                                               ; preds = %20
  %27 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %28 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @PF_VCPU, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %26
  %34 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %35 = call i32 @put_task_struct(%struct.task_struct* %34)
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %2, align 4
  br label %43

37:                                               ; preds = %26
  %38 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %39 = call i32 @yield_to(%struct.task_struct* %38, i32 1)
  store i32 %39, i32* %6, align 4
  %40 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %41 = call i32 @put_task_struct(%struct.task_struct* %40)
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %37, %33, %24
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.pid* @rcu_dereference(i32) #1

declare dso_local %struct.task_struct* @get_pid_task(i32, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @put_task_struct(%struct.task_struct*) #1

declare dso_local i32 @yield_to(%struct.task_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
