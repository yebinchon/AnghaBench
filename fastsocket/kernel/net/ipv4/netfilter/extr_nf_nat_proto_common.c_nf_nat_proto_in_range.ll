; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_nat_proto_common.c_nf_nat_proto_in_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_nat_proto_common.c_nf_nat_proto_in_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conntrack_tuple = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%union.nf_conntrack_man_proto = type { i32 }

@IP_NAT_MANIP_SRC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nf_nat_proto_in_range(%struct.nf_conntrack_tuple* %0, i32 %1, %union.nf_conntrack_man_proto* %2, %union.nf_conntrack_man_proto* %3) #0 {
  %5 = alloca %struct.nf_conntrack_tuple*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.nf_conntrack_man_proto*, align 8
  %8 = alloca %union.nf_conntrack_man_proto*, align 8
  %9 = alloca i32, align 4
  store %struct.nf_conntrack_tuple* %0, %struct.nf_conntrack_tuple** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.nf_conntrack_man_proto* %2, %union.nf_conntrack_man_proto** %7, align 8
  store %union.nf_conntrack_man_proto* %3, %union.nf_conntrack_man_proto** %8, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @IP_NAT_MANIP_SRC, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %4
  %14 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %5, align 8
  %15 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %9, align 4
  br label %25

19:                                               ; preds = %4
  %20 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %5, align 8
  %21 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %9, align 4
  br label %25

25:                                               ; preds = %19, %13
  %26 = load i32, i32* %9, align 4
  %27 = call i64 @ntohs(i32 %26)
  %28 = load %union.nf_conntrack_man_proto*, %union.nf_conntrack_man_proto** %7, align 8
  %29 = bitcast %union.nf_conntrack_man_proto* %28 to i32*
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @ntohs(i32 %30)
  %32 = icmp sge i64 %27, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %25
  %34 = load i32, i32* %9, align 4
  %35 = call i64 @ntohs(i32 %34)
  %36 = load %union.nf_conntrack_man_proto*, %union.nf_conntrack_man_proto** %8, align 8
  %37 = bitcast %union.nf_conntrack_man_proto* %36 to i32*
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @ntohs(i32 %38)
  %40 = icmp sle i64 %35, %39
  br label %41

41:                                               ; preds = %33, %25
  %42 = phi i1 [ false, %25 ], [ %40, %33 ]
  %43 = zext i1 %42 to i32
  ret i32 %43
}

declare dso_local i64 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
