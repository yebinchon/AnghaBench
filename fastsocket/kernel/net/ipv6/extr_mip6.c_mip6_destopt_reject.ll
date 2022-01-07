; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_mip6.c_mip6_destopt_reject.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_mip6.c_mip6_destopt_reject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { i32 }
%struct.sk_buff = type { i64 }
%struct.flowi = type { i64, i64, i32 }
%struct.net = type { i32 }
%struct.inet6_skb_parm = type { i32, i32 }
%struct.ipv6_destopt_hao = type { i32 }
%struct.xfrm_selector = type { i32, i32, i64, i32, i8*, i64, i8*, i64, i32, i32, i32 }
%struct.timeval = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@IPPROTO_MH = common dso_local global i64 0, align 8
@IP6_MH_TYPE_MAX = common dso_local global i64 0, align 8
@IPV6_TLV_HAO = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@IPPROTO_DSTOPTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_state*, %struct.sk_buff*, %struct.flowi*)* @mip6_destopt_reject to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mip6_destopt_reject(%struct.xfrm_state* %0, %struct.sk_buff* %1, %struct.flowi* %2) #0 {
  %4 = alloca %struct.xfrm_state*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.flowi*, align 8
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.inet6_skb_parm*, align 8
  %9 = alloca %struct.ipv6_destopt_hao*, align 8
  %10 = alloca %struct.xfrm_selector, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.timeval, align 4
  %13 = alloca i32, align 4
  store %struct.xfrm_state* %0, %struct.xfrm_state** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.flowi* %2, %struct.flowi** %6, align 8
  %14 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %15 = call %struct.net* @xs_net(%struct.xfrm_state* %14)
  store %struct.net* %15, %struct.net** %7, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.inet6_skb_parm*
  store %struct.inet6_skb_parm* %19, %struct.inet6_skb_parm** %8, align 8
  store %struct.ipv6_destopt_hao* null, %struct.ipv6_destopt_hao** %9, align 8
  store i32 0, i32* %13, align 4
  %20 = load %struct.flowi*, %struct.flowi** %6, align 8
  %21 = getelementptr inbounds %struct.flowi, %struct.flowi* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @IPPROTO_MH, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %3
  %26 = load %struct.flowi*, %struct.flowi** %6, align 8
  %27 = getelementptr inbounds %struct.flowi, %struct.flowi* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @IP6_MH_TYPE_MAX, align 8
  %30 = icmp sle i64 %28, %29
  br label %31

31:                                               ; preds = %25, %3
  %32 = phi i1 [ false, %3 ], [ %30, %25 ]
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %141

37:                                               ; preds = %31
  %38 = load %struct.inet6_skb_parm*, %struct.inet6_skb_parm** %8, align 8
  %39 = getelementptr inbounds %struct.inet6_skb_parm, %struct.inet6_skb_parm* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @likely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %63

