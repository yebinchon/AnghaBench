; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_conntrack_l3proto_ipv4_compat.c_ct_get_next.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_conntrack_l3proto_ipv4_compat.c_ct_get_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.ct_iter_state* }
%struct.ct_iter_state = type { i64 }
%struct.hlist_nulls_node = type { i32 }
%struct.net = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hlist_nulls_node* (%struct.seq_file*, %struct.hlist_nulls_node*)* @ct_get_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hlist_nulls_node* @ct_get_next(%struct.seq_file* %0, %struct.hlist_nulls_node* %1) #0 {
  %3 = alloca %struct.hlist_nulls_node*, align 8
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca %struct.hlist_nulls_node*, align 8
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.ct_iter_state*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store %struct.hlist_nulls_node* %1, %struct.hlist_nulls_node** %5, align 8
  %8 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %9 = call %struct.net* @seq_file_net(%struct.seq_file* %8)
  store %struct.net* %9, %struct.net** %6, align 8
  %10 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %11 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %10, i32 0, i32 0
  %12 = load %struct.ct_iter_state*, %struct.ct_iter_state** %11, align 8
  store %struct.ct_iter_state* %12, %struct.ct_iter_state** %7, align 8
  %13 = load %struct.hlist_nulls_node*, %struct.hlist_nulls_node** %5, align 8
  %14 = getelementptr inbounds %struct.hlist_nulls_node, %struct.hlist_nulls_node* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.hlist_nulls_node* @rcu_dereference(i32 %15)
  store %struct.hlist_nulls_node* %16, %struct.hlist_nulls_node** %5, align 8
  br label %17

17:                                               ; preds = %43, %2
  %18 = load %struct.hlist_nulls_node*, %struct.hlist_nulls_node** %5, align 8
  %19 = call i64 @is_a_nulls(%struct.hlist_nulls_node* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %55

21:                                               ; preds = %17
  %22 = load %struct.hlist_nulls_node*, %struct.hlist_nulls_node** %5, align 8
  %23 = call i64 @get_nulls_value(%struct.hlist_nulls_node* %22)
  %24 = load %struct.ct_iter_state*, %struct.ct_iter_state** %7, align 8
  %25 = getelementptr inbounds %struct.ct_iter_state, %struct.ct_iter_state* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %23, %26
  %28 = zext i1 %27 to i32
  %29 = call i64 @likely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %21
  %32 = load %struct.ct_iter_state*, %struct.ct_iter_state** %7, align 8
  %33 = getelementptr inbounds %struct.ct_iter_state, %struct.ct_iter_state* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, 1
  store i64 %35, i64* %33, align 8
  %36 = load %struct.net*, %struct.net** %6, align 8
  %37 = getelementptr inbounds %struct.net, %struct.net* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp sge i64 %35, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %31
  store %struct.hlist_nulls_node* null, %struct.hlist_nulls_node** %3, align 8
  br label %57

42:                                               ; preds = %31
  br label %43

43:                                               ; preds = %42, %21
  %44 = load %struct.net*, %struct.net** %6, align 8
  %45 = getelementptr inbounds %struct.net, %struct.net* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = load %struct.ct_iter_state*, %struct.ct_iter_state** %7, align 8
  %49 = getelementptr inbounds %struct.ct_iter_state, %struct.ct_iter_state* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call %struct.hlist_nulls_node* @rcu_dereference(i32 %53)
  store %struct.hlist_nulls_node* %54, %struct.hlist_nulls_node** %5, align 8
  br label %17

55:                                               ; preds = %17
  %56 = load %struct.hlist_nulls_node*, %struct.hlist_nulls_node** %5, align 8
  store %struct.hlist_nulls_node* %56, %struct.hlist_nulls_node** %3, align 8
  br label %57

57:                                               ; preds = %55, %41
  %58 = load %struct.hlist_nulls_node*, %struct.hlist_nulls_node** %3, align 8
  ret %struct.hlist_nulls_node* %58
}

declare dso_local %struct.net* @seq_file_net(%struct.seq_file*) #1

declare dso_local %struct.hlist_nulls_node* @rcu_dereference(i32) #1

declare dso_local i64 @is_a_nulls(%struct.hlist_nulls_node*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @get_nulls_value(%struct.hlist_nulls_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
