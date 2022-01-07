; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_helper.c_nf_ct_helper_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_helper.c_nf_ct_helper_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { i32 }
%struct.nf_conn_help = type { i32 }
%struct.nf_conntrack_helper = type { i32 (%struct.nf_conn.0*)* }
%struct.nf_conn.0 = type opaque

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nf_ct_helper_destroy(%struct.nf_conn* %0) #0 {
  %2 = alloca %struct.nf_conn*, align 8
  %3 = alloca %struct.nf_conn_help*, align 8
  %4 = alloca %struct.nf_conntrack_helper*, align 8
  store %struct.nf_conn* %0, %struct.nf_conn** %2, align 8
  %5 = load %struct.nf_conn*, %struct.nf_conn** %2, align 8
  %6 = call %struct.nf_conn_help* @nfct_help(%struct.nf_conn* %5)
  store %struct.nf_conn_help* %6, %struct.nf_conn_help** %3, align 8
  %7 = load %struct.nf_conn_help*, %struct.nf_conn_help** %3, align 8
  %8 = icmp ne %struct.nf_conn_help* %7, null
  br i1 %8, label %9, label %31

9:                                                ; preds = %1
  %10 = call i32 (...) @rcu_read_lock()
  %11 = load %struct.nf_conn_help*, %struct.nf_conn_help** %3, align 8
  %12 = getelementptr inbounds %struct.nf_conn_help, %struct.nf_conn_help* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.nf_conntrack_helper* @rcu_dereference(i32 %13)
  store %struct.nf_conntrack_helper* %14, %struct.nf_conntrack_helper** %4, align 8
  %15 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %4, align 8
  %16 = icmp ne %struct.nf_conntrack_helper* %15, null
  br i1 %16, label %17, label %29

17:                                               ; preds = %9
  %18 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %4, align 8
  %19 = getelementptr inbounds %struct.nf_conntrack_helper, %struct.nf_conntrack_helper* %18, i32 0, i32 0
  %20 = load i32 (%struct.nf_conn.0*)*, i32 (%struct.nf_conn.0*)** %19, align 8
  %21 = icmp ne i32 (%struct.nf_conn.0*)* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %17
  %23 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %4, align 8
  %24 = getelementptr inbounds %struct.nf_conntrack_helper, %struct.nf_conntrack_helper* %23, i32 0, i32 0
  %25 = load i32 (%struct.nf_conn.0*)*, i32 (%struct.nf_conn.0*)** %24, align 8
  %26 = load %struct.nf_conn*, %struct.nf_conn** %2, align 8
  %27 = bitcast %struct.nf_conn* %26 to %struct.nf_conn.0*
  %28 = call i32 %25(%struct.nf_conn.0* %27)
  br label %29

29:                                               ; preds = %22, %17, %9
  %30 = call i32 (...) @rcu_read_unlock()
  br label %31

31:                                               ; preds = %29, %1
  ret void
}

declare dso_local %struct.nf_conn_help* @nfct_help(%struct.nf_conn*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.nf_conntrack_helper* @rcu_dereference(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
