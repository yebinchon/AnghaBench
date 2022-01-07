; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_expect.c_refresh_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_expect.c_refresh_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conntrack_expect = type { i64, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.nf_conn_help = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.nf_conntrack_expect_policy* }
%struct.nf_conntrack_expect_policy = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nf_conntrack_expect*)* @refresh_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @refresh_timer(%struct.nf_conntrack_expect* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nf_conntrack_expect*, align 8
  %4 = alloca %struct.nf_conn_help*, align 8
  %5 = alloca %struct.nf_conntrack_expect_policy*, align 8
  store %struct.nf_conntrack_expect* %0, %struct.nf_conntrack_expect** %3, align 8
  %6 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %3, align 8
  %7 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = call %struct.nf_conn_help* @nfct_help(i32 %8)
  store %struct.nf_conn_help* %9, %struct.nf_conn_help** %4, align 8
  %10 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %3, align 8
  %11 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %10, i32 0, i32 1
  %12 = call i32 @del_timer(%struct.TYPE_5__* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %39

15:                                               ; preds = %1
  %16 = load %struct.nf_conn_help*, %struct.nf_conn_help** %4, align 8
  %17 = getelementptr inbounds %struct.nf_conn_help, %struct.nf_conn_help* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.nf_conntrack_expect_policy*, %struct.nf_conntrack_expect_policy** %19, align 8
  %21 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %3, align 8
  %22 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.nf_conntrack_expect_policy, %struct.nf_conntrack_expect_policy* %20, i64 %23
  store %struct.nf_conntrack_expect_policy* %24, %struct.nf_conntrack_expect_policy** %5, align 8
  %25 = load i64, i64* @jiffies, align 8
  %26 = load %struct.nf_conntrack_expect_policy*, %struct.nf_conntrack_expect_policy** %5, align 8
  %27 = getelementptr inbounds %struct.nf_conntrack_expect_policy, %struct.nf_conntrack_expect_policy* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @HZ, align 4
  %30 = mul nsw i32 %28, %29
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %25, %31
  %33 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %3, align 8
  %34 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  store i64 %32, i64* %35, align 8
  %36 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %3, align 8
  %37 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %36, i32 0, i32 1
  %38 = call i32 @add_timer(%struct.TYPE_5__* %37)
  store i32 1, i32* %2, align 4
  br label %39

39:                                               ; preds = %15, %14
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local %struct.nf_conn_help* @nfct_help(i32) #1

declare dso_local i32 @del_timer(%struct.TYPE_5__*) #1

declare dso_local i32 @add_timer(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
