; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_ipv6.c_sctp_v6_from_skb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_ipv6.c_sctp_v6_from_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.sctp_addr = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i64, i32, i32 }
%struct.sk_buff = type { i64 }
%struct.sctphdr = type { i32, i32 }
%struct.inet6_skb_parm = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@AF_INET6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.sctp_addr*, %struct.sk_buff*, i32)* @sctp_v6_from_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_v6_from_skb(%union.sctp_addr* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %union.sctp_addr*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.sctphdr*, align 8
  store %union.sctp_addr* %0, %union.sctp_addr** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %union.sctp_addr*, %union.sctp_addr** %4, align 8
  %11 = bitcast %union.sctp_addr* %10 to %struct.TYPE_3__*
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 4
  store i32* %12, i32** %8, align 8
  %13 = load i32, i32* @AF_INET6, align 4
  %14 = load %union.sctp_addr*, %union.sctp_addr** %4, align 8
  %15 = bitcast %union.sctp_addr* %14 to %struct.TYPE_3__*
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 3
  store i32 %13, i32* %16, align 8
  %17 = load %union.sctp_addr*, %union.sctp_addr** %4, align 8
  %18 = bitcast %union.sctp_addr* %17 to %struct.TYPE_3__*
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 2
  store i64 0, i64* %19, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.inet6_skb_parm*
  %24 = getelementptr inbounds %struct.inet6_skb_parm, %struct.inet6_skb_parm* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %union.sctp_addr*, %union.sctp_addr** %4, align 8
  %27 = bitcast %union.sctp_addr* %26 to %struct.TYPE_3__*
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  store i32 %25, i32* %28, align 4
  %29 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %30 = call %struct.sctphdr* @sctp_hdr(%struct.sk_buff* %29)
  store %struct.sctphdr* %30, %struct.sctphdr** %9, align 8
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %3
  %34 = load %struct.sctphdr*, %struct.sctphdr** %9, align 8
  %35 = getelementptr inbounds %struct.sctphdr, %struct.sctphdr* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %8, align 8
  store i32 %36, i32* %37, align 4
  %38 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %39 = call %struct.TYPE_4__* @ipv6_hdr(%struct.sk_buff* %38)
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = bitcast i32* %40 to i8*
  store i8* %41, i8** %7, align 8
  br label %51

42:                                               ; preds = %3
  %43 = load %struct.sctphdr*, %struct.sctphdr** %9, align 8
  %44 = getelementptr inbounds %struct.sctphdr, %struct.sctphdr* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %8, align 8
  store i32 %45, i32* %46, align 4
  %47 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %48 = call %struct.TYPE_4__* @ipv6_hdr(%struct.sk_buff* %47)
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = bitcast i32* %49 to i8*
  store i8* %50, i8** %7, align 8
  br label %51

51:                                               ; preds = %42, %33
  %52 = load %union.sctp_addr*, %union.sctp_addr** %4, align 8
  %53 = bitcast %union.sctp_addr* %52 to %struct.TYPE_3__*
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i8*, i8** %7, align 8
  %56 = call i32 @ipv6_addr_copy(i32* %54, i8* %55)
  ret void
}

declare dso_local %struct.sctphdr* @sctp_hdr(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_4__* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ipv6_addr_copy(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
