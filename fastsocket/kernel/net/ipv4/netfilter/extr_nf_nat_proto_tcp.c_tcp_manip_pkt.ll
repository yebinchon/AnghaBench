; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_nat_proto_tcp.c_tcp_manip_pkt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_nat_proto_tcp.c_tcp_manip_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64 }
%struct.nf_conntrack_tuple = type { %struct.TYPE_16__, %struct.TYPE_12__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__, %struct.TYPE_13__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.iphdr = type { i32, i32, i32 }
%struct.tcphdr = type { i32, i32, i32 }

@IP_NAT_MANIP_SRC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, %struct.nf_conntrack_tuple*, i32)* @tcp_manip_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_manip_pkt(%struct.sk_buff* %0, i32 %1, %struct.nf_conntrack_tuple* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nf_conntrack_tuple*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.iphdr*, align 8
  %11 = alloca %struct.tcphdr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.nf_conntrack_tuple* %2, %struct.nf_conntrack_tuple** %8, align 8
  store i32 %3, i32* %9, align 4
  %19 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = zext i32 %22 to i64
  %24 = add nsw i64 %21, %23
  %25 = inttoptr i64 %24 to %struct.iphdr*
  store %struct.iphdr* %25, %struct.iphdr** %10, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %28 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = mul nsw i32 %29, 4
  %31 = add i32 %26, %30
  store i32 %31, i32* %12, align 4
  store i32 8, i32* %18, align 4
  %32 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %33 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = zext i32 %34 to i64
  %36 = load i32, i32* %12, align 4
  %37 = zext i32 %36 to i64
  %38 = add i64 %37, 12
  %39 = icmp uge i64 %35, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %4
  store i32 12, i32* %18, align 4
  br label %41

41:                                               ; preds = %40, %4
  %42 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* %18, align 4
  %45 = add i32 %43, %44
  %46 = call i32 @skb_make_writable(%struct.sk_buff* %42, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %41
  store i32 0, i32* %5, align 4
  br label %123

49:                                               ; preds = %41
  %50 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %51 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = zext i32 %53 to i64
  %55 = add nsw i64 %52, %54
  %56 = inttoptr i64 %55 to %struct.iphdr*
  store %struct.iphdr* %56, %struct.iphdr** %10, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %58 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* %12, align 4
  %61 = zext i32 %60 to i64
  %62 = add nsw i64 %59, %61
  %63 = inttoptr i64 %62 to %struct.tcphdr*
  store %struct.tcphdr* %63, %struct.tcphdr** %11, align 8
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @IP_NAT_MANIP_SRC, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %84

67:                                               ; preds = %49
  %68 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %69 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %13, align 4
  %71 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %8, align 8
  %72 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %14, align 4
  %76 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %8, align 8
  %77 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %16, align 4
  %82 = load %struct.tcphdr*, %struct.tcphdr** %11, align 8
  %83 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %82, i32 0, i32 2
  store i32* %83, i32** %15, align 8
  br label %101

84:                                               ; preds = %49
  %85 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %86 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %13, align 4
  %88 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %8, align 8
  %89 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %14, align 4
  %93 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %8, align 8
  %94 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %16, align 4
  %99 = load %struct.tcphdr*, %struct.tcphdr** %11, align 8
  %100 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %99, i32 0, i32 1
  store i32* %100, i32** %15, align 8
  br label %101

101:                                              ; preds = %84, %67
  %102 = load i32*, i32** %15, align 8
  %103 = load i32, i32* %102, align 4
  store i32 %103, i32* %17, align 4
  %104 = load i32, i32* %16, align 4
  %105 = load i32*, i32** %15, align 8
  store i32 %104, i32* %105, align 4
  %106 = load i32, i32* %18, align 4
  %107 = sext i32 %106 to i64
  %108 = icmp ult i64 %107, 12
  br i1 %108, label %109, label %110

109:                                              ; preds = %101
  store i32 1, i32* %5, align 4
  br label %123

110:                                              ; preds = %101
  %111 = load %struct.tcphdr*, %struct.tcphdr** %11, align 8
  %112 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %111, i32 0, i32 0
  %113 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %114 = load i32, i32* %13, align 4
  %115 = load i32, i32* %14, align 4
  %116 = call i32 @inet_proto_csum_replace4(i32* %112, %struct.sk_buff* %113, i32 %114, i32 %115, i32 1)
  %117 = load %struct.tcphdr*, %struct.tcphdr** %11, align 8
  %118 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %117, i32 0, i32 0
  %119 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %120 = load i32, i32* %17, align 4
  %121 = load i32, i32* %16, align 4
  %122 = call i32 @inet_proto_csum_replace2(i32* %118, %struct.sk_buff* %119, i32 %120, i32 %121, i32 0)
  store i32 1, i32* %5, align 4
  br label %123

123:                                              ; preds = %110, %109, %48
  %124 = load i32, i32* %5, align 4
  ret i32 %124
}

declare dso_local i32 @skb_make_writable(%struct.sk_buff*, i32) #1

declare dso_local i32 @inet_proto_csum_replace4(i32*, %struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @inet_proto_csum_replace2(i32*, %struct.sk_buff*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
