; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_ipv6.c_dccp_v6_do_rcv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_ipv6.c_dccp_v6_do_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64 }
%struct.sk_buff = type { i64, i32 }
%struct.ipv6_pinfo = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@ETH_P_IP = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@DCCP_OPEN = common dso_local global i64 0, align 8
@DCCP_LISTEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*)* @dccp_v6_do_rcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dccp_v6_do_rcv(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ipv6_pinfo*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.sock*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %9 = load %struct.sock*, %struct.sock** %4, align 8
  %10 = call %struct.ipv6_pinfo* @inet6_sk(%struct.sock* %9)
  store %struct.ipv6_pinfo* %10, %struct.ipv6_pinfo** %6, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %7, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i32, i32* @ETH_P_IP, align 4
  %15 = call i64 @htons(i32 %14)
  %16 = icmp eq i64 %13, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.sock*, %struct.sock** %4, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = call i32 @dccp_v4_do_rcv(%struct.sock* %18, %struct.sk_buff* %19)
  store i32 %20, i32* %3, align 4
  br label %124

21:                                               ; preds = %2
  %22 = load %struct.sock*, %struct.sock** %4, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %24 = call i64 @sk_filter(%struct.sock* %22, %struct.sk_buff* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %115

27:                                               ; preds = %21
  %28 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %6, align 8
  %29 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %35 = load i32, i32* @GFP_ATOMIC, align 4
  %36 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %34, i32 %35)
  store %struct.sk_buff* %36, %struct.sk_buff** %7, align 8
  br label %37

37:                                               ; preds = %33, %27
  %38 = load %struct.sock*, %struct.sock** %4, align 8
  %39 = getelementptr inbounds %struct.sock, %struct.sock* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @DCCP_OPEN, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %61

43:                                               ; preds = %37
  %44 = load %struct.sock*, %struct.sock** %4, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %47 = call i32 @dccp_hdr(%struct.sk_buff* %46)
  %48 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @dccp_rcv_established(%struct.sock* %44, %struct.sk_buff* %45, i32 %47, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  br label %111

54:                                               ; preds = %43
  %55 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %56 = icmp ne %struct.sk_buff* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %59 = call i32 @__kfree_skb(%struct.sk_buff* %58)
  br label %60

60:                                               ; preds = %57, %54
  store i32 0, i32* %3, align 4
  br label %124

61:                                               ; preds = %37
  %62 = load %struct.sock*, %struct.sock** %4, align 8
  %63 = getelementptr inbounds %struct.sock, %struct.sock* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @DCCP_LISTEN, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %93

67:                                               ; preds = %61
  %68 = load %struct.sock*, %struct.sock** %4, align 8
  %69 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %70 = call %struct.sock* @dccp_v6_hnd_req(%struct.sock* %68, %struct.sk_buff* %69)
  store %struct.sock* %70, %struct.sock** %8, align 8
  %71 = load %struct.sock*, %struct.sock** %8, align 8
  %72 = icmp eq %struct.sock* %71, null
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  br label %115

74:                                               ; preds = %67
  %75 = load %struct.sock*, %struct.sock** %8, align 8
  %76 = load %struct.sock*, %struct.sock** %4, align 8
  %77 = icmp ne %struct.sock* %75, %76
  br i1 %77, label %78, label %92

78:                                               ; preds = %74
  %79 = load %struct.sock*, %struct.sock** %4, align 8
  %80 = load %struct.sock*, %struct.sock** %8, align 8
  %81 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %82 = call i64 @dccp_child_process(%struct.sock* %79, %struct.sock* %80, %struct.sk_buff* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  br label %111

85:                                               ; preds = %78
  %86 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %87 = icmp ne %struct.sk_buff* %86, null
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %90 = call i32 @__kfree_skb(%struct.sk_buff* %89)
  br label %91

91:                                               ; preds = %88, %85
  store i32 0, i32* %3, align 4
  br label %124

92:                                               ; preds = %74
  br label %93

93:                                               ; preds = %92, %61
  %94 = load %struct.sock*, %struct.sock** %4, align 8
  %95 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %96 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %97 = call i32 @dccp_hdr(%struct.sk_buff* %96)
  %98 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %99 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = call i64 @dccp_rcv_state_process(%struct.sock* %94, %struct.sk_buff* %95, i32 %97, i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %93
  br label %111

104:                                              ; preds = %93
  %105 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %106 = icmp ne %struct.sk_buff* %105, null
  br i1 %106, label %107, label %110

107:                                              ; preds = %104
  %108 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %109 = call i32 @__kfree_skb(%struct.sk_buff* %108)
  br label %110

110:                                              ; preds = %107, %104
  store i32 0, i32* %3, align 4
  br label %124

111:                                              ; preds = %103, %84, %53
  %112 = load %struct.sock*, %struct.sock** %4, align 8
  %113 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %114 = call i32 @dccp_v6_ctl_send_reset(%struct.sock* %112, %struct.sk_buff* %113)
  br label %115

115:                                              ; preds = %111, %73, %26
  %116 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %117 = icmp ne %struct.sk_buff* %116, null
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %120 = call i32 @__kfree_skb(%struct.sk_buff* %119)
  br label %121

121:                                              ; preds = %118, %115
  %122 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %123 = call i32 @kfree_skb(%struct.sk_buff* %122)
  store i32 0, i32* %3, align 4
  br label %124

124:                                              ; preds = %121, %110, %91, %60, %17
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local %struct.ipv6_pinfo* @inet6_sk(%struct.sock*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @dccp_v4_do_rcv(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i64 @sk_filter(%struct.sock*, %struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local i64 @dccp_rcv_established(%struct.sock*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @dccp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @__kfree_skb(%struct.sk_buff*) #1

declare dso_local %struct.sock* @dccp_v6_hnd_req(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i64 @dccp_child_process(%struct.sock*, %struct.sock*, %struct.sk_buff*) #1

declare dso_local i64 @dccp_rcv_state_process(%struct.sock*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @dccp_v6_ctl_send_reset(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
