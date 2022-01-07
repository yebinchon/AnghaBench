; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_ecache.c_nf_conntrack_unregister_notifier.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_ecache.c_nf_conntrack_unregister_notifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_ct_event_notifier = type { i32 }

@nf_ct_ecache_mutex = common dso_local global i32 0, align 4
@nf_conntrack_event_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nf_conntrack_unregister_notifier(%struct.nf_ct_event_notifier* %0) #0 {
  %2 = alloca %struct.nf_ct_event_notifier*, align 8
  %3 = alloca %struct.nf_ct_event_notifier*, align 8
  store %struct.nf_ct_event_notifier* %0, %struct.nf_ct_event_notifier** %2, align 8
  %4 = call i32 @mutex_lock(i32* @nf_ct_ecache_mutex)
  %5 = load i32, i32* @nf_conntrack_event_cb, align 4
  %6 = call %struct.nf_ct_event_notifier* @rcu_dereference(i32 %5)
  store %struct.nf_ct_event_notifier* %6, %struct.nf_ct_event_notifier** %3, align 8
  %7 = load %struct.nf_ct_event_notifier*, %struct.nf_ct_event_notifier** %3, align 8
  %8 = load %struct.nf_ct_event_notifier*, %struct.nf_ct_event_notifier** %2, align 8
  %9 = icmp ne %struct.nf_ct_event_notifier* %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @BUG_ON(i32 %10)
  %12 = load i32, i32* @nf_conntrack_event_cb, align 4
  %13 = call i32 @rcu_assign_pointer(i32 %12, i32* null)
  %14 = call i32 @mutex_unlock(i32* @nf_ct_ecache_mutex)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.nf_ct_event_notifier* @rcu_dereference(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @rcu_assign_pointer(i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
