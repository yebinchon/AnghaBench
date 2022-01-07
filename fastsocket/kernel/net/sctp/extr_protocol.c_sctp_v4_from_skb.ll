; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_protocol.c_sctp_v4_from_skb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_protocol.c_sctp_v4_from_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.sctp_addr = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.sctphdr = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@AF_INET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.sctp_addr*, %struct.sk_buff*, i32)* @sctp_v4_from_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_v4_from_skb(%union.sctp_addr* %0, %struct.sk_buff* %1, i32 %2) #0 {
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
  %11 = bitcast %union.sctp_addr* %10 to %struct.TYPE_5__*
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 2
  store i32* %12, i32** %8, align 8
  %13 = load i32, i32* @AF_INET, align 4
  %14 = load %union.sctp_addr*, %union.sctp_addr** %4, align 8
  %15 = bitcast %union.sctp_addr* %14 to %struct.TYPE_5__*
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  store i32 %13, i32* %16, align 4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %18 = call %struct.sctphdr* @sctp_hdr(%struct.sk_buff* %17)
  store %struct.sctphdr* %18, %struct.sctphdr** %9, align 8
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %3
  %22 = load %struct.sctphdr*, %struct.sctphdr** %9, align 8
  %23 = getelementptr inbounds %struct.sctphdr, %struct.sctphdr* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %8, align 8
  store i32 %24, i32* %25, align 4
  %26 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %27 = call %struct.TYPE_6__* @ip_hdr(%struct.sk_buff* %26)
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = bitcast i32* %28 to i8*
  store i8* %29, i8** %7, align 8
  br label %39

30:                                               ; preds = %3
  %31 = load %struct.sctphdr*, %struct.sctphdr** %9, align 8
  %32 = getelementptr inbounds %struct.sctphdr, %struct.sctphdr* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %8, align 8
  store i32 %33, i32* %34, align 4
  %35 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %36 = call %struct.TYPE_6__* @ip_hdr(%struct.sk_buff* %35)
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = bitcast i32* %37 to i8*
  store i8* %38, i8** %7, align 8
  br label %39

39:                                               ; preds = %30, %21
  %40 = load %union.sctp_addr*, %union.sctp_addr** %4, align 8
  %41 = bitcast %union.sctp_addr* %40 to %struct.TYPE_5__*
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i8*, i8** %7, align 8
  %45 = call i32 @memcpy(i32* %43, i8* %44, i32 4)
  ret void
}

declare dso_local %struct.sctphdr* @sctp_hdr(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_6__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
