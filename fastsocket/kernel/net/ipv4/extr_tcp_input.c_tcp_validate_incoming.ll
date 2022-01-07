; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_input.c_tcp_validate_incoming.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_input.c_tcp_validate_incoming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.tcphdr = type { i64, i64 }
%struct.tcp_sock = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i64, i32 }

@LINUX_MIB_PAWSESTABREJECTED = common dso_local global i32 0, align 4
@TCP_MIB_INERRS = common dso_local global i32 0, align 4
@LINUX_MIB_TCPSYNCHALLENGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*, %struct.tcphdr*, i32)* @tcp_validate_incoming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_validate_incoming(%struct.sock* %0, %struct.sk_buff* %1, %struct.tcphdr* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.tcphdr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.tcp_sock*, align 8
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.tcphdr* %2, %struct.tcphdr** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.sock*, %struct.sock** %6, align 8
  %12 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %11)
  store %struct.tcp_sock* %12, %struct.tcp_sock** %10, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %14 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %15 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %16 = call i64 @tcp_fast_parse_options(%struct.sk_buff* %13, %struct.tcphdr* %14, %struct.tcp_sock* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %43

18:                                               ; preds = %4
  %19 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %20 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %43

24:                                               ; preds = %18
  %25 = load %struct.sock*, %struct.sock** %6, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %27 = call i64 @tcp_paws_discard(%struct.sock* %25, %struct.sk_buff* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %24
  %30 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %31 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %29
  %35 = load %struct.sock*, %struct.sock** %6, align 8
  %36 = call i32 @sock_net(%struct.sock* %35)
  %37 = load i32, i32* @LINUX_MIB_PAWSESTABREJECTED, align 4
  %38 = call i32 @NET_INC_STATS_BH(i32 %36, i32 %37)
  %39 = load %struct.sock*, %struct.sock** %6, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %41 = call i32 @tcp_send_dupack(%struct.sock* %39, %struct.sk_buff* %40)
  br label %114

42:                                               ; preds = %29
  br label %43

43:                                               ; preds = %42, %24, %18, %4
  %44 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %46 = call %struct.TYPE_4__* @TCP_SKB_CB(%struct.sk_buff* %45)
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %50 = call %struct.TYPE_4__* @TCP_SKB_CB(%struct.sk_buff* %49)
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @tcp_sequence(%struct.tcp_sock* %44, i64 %48, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %71, label %55

55:                                               ; preds = %43
  %56 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %57 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %70, label %60

60:                                               ; preds = %55
  %61 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %62 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %98

66:                                               ; preds = %60
  %67 = load %struct.sock*, %struct.sock** %6, align 8
  %68 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %69 = call i32 @tcp_send_dupack(%struct.sock* %67, %struct.sk_buff* %68)
  br label %70

70:                                               ; preds = %66, %55
  br label %114

71:                                               ; preds = %43
  %72 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %73 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %92

76:                                               ; preds = %71
  %77 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %78 = call %struct.TYPE_4__* @TCP_SKB_CB(%struct.sk_buff* %77)
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %82 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp eq i64 %80, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %76
  %86 = load %struct.sock*, %struct.sock** %6, align 8
  %87 = call i32 @tcp_reset(%struct.sock* %86)
  br label %91

88:                                               ; preds = %76
  %89 = load %struct.sock*, %struct.sock** %6, align 8
  %90 = call i32 @tcp_send_challenge_ack(%struct.sock* %89)
  br label %91

91:                                               ; preds = %88, %85
  br label %114

92:                                               ; preds = %71
  %93 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %94 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %113

97:                                               ; preds = %92
  br label %98

98:                                               ; preds = %97, %65
  %99 = load i32, i32* %9, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %98
  %102 = load %struct.sock*, %struct.sock** %6, align 8
  %103 = call i32 @sock_net(%struct.sock* %102)
  %104 = load i32, i32* @TCP_MIB_INERRS, align 4
  %105 = call i32 @TCP_INC_STATS_BH(i32 %103, i32 %104)
  br label %106

106:                                              ; preds = %101, %98
  %107 = load %struct.sock*, %struct.sock** %6, align 8
  %108 = call i32 @sock_net(%struct.sock* %107)
  %109 = load i32, i32* @LINUX_MIB_TCPSYNCHALLENGE, align 4
  %110 = call i32 @NET_INC_STATS_BH(i32 %108, i32 %109)
  %111 = load %struct.sock*, %struct.sock** %6, align 8
  %112 = call i32 @tcp_send_challenge_ack(%struct.sock* %111)
  br label %114

113:                                              ; preds = %92
  store i32 1, i32* %5, align 4
  br label %117

114:                                              ; preds = %106, %91, %70, %34
  %115 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %116 = call i32 @__kfree_skb(%struct.sk_buff* %115)
  store i32 0, i32* %5, align 4
  br label %117

117:                                              ; preds = %114, %113
  %118 = load i32, i32* %5, align 4
  ret i32 %118
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i64 @tcp_fast_parse_options(%struct.sk_buff*, %struct.tcphdr*, %struct.tcp_sock*) #1

declare dso_local i64 @tcp_paws_discard(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @NET_INC_STATS_BH(i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @tcp_send_dupack(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @tcp_sequence(%struct.tcp_sock*, i64, i32) #1

declare dso_local %struct.TYPE_4__* @TCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @tcp_reset(%struct.sock*) #1

declare dso_local i32 @tcp_send_challenge_ack(%struct.sock*) #1

declare dso_local i32 @TCP_INC_STATS_BH(i32, i32) #1

declare dso_local i32 @__kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
