; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_conntrack_l3proto_ipv4_compat.c_ct_get_first.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_conntrack_l3proto_ipv4_compat.c_ct_get_first.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hlist_nulls_node = type { i32 }
%struct.seq_file = type { %struct.ct_iter_state* }
%struct.ct_iter_state = type { i64 }
%struct.net = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hlist_nulls_node* (%struct.seq_file*)* @ct_get_first to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hlist_nulls_node* @ct_get_first(%struct.seq_file* %0) #0 {
  %2 = alloca %struct.hlist_nulls_node*, align 8
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.ct_iter_state*, align 8
  %6 = alloca %struct.hlist_nulls_node*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  %7 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %8 = call %struct.net* @seq_file_net(%struct.seq_file* %7)
  store %struct.net* %8, %struct.net** %4, align 8
  %9 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %10 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %9, i32 0, i32 0
  %11 = load %struct.ct_iter_state*, %struct.ct_iter_state** %10, align 8
  store %struct.ct_iter_state* %11, %struct.ct_iter_state** %5, align 8
  %12 = load %struct.ct_iter_state*, %struct.ct_iter_state** %5, align 8
  %13 = getelementptr inbounds %struct.ct_iter_state, %struct.ct_iter_state* %12, i32 0, i32 0
  store i64 0, i64* %13, align 8
  br label %14

14:                                               ; preds = %41, %1
  %15 = load %struct.ct_iter_state*, %struct.ct_iter_state** %5, align 8
  %16 = getelementptr inbounds %struct.ct_iter_state, %struct.ct_iter_state* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.net*, %struct.net** %4, align 8
  %19 = getelementptr inbounds %struct.net, %struct.net* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ult i64 %17, %21
  br i1 %22, label %23, label %46

23:                                               ; preds = %14
  %24 = load %struct.net*, %struct.net** %4, align 8
  %25 = getelementptr inbounds %struct.net, %struct.net* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = load %struct.ct_iter_state*, %struct.ct_iter_state** %5, align 8
  %29 = getelementptr inbounds %struct.ct_iter_state, %struct.ct_iter_state* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.hlist_nulls_node* @rcu_dereference(i32 %33)
  store %struct.hlist_nulls_node* %34, %struct.hlist_nulls_node** %6, align 8
  %35 = load %struct.hlist_nulls_node*, %struct.hlist_nulls_node** %6, align 8
  %36 = call i32 @is_a_nulls(%struct.hlist_nulls_node* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %23
  %39 = load %struct.hlist_nulls_node*, %struct.hlist_nulls_node** %6, align 8
  store %struct.hlist_nulls_node* %39, %struct.hlist_nulls_node** %2, align 8
  br label %47

40:                                               ; preds = %23
  br label %41

41:                                               ; preds = %40
  %42 = load %struct.ct_iter_state*, %struct.ct_iter_state** %5, align 8
  %43 = getelementptr inbounds %struct.ct_iter_state, %struct.ct_iter_state* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %43, align 8
  br label %14

46:                                               ; preds = %14
  store %struct.hlist_nulls_node* null, %struct.hlist_nulls_node** %2, align 8
  br label %47

47:                                               ; preds = %46, %38
  %48 = load %struct.hlist_nulls_node*, %struct.hlist_nulls_node** %2, align 8
  ret %struct.hlist_nulls_node* %48
}

declare dso_local %struct.net* @seq_file_net(%struct.seq_file*) #1

declare dso_local %struct.hlist_nulls_node* @rcu_dereference(i32) #1

declare dso_local i32 @is_a_nulls(%struct.hlist_nulls_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