43:                                               ; preds = %37
  %44 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %45 = load %struct.inet6_skb_parm*, %struct.inet6_skb_parm** %8, align 8
  %46 = getelementptr inbounds %struct.inet6_skb_parm, %struct.inet6_skb_parm* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @IPV6_TLV_HAO, align 4
  %49 = call i32 @ipv6_find_tlv(%struct.sk_buff* %44, i32 %47, i32 %48)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp sge i32 %50, 0
  %52 = zext i1 %51 to i32
  %53 = call i64 @likely(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %43
  %56 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %57 = call i64 @skb_network_header(%struct.sk_buff* %56)
  %58 = load i32, i32* %11, align 4
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %57, %59
  %61 = inttoptr i64 %60 to %struct.ipv6_destopt_hao*
  store %struct.ipv6_destopt_hao* %61, %struct.ipv6_destopt_hao** %9, align 8
  br label %62

62:                                               ; preds = %55, %43
  br label %63

63:                                               ; preds = %62, %37
  %64 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %65 = call i32 @skb_get_timestamp(%struct.sk_buff* %64, %struct.timeval* %12)
  %66 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %67 = call %struct.TYPE_2__* @ipv6_hdr(%struct.sk_buff* %66)
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load %struct.ipv6_destopt_hao*, %struct.ipv6_destopt_hao** %9, align 8
  %70 = icmp ne %struct.ipv6_destopt_hao* %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %63
  %72 = load %struct.ipv6_destopt_hao*, %struct.ipv6_destopt_hao** %9, align 8
  %73 = getelementptr inbounds %struct.ipv6_destopt_hao, %struct.ipv6_destopt_hao* %72, i32 0, i32 0
  br label %78

74:                                               ; preds = %63
  %75 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %76 = call %struct.TYPE_2__* @ipv6_hdr(%struct.sk_buff* %75)
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  br label %78

78:                                               ; preds = %74, %71
  %79 = phi i32* [ %73, %71 ], [ %77, %74 ]
  %80 = load %struct.inet6_skb_parm*, %struct.inet6_skb_parm** %8, align 8
  %81 = getelementptr inbounds %struct.inet6_skb_parm, %struct.inet6_skb_parm* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @mip6_report_rl_allow(%struct.timeval* %12, i32* %68, i32* %79, i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %78
  br label %141

86:                                               ; preds = %78
  %87 = call i32 @memset(%struct.xfrm_selector* %10, i32 0, i32 72)
  %88 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %10, i32 0, i32 10
  %89 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %90 = call %struct.TYPE_2__* @ipv6_hdr(%struct.sk_buff* %89)
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  %92 = call i32 @memcpy(i32* %88, i32* %91, i32 4)
  %93 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %10, i32 0, i32 0
  store i32 128, i32* %93, align 8
  %94 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %10, i32 0, i32 9
  %95 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %96 = call %struct.TYPE_2__* @ipv6_hdr(%struct.sk_buff* %95)
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = call i32 @memcpy(i32* %94, i32* %97, i32 4)
  %99 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %10, i32 0, i32 1
  store i32 128, i32* %99, align 4
  %100 = load i32, i32* @AF_INET6, align 4
  %101 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %10, i32 0, i32 8
  store i32 %100, i32* %101, align 8
  %102 = load %struct.flowi*, %struct.flowi** %6, align 8
  %103 = getelementptr inbounds %struct.flowi, %struct.flowi* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %10, i32 0, i32 2
  store i64 %104, i64* %105, align 8
  %106 = load %struct.flowi*, %struct.flowi** %6, align 8
  %107 = call i64 @xfrm_flowi_dport(%struct.flowi* %106)
  %108 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %10, i32 0, i32 7
  store i64 %107, i64* %108, align 8
  %109 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %10, i32 0, i32 7
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %86
  %113 = call i8* @htons(i32 -1)
  %114 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %10, i32 0, i32 6
  store i8* %113, i8** %114, align 8
  br label %115

115:                                              ; preds = %112, %86
  %116 = load %struct.flowi*, %struct.flowi** %6, align 8
  %117 = call i64 @xfrm_flowi_sport(%struct.flowi* %116)
  %118 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %10, i32 0, i32 5
  store i64 %117, i64* %118, align 8
  %119 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %10, i32 0, i32 5
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %115
  %123 = call i8* @htons(i32 -1)
  %124 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %10, i32 0, i32 4
  store i8* %123, i8** %124, align 8
  br label %125

125:                                              ; preds = %122, %115
  %126 = load %struct.flowi*, %struct.flowi** %6, align 8
  %127 = getelementptr inbounds %struct.flowi, %struct.flowi* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %10, i32 0, i32 3
  store i32 %128, i32* %129, align 8
  %130 = load %struct.net*, %struct.net** %7, align 8
  %131 = load i32, i32* @IPPROTO_DSTOPTS, align 4
  %132 = load %struct.ipv6_destopt_hao*, %struct.ipv6_destopt_hao** %9, align 8
  %133 = icmp ne %struct.ipv6_destopt_hao* %132, null
  br i1 %133, label %134, label %137

134:                                              ; preds = %125
  %135 = load %struct.ipv6_destopt_hao*, %struct.ipv6_destopt_hao** %9, align 8
  %136 = getelementptr inbounds %struct.ipv6_destopt_hao, %struct.ipv6_destopt_hao* %135, i32 0, i32 0
  br label %138

137:                                              ; preds = %125
  br label %138

138:                                              ; preds = %137, %134
  %139 = phi i32* [ %136, %134 ], [ null, %137 ]
  %140 = call i32 @km_report(%struct.net* %130, i32 %131, %struct.xfrm_selector* %10, i32* %139)
  store i32 %140, i32* %13, align 4
  br label %141

141:                                              ; preds = %138, %85, %36
  %142 = load i32, i32* %13, align 4
  ret i32 %142
}

declare dso_local %struct.net* @xs_net(%struct.xfrm_state*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @ipv6_find_tlv(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @skb_network_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_get_timestamp(%struct.sk_buff*, %struct.timeval*) #1

declare dso_local i32 @mip6_report_rl_allow(%struct.timeval*, i32*, i32*, i32) #1

declare dso_local %struct.TYPE_2__* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @memset(%struct.xfrm_selector*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @xfrm_flowi_dport(%struct.flowi*) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i64 @xfrm_flowi_sport(%struct.flowi*) #1

declare dso_local i32 @km_report(%struct.net*, i32, %struct.xfrm_selector*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
