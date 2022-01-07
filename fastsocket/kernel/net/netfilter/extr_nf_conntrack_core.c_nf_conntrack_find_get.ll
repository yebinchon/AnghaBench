; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_core.c_nf_conntrack_find_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_core.c_nf_conntrack_find_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conntrack_tuple_hash = type { i32 }
%struct.net = type { i32 }
%struct.nf_conntrack_tuple = type { i32 }
%struct.nf_conn = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nf_conntrack_tuple_hash* @nf_conntrack_find_get(%struct.net* %0, %struct.nf_conntrack_tuple* %1) #0 {
  %3 = alloca %struct.net*, align 8
  %4 = alloca %struct.nf_conntrack_tuple*, align 8
  %5 = alloca %struct.nf_conntrack_tuple_hash*, align 8
  %6 = alloca %struct.nf_conn*, align 8
  store %struct.net* %0, %struct.net** %3, align 8
  store %struct.nf_conntrack_tuple* %1, %struct.nf_conntrack_tuple** %4, align 8
  %7 = call i32 (...) @rcu_read_lock()
  br label %8

8:                                                ; preds = %43, %2
  %9 = load %struct.net*, %struct.net** %3, align 8
  %10 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %4, align 8
  %11 = call %struct.nf_conntrack_tuple_hash* @__nf_conntrack_find(%struct.net* %9, %struct.nf_conntrack_tuple* %10)
  store %struct.nf_conntrack_tuple_hash* %11, %struct.nf_conntrack_tuple_hash** %5, align 8
  %12 = load %struct.nf_conntrack_tuple_hash*, %struct.nf_conntrack_tuple_hash** %5, align 8
  %13 = icmp ne %struct.nf_conntrack_tuple_hash* %12, null
  br i1 %13, label %14, label %48

14:                                               ; preds = %8
  %15 = load %struct.nf_conntrack_tuple_hash*, %struct.nf_conntrack_tuple_hash** %5, align 8
  %16 = call %struct.nf_conn* @nf_ct_tuplehash_to_ctrack(%struct.nf_conntrack_tuple_hash* %15)
  store %struct.nf_conn* %16, %struct.nf_conn** %6, align 8
  %17 = load %struct.nf_conn*, %struct.nf_conn** %6, align 8
  %18 = call i64 @nf_ct_is_dying(%struct.nf_conn* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %14
  %21 = load %struct.nf_conn*, %struct.nf_conn** %6, align 8
  %22 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call i32 @atomic_inc_not_zero(i32* %23)
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  br label %27

27:                                               ; preds = %20, %14
  %28 = phi i1 [ true, %14 ], [ %26, %20 ]
  %29 = zext i1 %28 to i32
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store %struct.nf_conntrack_tuple_hash* null, %struct.nf_conntrack_tuple_hash** %5, align 8
  br label %47

33:                                               ; preds = %27
  %34 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %4, align 8
  %35 = load %struct.nf_conntrack_tuple_hash*, %struct.nf_conntrack_tuple_hash** %5, align 8
  %36 = getelementptr inbounds %struct.nf_conntrack_tuple_hash, %struct.nf_conntrack_tuple_hash* %35, i32 0, i32 0
  %37 = call i32 @nf_ct_tuple_equal(%struct.nf_conntrack_tuple* %34, i32* %36)
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = call i64 @unlikely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %33
  %44 = load %struct.nf_conn*, %struct.nf_conn** %6, align 8
  %45 = call i32 @nf_ct_put(%struct.nf_conn* %44)
  br label %8

46:                                               ; preds = %33
  br label %47

47:                                               ; preds = %46, %32
  br label %48

48:                                               ; preds = %47, %8
  %49 = call i32 (...) @rcu_read_unlock()
  %50 = load %struct.nf_conntrack_tuple_hash*, %struct.nf_conntrack_tuple_hash** %5, align 8
  ret %struct.nf_conntrack_tuple_hash* %50
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.nf_conntrack_tuple_hash* @__nf_conntrack_find(%struct.net*, %struct.nf_conntrack_tuple*) #1

declare dso_local %struct.nf_conn* @nf_ct_tuplehash_to_ctrack(%struct.nf_conntrack_tuple_hash*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @nf_ct_is_dying(%struct.nf_conn*) #1

declare dso_local i32 @atomic_inc_not_zero(i32*) #1

declare dso_local i32 @nf_ct_tuple_equal(%struct.nf_conntrack_tuple*, i32*) #1

declare dso_local i32 @nf_ct_put(%struct.nf_conn*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
