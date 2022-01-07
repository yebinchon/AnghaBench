; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_h323_main.c_find_expect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_h323_main.c_find_expect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conntrack_expect = type { %struct.nf_conn* }
%struct.nf_conn = type { i32 }
%union.nf_inet_addr = type { i32 }
%struct.net = type { i32 }
%struct.nf_conntrack_tuple = type { %struct.TYPE_11__, %struct.TYPE_12__ }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }

@IPPROTO_TCP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nf_conntrack_expect* (%struct.nf_conn*, %union.nf_inet_addr*, i32)* @find_expect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nf_conntrack_expect* @find_expect(%struct.nf_conn* %0, %union.nf_inet_addr* %1, i32 %2) #0 {
  %4 = alloca %struct.nf_conntrack_expect*, align 8
  %5 = alloca %struct.nf_conn*, align 8
  %6 = alloca %union.nf_inet_addr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.nf_conntrack_expect*, align 8
  %10 = alloca %struct.nf_conntrack_tuple, align 8
  store %struct.nf_conn* %0, %struct.nf_conn** %5, align 8
  store %union.nf_inet_addr* %1, %union.nf_inet_addr** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %12 = call %struct.net* @nf_ct_net(%struct.nf_conn* %11)
  store %struct.net* %12, %struct.net** %8, align 8
  %13 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %10, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 1
  %15 = call i32 @memset(i32* %14, i32 0, i32 4)
  %16 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %10, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  store i64 0, i64* %19, align 8
  %20 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %10, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 2
  %22 = load %union.nf_inet_addr*, %union.nf_inet_addr** %6, align 8
  %23 = call i32 @memcpy(i32* %21, %union.nf_inet_addr* %22, i32 4)
  %24 = load i32, i32* %7, align 4
  %25 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %10, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  store i32 %24, i32* %28, align 4
  %29 = load i32, i32* @IPPROTO_TCP, align 4
  %30 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %10, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.net*, %struct.net** %8, align 8
  %33 = call %struct.nf_conntrack_expect* @__nf_ct_expect_find(%struct.net* %32, %struct.nf_conntrack_tuple* %10)
  store %struct.nf_conntrack_expect* %33, %struct.nf_conntrack_expect** %9, align 8
  %34 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %9, align 8
  %35 = icmp ne %struct.nf_conntrack_expect* %34, null
  br i1 %35, label %36, label %44

36:                                               ; preds = %3
  %37 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %9, align 8
  %38 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %37, i32 0, i32 0
  %39 = load %struct.nf_conn*, %struct.nf_conn** %38, align 8
  %40 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %41 = icmp eq %struct.nf_conn* %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %9, align 8
  store %struct.nf_conntrack_expect* %43, %struct.nf_conntrack_expect** %4, align 8
  br label %45

44:                                               ; preds = %36, %3
  store %struct.nf_conntrack_expect* null, %struct.nf_conntrack_expect** %4, align 8
  br label %45

45:                                               ; preds = %44, %42
  %46 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %4, align 8
  ret %struct.nf_conntrack_expect* %46
}

declare dso_local %struct.net* @nf_ct_net(%struct.nf_conn*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, %union.nf_inet_addr*, i32) #1

declare dso_local %struct.nf_conntrack_expect* @__nf_ct_expect_find(%struct.net*, %struct.nf_conntrack_tuple*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
