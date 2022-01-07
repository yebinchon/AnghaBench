; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_conntrack_l3proto_ipv4_compat.c_ct_expect_get_next.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_conntrack_l3proto_ipv4_compat.c_ct_expect_get_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.ct_expect_iter_state* }
%struct.ct_expect_iter_state = type { i64 }
%struct.hlist_node = type { i32 }
%struct.net = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@nf_ct_expect_hsize = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hlist_node* (%struct.seq_file*, %struct.hlist_node*)* @ct_expect_get_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hlist_node* @ct_expect_get_next(%struct.seq_file* %0, %struct.hlist_node* %1) #0 {
  %3 = alloca %struct.hlist_node*, align 8
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca %struct.hlist_node*, align 8
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.ct_expect_iter_state*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store %struct.hlist_node* %1, %struct.hlist_node** %5, align 8
  %8 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %9 = call %struct.net* @seq_file_net(%struct.seq_file* %8)
  store %struct.net* %9, %struct.net** %6, align 8
  %10 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %11 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %10, i32 0, i32 0
  %12 = load %struct.ct_expect_iter_state*, %struct.ct_expect_iter_state** %11, align 8
  store %struct.ct_expect_iter_state* %12, %struct.ct_expect_iter_state** %7, align 8
  %13 = load %struct.hlist_node*, %struct.hlist_node** %5, align 8
  %14 = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.hlist_node* @rcu_dereference(i32 %15)
  store %struct.hlist_node* %16, %struct.hlist_node** %5, align 8
  br label %17

17:                                               ; preds = %28, %2
  %18 = load %struct.hlist_node*, %struct.hlist_node** %5, align 8
  %19 = icmp eq %struct.hlist_node* %18, null
  br i1 %19, label %20, label %40

20:                                               ; preds = %17
  %21 = load %struct.ct_expect_iter_state*, %struct.ct_expect_iter_state** %7, align 8
  %22 = getelementptr inbounds %struct.ct_expect_iter_state, %struct.ct_expect_iter_state* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, 1
  store i64 %24, i64* %22, align 8
  %25 = load i64, i64* @nf_ct_expect_hsize, align 8
  %26 = icmp sge i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  store %struct.hlist_node* null, %struct.hlist_node** %3, align 8
  br label %42

28:                                               ; preds = %20
  %29 = load %struct.net*, %struct.net** %6, align 8
  %30 = getelementptr inbounds %struct.net, %struct.net* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = load %struct.ct_expect_iter_state*, %struct.ct_expect_iter_state** %7, align 8
  %34 = getelementptr inbounds %struct.ct_expect_iter_state, %struct.ct_expect_iter_state* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.hlist_node* @rcu_dereference(i32 %38)
  store %struct.hlist_node* %39, %struct.hlist_node** %5, align 8
  br label %17

40:                                               ; preds = %17
  %41 = load %struct.hlist_node*, %struct.hlist_node** %5, align 8
  store %struct.hlist_node* %41, %struct.hlist_node** %3, align 8
  br label %42

42:                                               ; preds = %40, %27
  %43 = load %struct.hlist_node*, %struct.hlist_node** %3, align 8
  ret %struct.hlist_node* %43
}

declare dso_local %struct.net* @seq_file_net(%struct.seq_file*) #1

declare dso_local %struct.hlist_node* @rcu_dereference(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
