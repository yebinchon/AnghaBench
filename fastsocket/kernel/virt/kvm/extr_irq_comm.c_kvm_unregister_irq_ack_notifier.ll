; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/virt/kvm/extr_irq_comm.c_kvm_unregister_irq_ack_notifier.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/virt/kvm/extr_irq_comm.c_kvm_unregister_irq_ack_notifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }
%struct.kvm_irq_ack_notifier = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_unregister_irq_ack_notifier(%struct.kvm* %0, %struct.kvm_irq_ack_notifier* %1) #0 {
  %3 = alloca %struct.kvm*, align 8
  %4 = alloca %struct.kvm_irq_ack_notifier*, align 8
  store %struct.kvm* %0, %struct.kvm** %3, align 8
  store %struct.kvm_irq_ack_notifier* %1, %struct.kvm_irq_ack_notifier** %4, align 8
  %5 = load %struct.kvm*, %struct.kvm** %3, align 8
  %6 = getelementptr inbounds %struct.kvm, %struct.kvm* %5, i32 0, i32 0
  %7 = call i32 @mutex_lock(i32* %6)
  %8 = load %struct.kvm_irq_ack_notifier*, %struct.kvm_irq_ack_notifier** %4, align 8
  %9 = getelementptr inbounds %struct.kvm_irq_ack_notifier, %struct.kvm_irq_ack_notifier* %8, i32 0, i32 0
  %10 = call i32 @hlist_del_init_rcu(i32* %9)
  %11 = load %struct.kvm*, %struct.kvm** %3, align 8
  %12 = getelementptr inbounds %struct.kvm, %struct.kvm* %11, i32 0, i32 0
  %13 = call i32 @mutex_unlock(i32* %12)
  %14 = call i32 (...) @synchronize_rcu()
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @hlist_del_init_rcu(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @synchronize_rcu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
