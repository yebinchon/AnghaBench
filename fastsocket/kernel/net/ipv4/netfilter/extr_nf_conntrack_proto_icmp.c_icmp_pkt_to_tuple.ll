; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_conntrack_proto_icmp.c_icmp_pkt_to_tuple.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_conntrack_proto_icmp.c_icmp_pkt_to_tuple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_conntrack_tuple = type { %struct.TYPE_15__, %struct.TYPE_11__ }
%struct.TYPE_15__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.icmphdr = type { i32, %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, %struct.nf_conntrack_tuple*)* @icmp_pkt_to_tuple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icmp_pkt_to_tuple(%struct.sk_buff* %0, i32 %1, %struct.nf_conntrack_tuple* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nf_conntrack_tuple*, align 8
  %8 = alloca %struct.icmphdr*, align 8
  %9 = alloca %struct.icmphdr, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nf_conntrack_tuple* %2, %struct.nf_conntrack_tuple** %7, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call %struct.icmphdr* @skb_header_pointer(%struct.sk_buff* %10, i32 %11, i32 12, %struct.icmphdr* %9)
  store %struct.icmphdr* %12, %struct.icmphdr** %8, align 8
  %13 = load %struct.icmphdr*, %struct.icmphdr** %8, align 8
  %14 = icmp eq %struct.icmphdr* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %43

16:                                               ; preds = %3
  %17 = load %struct.icmphdr*, %struct.icmphdr** %8, align 8
  %18 = getelementptr inbounds %struct.icmphdr, %struct.icmphdr* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %7, align 8
  %21 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 1
  store i32 %19, i32* %24, align 4
  %25 = load %struct.icmphdr*, %struct.icmphdr** %8, align 8
  %26 = getelementptr inbounds %struct.icmphdr, %struct.icmphdr* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %7, align 8
  %31 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  store i32 %29, i32* %34, align 4
  %35 = load %struct.icmphdr*, %struct.icmphdr** %8, align 8
  %36 = getelementptr inbounds %struct.icmphdr, %struct.icmphdr* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %7, align 8
  %39 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  store i32 %37, i32* %42, align 4
  store i32 1, i32* %4, align 4
  br label %43

43:                                               ; preds = %16, %15
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local %struct.icmphdr* @skb_header_pointer(%struct.sk_buff*, i32, i32, %struct.icmphdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
