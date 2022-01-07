; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_pkttype.c_pkttype_mt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_pkttype.c_pkttype_mt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.xt_match_param = type { i64, %struct.xt_pkttype_info* }
%struct.xt_pkttype_info = type { i64, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@PACKET_LOOPBACK = common dso_local global i64 0, align 8
@NFPROTO_IPV4 = common dso_local global i64 0, align 8
@PACKET_MULTICAST = common dso_local global i64 0, align 8
@NFPROTO_IPV6 = common dso_local global i64 0, align 8
@PACKET_BROADCAST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_match_param*)* @pkttype_mt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkttype_mt(%struct.sk_buff* %0, %struct.xt_match_param* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.xt_match_param*, align 8
  %5 = alloca %struct.xt_pkttype_info*, align 8
  %6 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.xt_match_param* %1, %struct.xt_match_param** %4, align 8
  %7 = load %struct.xt_match_param*, %struct.xt_match_param** %4, align 8
  %8 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %7, i32 0, i32 1
  %9 = load %struct.xt_pkttype_info*, %struct.xt_pkttype_info** %8, align 8
  store %struct.xt_pkttype_info* %9, %struct.xt_pkttype_info** %5, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @PACKET_LOOPBACK, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %6, align 8
  br label %55

19:                                               ; preds = %2
  %20 = load %struct.xt_match_param*, %struct.xt_match_param** %4, align 8
  %21 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @NFPROTO_IPV4, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %19
  %26 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %27 = call %struct.TYPE_6__* @ip_hdr(%struct.sk_buff* %26)
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @ipv4_is_multicast(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i64, i64* @PACKET_MULTICAST, align 8
  store i64 %33, i64* %6, align 8
  br label %54

34:                                               ; preds = %25, %19
  %35 = load %struct.xt_match_param*, %struct.xt_match_param** %4, align 8
  %36 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @NFPROTO_IPV6, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %34
  %41 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %42 = call %struct.TYPE_5__* @ipv6_hdr(%struct.sk_buff* %41)
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 255
  br i1 %48, label %49, label %51

49:                                               ; preds = %40
  %50 = load i64, i64* @PACKET_MULTICAST, align 8
  store i64 %50, i64* %6, align 8
  br label %53

51:                                               ; preds = %40, %34
  %52 = load i64, i64* @PACKET_BROADCAST, align 8
  store i64 %52, i64* %6, align 8
  br label %53

53:                                               ; preds = %51, %49
  br label %54

54:                                               ; preds = %53, %32
  br label %55

55:                                               ; preds = %54, %15
  %56 = load i64, i64* %6, align 8
  %57 = load %struct.xt_pkttype_info*, %struct.xt_pkttype_info** %5, align 8
  %58 = getelementptr inbounds %struct.xt_pkttype_info, %struct.xt_pkttype_info* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %56, %59
  %61 = zext i1 %60 to i32
  %62 = load %struct.xt_pkttype_info*, %struct.xt_pkttype_info** %5, align 8
  %63 = getelementptr inbounds %struct.xt_pkttype_info, %struct.xt_pkttype_info* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = xor i32 %61, %64
  ret i32 %65
}

declare dso_local i64 @ipv4_is_multicast(i32) #1

declare dso_local %struct.TYPE_6__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_5__* @ipv6_hdr(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
