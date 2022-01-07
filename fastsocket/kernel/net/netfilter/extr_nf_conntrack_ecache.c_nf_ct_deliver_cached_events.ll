; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_ecache.c_nf_ct_deliver_cached_events.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_ecache.c_nf_ct_deliver_cached_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { i32 }
%struct.nf_ct_event_notifier = type { i32 (i64, %struct.nf_ct_event*)* }
%struct.nf_ct_event = type opaque
%struct.nf_conntrack_ecache = type { i64, i32 }
%struct.nf_ct_event.0 = type { i32, i32, %struct.nf_conn* }

@nf_conntrack_event_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nf_ct_deliver_cached_events(%struct.nf_conn* %0) #0 {
  %2 = alloca %struct.nf_conn*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.nf_ct_event_notifier*, align 8
  %5 = alloca %struct.nf_conntrack_ecache*, align 8
  %6 = alloca %struct.nf_ct_event.0, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.nf_conn* %0, %struct.nf_conn** %2, align 8
  %9 = call i32 (...) @rcu_read_lock()
  %10 = load i32, i32* @nf_conntrack_event_cb, align 4
  %11 = call %struct.nf_ct_event_notifier* @rcu_dereference(i32 %10)
  store %struct.nf_ct_event_notifier* %11, %struct.nf_ct_event_notifier** %4, align 8
  %12 = load %struct.nf_ct_event_notifier*, %struct.nf_ct_event_notifier** %4, align 8
  %13 = icmp eq %struct.nf_ct_event_notifier* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %86

15:                                               ; preds = %1
  %16 = load %struct.nf_conn*, %struct.nf_conn** %2, align 8
  %17 = call %struct.nf_conntrack_ecache* @nf_ct_ecache_find(%struct.nf_conn* %16)
  store %struct.nf_conntrack_ecache* %17, %struct.nf_conntrack_ecache** %5, align 8
  %18 = load %struct.nf_conntrack_ecache*, %struct.nf_conntrack_ecache** %5, align 8
  %19 = icmp eq %struct.nf_conntrack_ecache* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %86

21:                                               ; preds = %15
  %22 = load %struct.nf_conntrack_ecache*, %struct.nf_conntrack_ecache** %5, align 8
  %23 = getelementptr inbounds %struct.nf_conntrack_ecache, %struct.nf_conntrack_ecache* %22, i32 0, i32 1
  %24 = call i64 @xchg(i32* %23, i32 0)
  store i64 %24, i64* %3, align 8
  %25 = load %struct.nf_conn*, %struct.nf_conn** %2, align 8
  %26 = call i64 @nf_ct_is_confirmed(%struct.nf_conn* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %85

28:                                               ; preds = %21
  %29 = load %struct.nf_conn*, %struct.nf_conn** %2, align 8
  %30 = call i32 @nf_ct_is_dying(%struct.nf_conn* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %85, label %32

32:                                               ; preds = %28
  %33 = load i64, i64* %3, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %85

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.nf_ct_event.0, %struct.nf_ct_event.0* %6, i32 0, i32 0
  store i32 0, i32* %36, align 8
  %37 = getelementptr inbounds %struct.nf_ct_event.0, %struct.nf_ct_event.0* %6, i32 0, i32 1
  store i32 0, i32* %37, align 4
  %38 = getelementptr inbounds %struct.nf_ct_event.0, %struct.nf_ct_event.0* %6, i32 0, i32 2
  %39 = load %struct.nf_conn*, %struct.nf_conn** %2, align 8
  store %struct.nf_conn* %39, %struct.nf_conn** %38, align 8
  %40 = load %struct.nf_conntrack_ecache*, %struct.nf_conntrack_ecache** %5, align 8
  %41 = getelementptr inbounds %struct.nf_conntrack_ecache, %struct.nf_conntrack_ecache* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %8, align 8
  %43 = load %struct.nf_ct_event_notifier*, %struct.nf_ct_event_notifier** %4, align 8
  %44 = getelementptr inbounds %struct.nf_ct_event_notifier, %struct.nf_ct_event_notifier* %43, i32 0, i32 0
  %45 = load i32 (i64, %struct.nf_ct_event*)*, i32 (i64, %struct.nf_ct_event*)** %44, align 8
  %46 = load i64, i64* %3, align 8
  %47 = load i64, i64* %8, align 8
  %48 = or i64 %46, %47
  %49 = bitcast %struct.nf_ct_event.0* %6 to %struct.nf_ct_event*
  %50 = call i32 %45(i64 %48, %struct.nf_ct_event* %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %35
  %54 = load i64, i64* %8, align 8
  %55 = icmp ne i64 %54, 0
  br label %56

56:                                               ; preds = %53, %35
  %57 = phi i1 [ true, %35 ], [ %55, %53 ]
  %58 = zext i1 %57 to i32
  %59 = call i64 @unlikely(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %84

61:                                               ; preds = %56
  %62 = load %struct.nf_conn*, %struct.nf_conn** %2, align 8
  %63 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %62, i32 0, i32 0
  %64 = call i32 @spin_lock_bh(i32* %63)
  %65 = load i32, i32* %7, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %61
  %68 = load i64, i64* %3, align 8
  %69 = load %struct.nf_conntrack_ecache*, %struct.nf_conntrack_ecache** %5, align 8
  %70 = getelementptr inbounds %struct.nf_conntrack_ecache, %struct.nf_conntrack_ecache* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = or i64 %71, %68
  store i64 %72, i64* %70, align 8
  br label %80

73:                                               ; preds = %61
  %74 = load i64, i64* %8, align 8
  %75 = xor i64 %74, -1
  %76 = load %struct.nf_conntrack_ecache*, %struct.nf_conntrack_ecache** %5, align 8
  %77 = getelementptr inbounds %struct.nf_conntrack_ecache, %struct.nf_conntrack_ecache* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = and i64 %78, %75
  store i64 %79, i64* %77, align 8
  br label %80

80:                                               ; preds = %73, %67
  %81 = load %struct.nf_conn*, %struct.nf_conn** %2, align 8
  %82 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %81, i32 0, i32 0
  %83 = call i32 @spin_unlock_bh(i32* %82)
  br label %84

84:                                               ; preds = %80, %56
  br label %85

85:                                               ; preds = %84, %32, %28, %21
  br label %86

86:                                               ; preds = %85, %20, %14
  %87 = call i32 (...) @rcu_read_unlock()
  ret void
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.nf_ct_event_notifier* @rcu_dereference(i32) #1

declare dso_local %struct.nf_conntrack_ecache* @nf_ct_ecache_find(%struct.nf_conn*) #1

declare dso_local i64 @xchg(i32*, i32) #1

declare dso_local i64 @nf_ct_is_confirmed(%struct.nf_conn*) #1

declare dso_local i32 @nf_ct_is_dying(%struct.nf_conn*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
