; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_nat_proto_dccp.c_dccp_manip_pkt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_nat_proto_dccp.c_dccp_manip_pkt.c"
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
%struct.dccp_hdr = type { i32, i32, i32 }

@IP_NAT_MANIP_SRC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, %struct.nf_conntrack_tuple*, i32)* @dccp_manip_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dccp_manip_pkt(%struct.sk_buff* %0, i32 %1, %struct.nf_conntrack_tuple* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nf_conntrack_tuple*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.iphdr*, align 8
  %11 = alloca %struct.dccp_hdr*, align 8
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
  %25 = inttoptr i64 %24 to i8*
  %26 = bitcast i8* %25 to %struct.iphdr*
  store %struct.iphdr* %26, %struct.iphdr** %10, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %29 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = mul nsw i32 %30, 4
  %32 = add i32 %27, %31
  store i32 %32, i32* %12, align 4
  store i32 8, i32* %18, align 4
  %33 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = zext i32 %35 to i64
  %37 = load i32, i32* %12, align 4
  %38 = zext i32 %37 to i64
  %39 = add i64 %38, 12
  %40 = icmp uge i64 %36, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %4
  store i32 12, i32* %18, align 4
  br label %42

42:                                               ; preds = %41, %4
  %43 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %18, align 4
  %46 = add i32 %44, %45
  %47 = call i32 @skb_make_writable(%struct.sk_buff* %43, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %42
  store i32 0, i32* %5, align 4
  br label %124

50:                                               ; preds = %42
  %51 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = zext i32 %54 to i64
  %56 = add nsw i64 %53, %55
  %57 = inttoptr i64 %56 to %struct.iphdr*
  store %struct.iphdr* %57, %struct.iphdr** %10, align 8
  %58 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %59 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* %12, align 4
  %62 = zext i32 %61 to i64
  %63 = add nsw i64 %60, %62
  %64 = inttoptr i64 %63 to %struct.dccp_hdr*
  store %struct.dccp_hdr* %64, %struct.dccp_hdr** %11, align 8
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @IP_NAT_MANIP_SRC, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %85

68:                                               ; preds = %50
  %69 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %70 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %13, align 4
  %72 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %8, align 8
  %73 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %14, align 4
  %77 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %8, align 8
  %78 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %17, align 4
  %83 = load %struct.dccp_hdr*, %struct.dccp_hdr** %11, align 8
  %84 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %83, i32 0, i32 2
  store i32* %84, i32** %15, align 8
  br label %102

85:                                               ; preds = %50
  %86 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %87 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %13, align 4
  %89 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %8, align 8
  %90 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %14, align 4
  %94 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %8, align 8
  %95 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %17, align 4
  %100 = load %struct.dccp_hdr*, %struct.dccp_hdr** %11, align 8
  %101 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %100, i32 0, i32 1
  store i32* %101, i32** %15, align 8
  br label %102

102:                                              ; preds = %85, %68
  %103 = load i32*, i32** %15, align 8
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %16, align 4
  %105 = load i32, i32* %17, align 4
  %106 = load i32*, i32** %15, align 8
  store i32 %105, i32* %106, align 4
  %107 = load i32, i32* %18, align 4
  %108 = sext i32 %107 to i64
  %109 = icmp ult i64 %108, 12
  br i1 %109, label %110, label %111

110:                                              ; preds = %102
  store i32 1, i32* %5, align 4
  br label %124

111:                                              ; preds = %102
  %112 = load %struct.dccp_hdr*, %struct.dccp_hdr** %11, align 8
  %113 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %112, i32 0, i32 0
  %114 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %115 = load i32, i32* %13, align 4
  %116 = load i32, i32* %14, align 4
  %117 = call i32 @inet_proto_csum_replace4(i32* %113, %struct.sk_buff* %114, i32 %115, i32 %116, i32 1)
  %118 = load %struct.dccp_hdr*, %struct.dccp_hdr** %11, align 8
  %119 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %118, i32 0, i32 0
  %120 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %121 = load i32, i32* %16, align 4
  %122 = load i32, i32* %17, align 4
  %123 = call i32 @inet_proto_csum_replace2(i32* %119, %struct.sk_buff* %120, i32 %121, i32 %122, i32 0)
  store i32 1, i32* %5, align 4
  br label %124

124:                                              ; preds = %111, %110, %49
  %125 = load i32, i32* %5, align 4
  ret i32 %125
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
