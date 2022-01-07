; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_expect.c_nf_ct_expect_insert.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_expect.c_nf_ct_expect_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conntrack_expect = type { i64, i32, %struct.TYPE_7__, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.nf_conn_help = type { %struct.TYPE_6__*, i32*, i32 }
%struct.TYPE_6__ = type { %struct.nf_conntrack_expect_policy* }
%struct.nf_conntrack_expect_policy = type { i32 }
%struct.net = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32* }

@nf_ct_expectation_timed_out = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@expect_create = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nf_conntrack_expect*)* @nf_ct_expect_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nf_ct_expect_insert(%struct.nf_conntrack_expect* %0) #0 {
  %2 = alloca %struct.nf_conntrack_expect*, align 8
  %3 = alloca %struct.nf_conn_help*, align 8
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.nf_conntrack_expect_policy*, align 8
  %6 = alloca i32, align 4
  store %struct.nf_conntrack_expect* %0, %struct.nf_conntrack_expect** %2, align 8
  %7 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %2, align 8
  %8 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %7, i32 0, i32 6
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.nf_conn_help* @nfct_help(i32 %9)
  store %struct.nf_conn_help* %10, %struct.nf_conn_help** %3, align 8
  %11 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %2, align 8
  %12 = call %struct.net* @nf_ct_exp_net(%struct.nf_conntrack_expect* %11)
  store %struct.net* %12, %struct.net** %4, align 8
  %13 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %2, align 8
  %14 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %13, i32 0, i32 5
  %15 = call i32 @nf_ct_expect_dst_hash(i32* %14)
  store i32 %15, i32* %6, align 4
  %16 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %2, align 8
  %17 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %16, i32 0, i32 1
  %18 = call i32 @atomic_inc(i32* %17)
  %19 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %2, align 8
  %20 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %19, i32 0, i32 4
  %21 = load %struct.nf_conn_help*, %struct.nf_conn_help** %3, align 8
  %22 = getelementptr inbounds %struct.nf_conn_help, %struct.nf_conn_help* %21, i32 0, i32 2
  %23 = call i32 @hlist_add_head(i32* %20, i32* %22)
  %24 = load %struct.nf_conn_help*, %struct.nf_conn_help** %3, align 8
  %25 = getelementptr inbounds %struct.nf_conn_help, %struct.nf_conn_help* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %2, align 8
  %28 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds i32, i32* %26, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 4
  %33 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %2, align 8
  %34 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %33, i32 0, i32 3
  %35 = load %struct.net*, %struct.net** %4, align 8
  %36 = getelementptr inbounds %struct.net, %struct.net* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = call i32 @hlist_add_head_rcu(i32* %34, i32* %41)
  %43 = load %struct.net*, %struct.net** %4, align 8
  %44 = getelementptr inbounds %struct.net, %struct.net* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 8
  %48 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %2, align 8
  %49 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %48, i32 0, i32 2
  %50 = load i32, i32* @nf_ct_expectation_timed_out, align 4
  %51 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %2, align 8
  %52 = ptrtoint %struct.nf_conntrack_expect* %51 to i64
  %53 = call i32 @setup_timer(%struct.TYPE_7__* %49, i32 %50, i64 %52)
  %54 = load %struct.nf_conn_help*, %struct.nf_conn_help** %3, align 8
  %55 = getelementptr inbounds %struct.nf_conn_help, %struct.nf_conn_help* %54, i32 0, i32 0
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load %struct.nf_conntrack_expect_policy*, %struct.nf_conntrack_expect_policy** %57, align 8
  %59 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %2, align 8
  %60 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds %struct.nf_conntrack_expect_policy, %struct.nf_conntrack_expect_policy* %58, i64 %61
  store %struct.nf_conntrack_expect_policy* %62, %struct.nf_conntrack_expect_policy** %5, align 8
  %63 = load i64, i64* @jiffies, align 8
  %64 = load %struct.nf_conntrack_expect_policy*, %struct.nf_conntrack_expect_policy** %5, align 8
  %65 = getelementptr inbounds %struct.nf_conntrack_expect_policy, %struct.nf_conntrack_expect_policy* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @HZ, align 4
  %68 = mul nsw i32 %66, %67
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %63, %69
  %71 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %2, align 8
  %72 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  store i64 %70, i64* %73, align 8
  %74 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %2, align 8
  %75 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %74, i32 0, i32 2
  %76 = call i32 @add_timer(%struct.TYPE_7__* %75)
  %77 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %2, align 8
  %78 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %77, i32 0, i32 1
  %79 = call i32 @atomic_inc(i32* %78)
  %80 = load %struct.net*, %struct.net** %4, align 8
  %81 = load i32, i32* @expect_create, align 4
  %82 = call i32 @NF_CT_STAT_INC(%struct.net* %80, i32 %81)
  ret void
}

declare dso_local %struct.nf_conn_help* @nfct_help(i32) #1

declare dso_local %struct.net* @nf_ct_exp_net(%struct.nf_conntrack_expect*) #1

declare dso_local i32 @nf_ct_expect_dst_hash(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @hlist_add_head(i32*, i32*) #1

declare dso_local i32 @hlist_add_head_rcu(i32*, i32*) #1

declare dso_local i32 @setup_timer(%struct.TYPE_7__*, i32, i64) #1

declare dso_local i32 @add_timer(%struct.TYPE_7__*) #1

declare dso_local i32 @NF_CT_STAT_INC(%struct.net*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
