; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_nat_core.c_manip_pkt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_nat_core.c_manip_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.nf_conntrack_tuple = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.iphdr = type { i32, i32, i32 }
%struct.nf_nat_protocol = type { i32 (%struct.sk_buff*, i32, %struct.nf_conntrack_tuple.0*, i32)* }
%struct.nf_conntrack_tuple.0 = type opaque

@IP_NAT_MANIP_SRC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.sk_buff*, i32, %struct.nf_conntrack_tuple*, i32)* @manip_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @manip_pkt(i32 %0, %struct.sk_buff* %1, i32 %2, %struct.nf_conntrack_tuple* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nf_conntrack_tuple*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.iphdr*, align 8
  %13 = alloca %struct.nf_nat_protocol*, align 8
  store i32 %0, i32* %7, align 4
  store %struct.sk_buff* %1, %struct.sk_buff** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.nf_conntrack_tuple* %3, %struct.nf_conntrack_tuple** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %15 = load i32, i32* %9, align 4
  %16 = zext i32 %15 to i64
  %17 = add i64 %16, 12
  %18 = trunc i64 %17 to i32
  %19 = call i32 @skb_make_writable(%struct.sk_buff* %14, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %95

22:                                               ; preds = %5
  %23 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to i8*
  %27 = load i32, i32* %9, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr i8, i8* %26, i64 %28
  %30 = bitcast i8* %29 to %struct.iphdr*
  store %struct.iphdr* %30, %struct.iphdr** %12, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call %struct.nf_nat_protocol* @__nf_nat_proto_find(i32 %31)
  store %struct.nf_nat_protocol* %32, %struct.nf_nat_protocol** %13, align 8
  %33 = load %struct.nf_nat_protocol*, %struct.nf_nat_protocol** %13, align 8
  %34 = getelementptr inbounds %struct.nf_nat_protocol, %struct.nf_nat_protocol* %33, i32 0, i32 0
  %35 = load i32 (%struct.sk_buff*, i32, %struct.nf_conntrack_tuple.0*, i32)*, i32 (%struct.sk_buff*, i32, %struct.nf_conntrack_tuple.0*, i32)** %34, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %10, align 8
  %39 = bitcast %struct.nf_conntrack_tuple* %38 to %struct.nf_conntrack_tuple.0*
  %40 = load i32, i32* %11, align 4
  %41 = call i32 %35(%struct.sk_buff* %36, i32 %37, %struct.nf_conntrack_tuple.0* %39, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %22
  store i32 0, i32* %6, align 4
  br label %95

44:                                               ; preds = %22
  %45 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to i8*
  %49 = load i32, i32* %9, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr i8, i8* %48, i64 %50
  %52 = bitcast i8* %51 to %struct.iphdr*
  store %struct.iphdr* %52, %struct.iphdr** %12, align 8
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* @IP_NAT_MANIP_SRC, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %75

56:                                               ; preds = %44
  %57 = load %struct.iphdr*, %struct.iphdr** %12, align 8
  %58 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %57, i32 0, i32 1
  %59 = load %struct.iphdr*, %struct.iphdr** %12, align 8
  %60 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %10, align 8
  %63 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @csum_replace4(i32* %58, i32 %61, i32 %66)
  %68 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %10, align 8
  %69 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.iphdr*, %struct.iphdr** %12, align 8
  %74 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 4
  br label %94

75:                                               ; preds = %44
  %76 = load %struct.iphdr*, %struct.iphdr** %12, align 8
  %77 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %76, i32 0, i32 1
  %78 = load %struct.iphdr*, %struct.iphdr** %12, align 8
  %79 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %10, align 8
  %82 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @csum_replace4(i32* %77, i32 %80, i32 %85)
  %87 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %10, align 8
  %88 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.iphdr*, %struct.iphdr** %12, align 8
  %93 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 4
  br label %94

94:                                               ; preds = %75, %56
  store i32 1, i32* %6, align 4
  br label %95

95:                                               ; preds = %94, %43, %21
  %96 = load i32, i32* %6, align 4
  ret i32 %96
}

declare dso_local i32 @skb_make_writable(%struct.sk_buff*, i32) #1

declare dso_local %struct.nf_nat_protocol* @__nf_nat_proto_find(i32) #1

declare dso_local i32 @csum_replace4(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
