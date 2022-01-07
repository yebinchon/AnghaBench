; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_ecache.c_nf_conntrack_register_notifier.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_ecache.c_nf_conntrack_register_notifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_ct_event_notifier = type { i32 }

@nf_ct_ecache_mutex = common dso_local global i32 0, align 4
@nf_conntrack_event_cb = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nf_conntrack_register_notifier(%struct.nf_ct_event_notifier* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nf_ct_event_notifier*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nf_ct_event_notifier*, align 8
  store %struct.nf_ct_event_notifier* %0, %struct.nf_ct_event_notifier** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = call i32 @mutex_lock(i32* @nf_ct_ecache_mutex)
  %7 = load i32, i32* @nf_conntrack_event_cb, align 4
  %8 = call %struct.nf_ct_event_notifier* @rcu_dereference(i32 %7)
  store %struct.nf_ct_event_notifier* %8, %struct.nf_ct_event_notifier** %5, align 8
  %9 = load %struct.nf_ct_event_notifier*, %struct.nf_ct_event_notifier** %5, align 8
  %10 = icmp ne %struct.nf_ct_event_notifier* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @EBUSY, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %4, align 4
  br label %20

14:                                               ; preds = %1
  %15 = load i32, i32* @nf_conntrack_event_cb, align 4
  %16 = load %struct.nf_ct_event_notifier*, %struct.nf_ct_event_notifier** %3, align 8
  %17 = call i32 @rcu_assign_pointer(i32 %15, %struct.nf_ct_event_notifier* %16)
  %18 = call i32 @mutex_unlock(i32* @nf_ct_ecache_mutex)
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %23

20:                                               ; preds = %11
  %21 = call i32 @mutex_unlock(i32* @nf_ct_ecache_mutex)
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* %2, align 4
  br label %23

23:                                               ; preds = %20, %14
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.nf_ct_event_notifier* @rcu_dereference(i32) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.nf_ct_event_notifier*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
