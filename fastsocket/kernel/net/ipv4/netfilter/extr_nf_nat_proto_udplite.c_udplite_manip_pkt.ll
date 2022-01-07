; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_nat_proto_udplite.c_udplite_manip_pkt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_nat_proto_udplite.c_udplite_manip_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
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
%struct.udphdr = type { i64, i32, i32 }

@IP_NAT_MANIP_SRC = common dso_local global i32 0, align 4
@CSUM_MANGLED_0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, %struct.nf_conntrack_tuple*, i32)* @udplite_manip_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udplite_manip_pkt(%struct.sk_buff* %0, i32 %1, %struct.nf_conntrack_tuple* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nf_conntrack_tuple*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.iphdr*, align 8
  %11 = alloca %struct.udphdr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.nf_conntrack_tuple* %2, %struct.nf_conntrack_tuple** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = zext i32 %20 to i64
  %22 = add nsw i64 %19, %21
  %23 = inttoptr i64 %22 to %struct.iphdr*
  store %struct.iphdr* %23, %struct.iphdr** %10, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %26 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = mul nsw i32 %27, 4
  %29 = add i32 %24, %28
  store i32 %29, i32* %12, align 4
  %30 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %31 = load i32, i32* %12, align 4
  %32 = zext i32 %31 to i64
  %33 = add i64 %32, 16
  %34 = trunc i64 %33 to i32
  %35 = call i32 @skb_make_writable(%struct.sk_buff* %30, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %115

38:                                               ; preds = %4
  %39 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %40 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = zext i32 %42 to i64
  %44 = add nsw i64 %41, %43
  %45 = inttoptr i64 %44 to %struct.iphdr*
  store %struct.iphdr* %45, %struct.iphdr** %10, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %47 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* %12, align 4
  %50 = zext i32 %49 to i64
  %51 = add nsw i64 %48, %50
  %52 = inttoptr i64 %51 to %struct.udphdr*
  store %struct.udphdr* %52, %struct.udphdr** %11, align 8
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @IP_NAT_MANIP_SRC, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %73

56:                                               ; preds = %38
  %57 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %58 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %13, align 4
  %60 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %8, align 8
  %61 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %14, align 4
  %65 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %8, align 8
  %66 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %16, align 4
  %71 = load %struct.udphdr*, %struct.udphdr** %11, align 8
  %72 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %71, i32 0, i32 2
  store i32* %72, i32** %15, align 8
  br label %90

73:                                               ; preds = %38
  %74 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %75 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %13, align 4
  %77 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %8, align 8
  %78 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %14, align 4
  %82 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %8, align 8
  %83 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %16, align 4
  %88 = load %struct.udphdr*, %struct.udphdr** %11, align 8
  %89 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %88, i32 0, i32 1
  store i32* %89, i32** %15, align 8
  br label %90

90:                                               ; preds = %73, %56
  %91 = load %struct.udphdr*, %struct.udphdr** %11, align 8
  %92 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %91, i32 0, i32 0
  %93 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %94 = load i32, i32* %13, align 4
  %95 = load i32, i32* %14, align 4
  %96 = call i32 @inet_proto_csum_replace4(i64* %92, %struct.sk_buff* %93, i32 %94, i32 %95, i32 1)
  %97 = load %struct.udphdr*, %struct.udphdr** %11, align 8
  %98 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %97, i32 0, i32 0
  %99 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %100 = load i32*, i32** %15, align 8
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %16, align 4
  %103 = call i32 @inet_proto_csum_replace2(i64* %98, %struct.sk_buff* %99, i32 %101, i32 %102, i32 0)
  %104 = load %struct.udphdr*, %struct.udphdr** %11, align 8
  %105 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %112, label %108

108:                                              ; preds = %90
  %109 = load i64, i64* @CSUM_MANGLED_0, align 8
  %110 = load %struct.udphdr*, %struct.udphdr** %11, align 8
  %111 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %110, i32 0, i32 0
  store i64 %109, i64* %111, align 8
  br label %112

112:                                              ; preds = %108, %90
  %113 = load i32, i32* %16, align 4
  %114 = load i32*, i32** %15, align 8
  store i32 %113, i32* %114, align 4
  store i32 1, i32* %5, align 4
  br label %115

115:                                              ; preds = %112, %37
  %116 = load i32, i32* %5, align 4
  ret i32 %116
}

declare dso_local i32 @skb_make_writable(%struct.sk_buff*, i32) #1

declare dso_local i32 @inet_proto_csum_replace4(i64*, %struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @inet_proto_csum_replace2(i64*, %struct.sk_buff*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
