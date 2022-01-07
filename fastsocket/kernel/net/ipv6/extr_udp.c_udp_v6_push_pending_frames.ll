; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_udp.c_udp_v6_push_pending_frames.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_udp.c_udp_v6_push_pending_frames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i64 }
%struct.udphdr = type { i64, i32, i32, i32 }
%struct.udp_sock = type { i64, i64 }
%struct.inet_sock = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.flowi }
%struct.flowi = type { i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@AF_INET = common dso_local global i64 0, align 8
@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@CSUM_MANGLED_0 = common dso_local global i64 0, align 8
@ENOBUFS = common dso_local global i32 0, align 4
@UDP_MIB_SNDBUFERRORS = common dso_local global i32 0, align 4
@UDP_MIB_OUTDATAGRAMS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*)* @udp_v6_push_pending_frames to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udp_v6_push_pending_frames(%struct.sock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.udphdr*, align 8
  %6 = alloca %struct.udp_sock*, align 8
  %7 = alloca %struct.inet_sock*, align 8
  %8 = alloca %struct.flowi*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  %12 = load %struct.sock*, %struct.sock** %3, align 8
  %13 = call %struct.udp_sock* @udp_sk(%struct.sock* %12)
  store %struct.udp_sock* %13, %struct.udp_sock** %6, align 8
  %14 = load %struct.sock*, %struct.sock** %3, align 8
  %15 = call %struct.inet_sock* @inet_sk(%struct.sock* %14)
  store %struct.inet_sock* %15, %struct.inet_sock** %7, align 8
  store i32 0, i32* %9, align 4
  %16 = load %struct.sock*, %struct.sock** %3, align 8
  %17 = call i32 @IS_UDPLITE(%struct.sock* %16)
  store i32 %17, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %18 = load %struct.udp_sock*, %struct.udp_sock** %6, align 8
  %19 = getelementptr inbounds %struct.udp_sock, %struct.udp_sock* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @AF_INET, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load %struct.sock*, %struct.sock** %3, align 8
  %25 = call i32 @udp_push_pending_frames(%struct.sock* %24)
  store i32 %25, i32* %2, align 4
  br label %144

26:                                               ; preds = %1
  %27 = load %struct.inet_sock*, %struct.inet_sock** %7, align 8
  %28 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store %struct.flowi* %29, %struct.flowi** %8, align 8
  %30 = load %struct.sock*, %struct.sock** %3, align 8
  %31 = getelementptr inbounds %struct.sock, %struct.sock* %30, i32 0, i32 0
  %32 = call %struct.sk_buff* @skb_peek(i32* %31)
  store %struct.sk_buff* %32, %struct.sk_buff** %4, align 8
  %33 = icmp eq %struct.sk_buff* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  br label %138

35:                                               ; preds = %26
  %36 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %37 = call %struct.udphdr* @udp_hdr(%struct.sk_buff* %36)
  store %struct.udphdr* %37, %struct.udphdr** %5, align 8
  %38 = load %struct.flowi*, %struct.flowi** %8, align 8
  %39 = getelementptr inbounds %struct.flowi, %struct.flowi* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.udphdr*, %struct.udphdr** %5, align 8
  %42 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 8
  %43 = load %struct.flowi*, %struct.flowi** %8, align 8
  %44 = getelementptr inbounds %struct.flowi, %struct.flowi* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.udphdr*, %struct.udphdr** %5, align 8
  %47 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  %48 = load %struct.udp_sock*, %struct.udp_sock** %6, align 8
  %49 = getelementptr inbounds %struct.udp_sock, %struct.udp_sock* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @htons(i64 %50)
  %52 = load %struct.udphdr*, %struct.udphdr** %5, align 8
  %53 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 8
  %54 = load %struct.udphdr*, %struct.udphdr** %5, align 8
  %55 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %54, i32 0, i32 0
  store i64 0, i64* %55, align 8
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %35
  %59 = load %struct.sock*, %struct.sock** %3, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %61 = call i32 @udplite_csum_outgoing(%struct.sock* %59, %struct.sk_buff* %60)
  store i32 %61, i32* %11, align 4
  br label %84

62:                                               ; preds = %35
  %63 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %64 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %79

68:                                               ; preds = %62
  %69 = load %struct.sock*, %struct.sock** %3, align 8
  %70 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %71 = load %struct.flowi*, %struct.flowi** %8, align 8
  %72 = getelementptr inbounds %struct.flowi, %struct.flowi* %71, i32 0, i32 2
  %73 = load %struct.flowi*, %struct.flowi** %8, align 8
  %74 = getelementptr inbounds %struct.flowi, %struct.flowi* %73, i32 0, i32 1
  %75 = load %struct.udp_sock*, %struct.udp_sock** %6, align 8
  %76 = getelementptr inbounds %struct.udp_sock, %struct.udp_sock* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @udp6_hwcsum_outgoing(%struct.sock* %69, %struct.sk_buff* %70, i32* %72, i32* %74, i64 %77)
  br label %108

79:                                               ; preds = %62
  %80 = load %struct.sock*, %struct.sock** %3, align 8
  %81 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %82 = call i32 @udp_csum_outgoing(%struct.sock* %80, %struct.sk_buff* %81)
  store i32 %82, i32* %11, align 4
  br label %83

83:                                               ; preds = %79
  br label %84

84:                                               ; preds = %83, %58
  %85 = load %struct.flowi*, %struct.flowi** %8, align 8
  %86 = getelementptr inbounds %struct.flowi, %struct.flowi* %85, i32 0, i32 2
  %87 = load %struct.flowi*, %struct.flowi** %8, align 8
  %88 = getelementptr inbounds %struct.flowi, %struct.flowi* %87, i32 0, i32 1
  %89 = load %struct.udp_sock*, %struct.udp_sock** %6, align 8
  %90 = getelementptr inbounds %struct.udp_sock, %struct.udp_sock* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.flowi*, %struct.flowi** %8, align 8
  %93 = getelementptr inbounds %struct.flowi, %struct.flowi* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %11, align 4
  %96 = call i64 @csum_ipv6_magic(i32* %86, i32* %88, i64 %91, i32 %94, i32 %95)
  %97 = load %struct.udphdr*, %struct.udphdr** %5, align 8
  %98 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %97, i32 0, i32 0
  store i64 %96, i64* %98, align 8
  %99 = load %struct.udphdr*, %struct.udphdr** %5, align 8
  %100 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %84
  %104 = load i64, i64* @CSUM_MANGLED_0, align 8
  %105 = load %struct.udphdr*, %struct.udphdr** %5, align 8
  %106 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %105, i32 0, i32 0
  store i64 %104, i64* %106, align 8
  br label %107

107:                                              ; preds = %103, %84
  br label %108

108:                                              ; preds = %107, %68
  %109 = load %struct.sock*, %struct.sock** %3, align 8
  %110 = call i32 @ip6_push_pending_frames(%struct.sock* %109)
  store i32 %110, i32* %9, align 4
  %111 = load i32, i32* %9, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %131

113:                                              ; preds = %108
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* @ENOBUFS, align 4
  %116 = sub nsw i32 0, %115
  %117 = icmp eq i32 %114, %116
  br i1 %117, label %118, label %130

118:                                              ; preds = %113
  %119 = load %struct.sock*, %struct.sock** %3, align 8
  %120 = call %struct.TYPE_4__* @inet6_sk(%struct.sock* %119)
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %130, label %124

124:                                              ; preds = %118
  %125 = load %struct.sock*, %struct.sock** %3, align 8
  %126 = call i32 @sock_net(%struct.sock* %125)
  %127 = load i32, i32* @UDP_MIB_SNDBUFERRORS, align 4
  %128 = load i32, i32* %10, align 4
  %129 = call i32 @UDP6_INC_STATS_USER(i32 %126, i32 %127, i32 %128)
  store i32 0, i32* %9, align 4
  br label %130

130:                                              ; preds = %124, %118, %113
  br label %137

131:                                              ; preds = %108
  %132 = load %struct.sock*, %struct.sock** %3, align 8
  %133 = call i32 @sock_net(%struct.sock* %132)
  %134 = load i32, i32* @UDP_MIB_OUTDATAGRAMS, align 4
  %135 = load i32, i32* %10, align 4
  %136 = call i32 @UDP6_INC_STATS_USER(i32 %133, i32 %134, i32 %135)
  br label %137

137:                                              ; preds = %131, %130
  br label %138

138:                                              ; preds = %137, %34
  %139 = load %struct.udp_sock*, %struct.udp_sock** %6, align 8
  %140 = getelementptr inbounds %struct.udp_sock, %struct.udp_sock* %139, i32 0, i32 1
  store i64 0, i64* %140, align 8
  %141 = load %struct.udp_sock*, %struct.udp_sock** %6, align 8
  %142 = getelementptr inbounds %struct.udp_sock, %struct.udp_sock* %141, i32 0, i32 0
  store i64 0, i64* %142, align 8
  %143 = load i32, i32* %9, align 4
  store i32 %143, i32* %2, align 4
  br label %144

144:                                              ; preds = %138, %23
  %145 = load i32, i32* %2, align 4
  ret i32 %145
}

declare dso_local %struct.udp_sock* @udp_sk(%struct.sock*) #1

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local i32 @IS_UDPLITE(%struct.sock*) #1

declare dso_local i32 @udp_push_pending_frames(%struct.sock*) #1

declare dso_local %struct.sk_buff* @skb_peek(i32*) #1

declare dso_local %struct.udphdr* @udp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @htons(i64) #1

declare dso_local i32 @udplite_csum_outgoing(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @udp6_hwcsum_outgoing(%struct.sock*, %struct.sk_buff*, i32*, i32*, i64) #1

declare dso_local i32 @udp_csum_outgoing(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i64 @csum_ipv6_magic(i32*, i32*, i64, i32, i32) #1

declare dso_local i32 @ip6_push_pending_frames(%struct.sock*) #1

declare dso_local %struct.TYPE_4__* @inet6_sk(%struct.sock*) #1

declare dso_local i32 @UDP6_INC_STATS_USER(i32, i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
