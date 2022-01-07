; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_conntrack_l3proto_ipv4_compat.c_ct_expect_get_first.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_conntrack_l3proto_ipv4_compat.c_ct_expect_get_first.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hlist_node = type { i32 }
%struct.seq_file = type { %struct.ct_expect_iter_state* }
%struct.ct_expect_iter_state = type { i64 }
%struct.net = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@nf_ct_expect_hsize = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hlist_node* (%struct.seq_file*)* @ct_expect_get_first to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hlist_node* @ct_expect_get_first(%struct.seq_file* %0) #0 {
  %2 = alloca %struct.hlist_node*, align 8
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.ct_expect_iter_state*, align 8
  %6 = alloca %struct.hlist_node*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  %7 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %8 = call %struct.net* @seq_file_net(%struct.seq_file* %7)
  store %struct.net* %8, %struct.net** %4, align 8
  %9 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %10 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %9, i32 0, i32 0
  %11 = load %struct.ct_expect_iter_state*, %struct.ct_expect_iter_state** %10, align 8
  store %struct.ct_expect_iter_state* %11, %struct.ct_expect_iter_state** %5, align 8
  %12 = load %struct.ct_expect_iter_state*, %struct.ct_expect_iter_state** %5, align 8
  %13 = getelementptr inbounds %struct.ct_expect_iter_state, %struct.ct_expect_iter_state* %12, i32 0, i32 0
  store i64 0, i64* %13, align 8
  br label %14

14:                                               ; preds = %37, %1
  %15 = load %struct.ct_expect_iter_state*, %struct.ct_expect_iter_state** %5, align 8
  %16 = getelementptr inbounds %struct.ct_expect_iter_state, %struct.ct_expect_iter_state* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @nf_ct_expect_hsize, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %42

20:                                               ; preds = %14
  %21 = load %struct.net*, %struct.net** %4, align 8
  %22 = getelementptr inbounds %struct.net, %struct.net* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = load %struct.ct_expect_iter_state*, %struct.ct_expect_iter_state** %5, align 8
  %26 = getelementptr inbounds %struct.ct_expect_iter_state, %struct.ct_expect_iter_state* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.hlist_node* @rcu_dereference(i32 %30)
  store %struct.hlist_node* %31, %struct.hlist_node** %6, align 8
  %32 = load %struct.hlist_node*, %struct.hlist_node** %6, align 8
  %33 = icmp ne %struct.hlist_node* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %20
  %35 = load %struct.hlist_node*, %struct.hlist_node** %6, align 8
  store %struct.hlist_node* %35, %struct.hlist_node** %2, align 8
  br label %43

36:                                               ; preds = %20
  br label %37

37:                                               ; preds = %36
  %38 = load %struct.ct_expect_iter_state*, %struct.ct_expect_iter_state** %5, align 8
  %39 = getelementptr inbounds %struct.ct_expect_iter_state, %struct.ct_expect_iter_state* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %39, align 8
  br label %14

42:                                               ; preds = %14
  store %struct.hlist_node* null, %struct.hlist_node** %2, align 8
  br label %43

43:                                               ; preds = %42, %34
  %44 = load %struct.hlist_node*, %struct.hlist_node** %2, align 8
  ret %struct.hlist_node* %44
}

declare dso_local %struct.net* @seq_file_net(%struct.seq_file*) #1

declare dso_local %struct.hlist_node* @rcu_dereference(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
