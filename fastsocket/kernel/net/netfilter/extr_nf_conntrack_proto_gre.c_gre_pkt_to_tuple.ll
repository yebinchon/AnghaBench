; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_proto_gre.c_gre_pkt_to_tuple.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_proto_gre.c_gre_pkt_to_tuple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.nf_conntrack_tuple = type { %struct.TYPE_13__, %struct.TYPE_10__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__, i64 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.net = type { i32 }
%struct.gre_hdr_pptp = type { i64, i32, i32 }
%struct.gre_hdr = type { i64, i32, i32 }
%struct.TYPE_14__ = type { i64 }

@GRE_VERSION_PPTP = common dso_local global i64 0, align 8
@GRE_PROTOCOL_PPTP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"GRE_VERSION_PPTP but unknown proto\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, %struct.nf_conntrack_tuple*)* @gre_pkt_to_tuple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gre_pkt_to_tuple(%struct.sk_buff* %0, i32 %1, %struct.nf_conntrack_tuple* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nf_conntrack_tuple*, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.gre_hdr_pptp*, align 8
  %10 = alloca %struct.gre_hdr_pptp, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.gre_hdr*, align 8
  %13 = alloca %struct.gre_hdr, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nf_conntrack_tuple* %2, %struct.nf_conntrack_tuple** %7, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  br label %27

22:                                               ; preds = %3
  %23 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %24 = call %struct.TYPE_14__* @skb_dst(%struct.sk_buff* %23)
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  br label %27

27:                                               ; preds = %22, %18
  %28 = phi i64 [ %21, %18 ], [ %26, %22 ]
  %29 = call %struct.net* @dev_net(i64 %28)
  store %struct.net* %29, %struct.net** %8, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = bitcast %struct.gre_hdr* %13 to %struct.gre_hdr_pptp*
  %33 = call %struct.gre_hdr_pptp* @skb_header_pointer(%struct.sk_buff* %30, i32 %31, i32 16, %struct.gre_hdr_pptp* %32)
  %34 = bitcast %struct.gre_hdr_pptp* %33 to %struct.gre_hdr*
  store %struct.gre_hdr* %34, %struct.gre_hdr** %12, align 8
  %35 = load %struct.gre_hdr*, %struct.gre_hdr** %12, align 8
  %36 = icmp ne %struct.gre_hdr* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %27
  %38 = load %struct.gre_hdr*, %struct.gre_hdr** %12, align 8
  %39 = getelementptr inbounds %struct.gre_hdr, %struct.gre_hdr* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @GRE_VERSION_PPTP, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %37, %27
  %44 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %7, align 8
  %45 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 1
  store i64 0, i64* %47, align 8
  %48 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %7, align 8
  %49 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  store i64 0, i64* %51, align 8
  store i32 1, i32* %4, align 4
  br label %86

52:                                               ; preds = %37
  %53 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call %struct.gre_hdr_pptp* @skb_header_pointer(%struct.sk_buff* %53, i32 %54, i32 8, %struct.gre_hdr_pptp* %10)
  store %struct.gre_hdr_pptp* %55, %struct.gre_hdr_pptp** %9, align 8
  %56 = load %struct.gre_hdr_pptp*, %struct.gre_hdr_pptp** %9, align 8
  %57 = icmp ne %struct.gre_hdr_pptp* %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %52
  store i32 1, i32* %4, align 4
  br label %86

59:                                               ; preds = %52
  %60 = load %struct.gre_hdr*, %struct.gre_hdr** %12, align 8
  %61 = getelementptr inbounds %struct.gre_hdr, %struct.gre_hdr* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @ntohs(i32 %62)
  %64 = load i64, i64* @GRE_PROTOCOL_PPTP, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %59
  %67 = call i32 @pr_debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %86

68:                                               ; preds = %59
  %69 = load %struct.gre_hdr_pptp*, %struct.gre_hdr_pptp** %9, align 8
  %70 = getelementptr inbounds %struct.gre_hdr_pptp, %struct.gre_hdr_pptp* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %7, align 8
  %73 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  store i32 %71, i32* %76, align 8
  %77 = load %struct.net*, %struct.net** %8, align 8
  %78 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %7, align 8
  %79 = call i32 @gre_keymap_lookup(%struct.net* %77, %struct.nf_conntrack_tuple* %78)
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %11, align 4
  %81 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %7, align 8
  %82 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  store i32 %80, i32* %85, align 8
  store i32 1, i32* %4, align 4
  br label %86

86:                                               ; preds = %68, %66, %58, %43
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local %struct.net* @dev_net(i64) #1

declare dso_local %struct.TYPE_14__* @skb_dst(%struct.sk_buff*) #1

declare dso_local %struct.gre_hdr_pptp* @skb_header_pointer(%struct.sk_buff*, i32, i32, %struct.gre_hdr_pptp*) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @gre_keymap_lookup(%struct.net*, %struct.nf_conntrack_tuple*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
