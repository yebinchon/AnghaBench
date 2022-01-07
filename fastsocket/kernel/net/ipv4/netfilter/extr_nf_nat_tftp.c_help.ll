; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_nat_tftp.c_help.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_nat_tftp.c_help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_conntrack_expect = type { i32, i32, %struct.TYPE_9__, %struct.nf_conn* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.nf_conn = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@IP_CT_DIR_ORIGINAL = common dso_local global i64 0, align 8
@IP_CT_DIR_REPLY = common dso_local global i32 0, align 4
@nf_nat_follow_master = common dso_local global i32 0, align 4
@NF_DROP = common dso_local global i32 0, align 4
@NF_ACCEPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, %struct.nf_conntrack_expect*)* @help to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @help(%struct.sk_buff* %0, i32 %1, %struct.nf_conntrack_expect* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nf_conntrack_expect*, align 8
  %8 = alloca %struct.nf_conn*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nf_conntrack_expect* %2, %struct.nf_conntrack_expect** %7, align 8
  %9 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %7, align 8
  %10 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %9, i32 0, i32 3
  %11 = load %struct.nf_conn*, %struct.nf_conn** %10, align 8
  store %struct.nf_conn* %11, %struct.nf_conn** %8, align 8
  %12 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %13 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %12, i32 0, i32 0
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %15 = load i64, i64* @IP_CT_DIR_ORIGINAL, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %7, align 8
  %24 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  store i32 %22, i32* %26, align 8
  %27 = load i32, i32* @IP_CT_DIR_REPLY, align 4
  %28 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %7, align 8
  %29 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @nf_nat_follow_master, align 4
  %31 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %7, align 8
  %32 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %7, align 8
  %34 = call i64 @nf_ct_expect_related(%struct.nf_conntrack_expect* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %3
  %37 = load i32, i32* @NF_DROP, align 4
  store i32 %37, i32* %4, align 4
  br label %40

38:                                               ; preds = %3
  %39 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i64 @nf_ct_expect_related(%struct.nf_conntrack_expect*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
