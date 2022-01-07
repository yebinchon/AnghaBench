; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_proto_dccp.c_dccp_pkt_to_tuple.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_proto_dccp.c_dccp_pkt_to_tuple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_conntrack_tuple = type { %struct.TYPE_12__, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.dccp_hdr = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, %struct.nf_conntrack_tuple*)* @dccp_pkt_to_tuple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dccp_pkt_to_tuple(%struct.sk_buff* %0, i32 %1, %struct.nf_conntrack_tuple* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nf_conntrack_tuple*, align 8
  %8 = alloca %struct.dccp_hdr, align 4
  %9 = alloca %struct.dccp_hdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nf_conntrack_tuple* %2, %struct.nf_conntrack_tuple** %7, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call %struct.dccp_hdr* @skb_header_pointer(%struct.sk_buff* %10, i32 %11, i32 8, %struct.dccp_hdr* %8)
  store %struct.dccp_hdr* %12, %struct.dccp_hdr** %9, align 8
  %13 = load %struct.dccp_hdr*, %struct.dccp_hdr** %9, align 8
  %14 = icmp eq %struct.dccp_hdr* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %33

16:                                               ; preds = %3
  %17 = load %struct.dccp_hdr*, %struct.dccp_hdr** %9, align 8
  %18 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %7, align 8
  %21 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  store i32 %19, i32* %24, align 4
  %25 = load %struct.dccp_hdr*, %struct.dccp_hdr** %9, align 8
  %26 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %7, align 8
  %29 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  store i32 %27, i32* %32, align 4
  store i32 1, i32* %4, align 4
  br label %33

33:                                               ; preds = %16, %15
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local %struct.dccp_hdr* @skb_header_pointer(%struct.sk_buff*, i32, i32, %struct.dccp_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
