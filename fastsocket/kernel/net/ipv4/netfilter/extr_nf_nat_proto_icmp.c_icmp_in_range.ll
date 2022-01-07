; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_nat_proto_icmp.c_icmp_in_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_nat_proto_icmp.c_icmp_in_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conntrack_tuple = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%union.nf_conntrack_man_proto = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nf_conntrack_tuple*, i32, %union.nf_conntrack_man_proto*, %union.nf_conntrack_man_proto*)* @icmp_in_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icmp_in_range(%struct.nf_conntrack_tuple* %0, i32 %1, %union.nf_conntrack_man_proto* %2, %union.nf_conntrack_man_proto* %3) #0 {
  %5 = alloca %struct.nf_conntrack_tuple*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.nf_conntrack_man_proto*, align 8
  %8 = alloca %union.nf_conntrack_man_proto*, align 8
  store %struct.nf_conntrack_tuple* %0, %struct.nf_conntrack_tuple** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.nf_conntrack_man_proto* %2, %union.nf_conntrack_man_proto** %7, align 8
  store %union.nf_conntrack_man_proto* %3, %union.nf_conntrack_man_proto** %8, align 8
  %9 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %5, align 8
  %10 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @ntohs(i32 %14)
  %16 = load %union.nf_conntrack_man_proto*, %union.nf_conntrack_man_proto** %7, align 8
  %17 = bitcast %union.nf_conntrack_man_proto* %16 to %struct.TYPE_8__*
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @ntohs(i32 %19)
  %21 = icmp sge i64 %15, %20
  br i1 %21, label %22, label %36

22:                                               ; preds = %4
  %23 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %5, align 8
  %24 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @ntohs(i32 %28)
  %30 = load %union.nf_conntrack_man_proto*, %union.nf_conntrack_man_proto** %8, align 8
  %31 = bitcast %union.nf_conntrack_man_proto* %30 to %struct.TYPE_8__*
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @ntohs(i32 %33)
  %35 = icmp sle i64 %29, %34
  br label %36

36:                                               ; preds = %22, %4
  %37 = phi i1 [ false, %4 ], [ %35, %22 ]
  %38 = zext i1 %37 to i32
  ret i32 %38
}

declare dso_local i64 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
