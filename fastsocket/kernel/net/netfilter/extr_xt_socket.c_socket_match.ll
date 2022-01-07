; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_socket.c_socket_match.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_socket.c_socket_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_10__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.xt_match_param = type { i32 }
%struct.xt_socket_mtinfo1 = type { i32 }
%struct.iphdr = type { i64, i32, i32 }
%struct.udphdr = type { i32, i32 }
%struct.sock = type { i64 }
%struct.TYPE_18__ = type { i64, i64 }
%struct.TYPE_17__ = type { i64 }

@IPPROTO_UDP = common dso_local global i64 0, align 8
@IPPROTO_TCP = common dso_local global i64 0, align 8
@IPPROTO_ICMP = common dso_local global i64 0, align 8
@NFT_LOOKUP_ANY = common dso_local global i32 0, align 4
@TCP_TIME_WAIT = common dso_local global i64 0, align 8
@XT_SOCKET_TRANSPARENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"proto %hhu %pI4:%hu -> %pI4:%hu (orig %pI4:%hu) sock %p\0A\00", align 1
@IPS_SRC_NAT_DONE = common dso_local global i32 0, align 4
@IP_CT_DIR_ORIGINAL = common dso_local global i64 0, align 8
@IP_CT_ESTABLISHED = common dso_local global i32 0, align 4
@IP_CT_IS_REPLY = common dso_local global i32 0, align 4
@IP_CT_RELATED = common dso_local global i32 0, align 4
@nf_conntrack_untracked = common dso_local global %struct.nf_conn zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_match_param*, %struct.xt_socket_mtinfo1*)* @socket_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @socket_match(%struct.sk_buff* %0, %struct.xt_match_param* %1, %struct.xt_socket_mtinfo1* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.xt_match_param*, align 8
  %7 = alloca %struct.xt_socket_mtinfo1*, align 8
  %8 = alloca %struct.iphdr*, align 8
  %9 = alloca %struct.udphdr, align 4
  %10 = alloca %struct.udphdr*, align 8
  %11 = alloca %struct.sock*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.xt_match_param* %1, %struct.xt_match_param** %6, align 8
  store %struct.xt_socket_mtinfo1* %2, %struct.xt_socket_mtinfo1** %7, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %19)
  store %struct.iphdr* %20, %struct.iphdr** %8, align 8
  store %struct.udphdr* null, %struct.udphdr** %10, align 8
  %21 = load %struct.iphdr*, %struct.iphdr** %8, align 8
  %22 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @IPPROTO_UDP, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %32, label %26

26:                                               ; preds = %3
  %27 = load %struct.iphdr*, %struct.iphdr** %8, align 8
  %28 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @IPPROTO_TCP, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %56

32:                                               ; preds = %26, %3
  %33 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %35 = call i32 @ip_hdrlen(%struct.sk_buff* %34)
  %36 = call %struct.udphdr* @skb_header_pointer(%struct.sk_buff* %33, i32 %35, i32 8, %struct.udphdr* %9)
  store %struct.udphdr* %36, %struct.udphdr** %10, align 8
  %37 = load %struct.udphdr*, %struct.udphdr** %10, align 8
  %38 = icmp eq %struct.udphdr* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %173

40:                                               ; preds = %32
  %41 = load %struct.iphdr*, %struct.iphdr** %8, align 8
  %42 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %16, align 8
  %44 = load %struct.iphdr*, %struct.iphdr** %8, align 8
  %45 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %13, align 4
  %47 = load %struct.udphdr*, %struct.udphdr** %10, align 8
  %48 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %15, align 4
  %50 = load %struct.iphdr*, %struct.iphdr** %8, align 8
  %51 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* %12, align 4
  %53 = load %struct.udphdr*, %struct.udphdr** %10, align 8
  %54 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %14, align 4
  br label %70

56:                                               ; preds = %26
  %57 = load %struct.iphdr*, %struct.iphdr** %8, align 8
  %58 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @IPPROTO_ICMP, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %56
  %63 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %64 = call i64 @extract_icmp4_fields(%struct.sk_buff* %63, i64* %16, i32* %13, i32* %12, i32* %15, i32* %14)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  store i32 0, i32* %4, align 4
  br label %173

67:                                               ; preds = %62
  br label %69

68:                                               ; preds = %56
  store i32 0, i32* %4, align 4
  br label %173

69:                                               ; preds = %67
  br label %70

70:                                               ; preds = %69, %40
  %71 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %72 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @dev_net(i32 %73)
  %75 = load i64, i64* %16, align 8
  %76 = load i32, i32* %13, align 4
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* %15, align 4
  %79 = load i32, i32* %14, align 4
  %80 = load %struct.xt_match_param*, %struct.xt_match_param** %6, align 8
  %81 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @NFT_LOOKUP_ANY, align 4
  %84 = call %struct.sock* @nf_tproxy_get_sock_v4(i32 %74, i64 %75, i32 %76, i32 %77, i32 %78, i32 %79, i32 %82, i32 %83)
  store %struct.sock* %84, %struct.sock** %11, align 8
  %85 = load %struct.sock*, %struct.sock** %11, align 8
  %86 = icmp ne %struct.sock* %85, null
  br i1 %86, label %87, label %150

87:                                               ; preds = %70
  store i32 1, i32* %18, align 4
  %88 = load %struct.sock*, %struct.sock** %11, align 8
  %89 = getelementptr inbounds %struct.sock, %struct.sock* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @TCP_TIME_WAIT, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %87
  %94 = load %struct.sock*, %struct.sock** %11, align 8
  %95 = call %struct.TYPE_18__* @inet_sk(%struct.sock* %94)
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp eq i64 %97, 0
  br label %99

99:                                               ; preds = %93, %87
  %100 = phi i1 [ false, %87 ], [ %98, %93 ]
  %101 = zext i1 %100 to i32
  store i32 %101, i32* %17, align 4
  %102 = load %struct.xt_socket_mtinfo1*, %struct.xt_socket_mtinfo1** %7, align 8
  %103 = icmp ne %struct.xt_socket_mtinfo1* %102, null
  br i1 %103, label %104, label %140

104:                                              ; preds = %99
  %105 = load %struct.xt_socket_mtinfo1*, %struct.xt_socket_mtinfo1** %7, align 8
  %106 = getelementptr inbounds %struct.xt_socket_mtinfo1, %struct.xt_socket_mtinfo1* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @XT_SOCKET_TRANSPARENT, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %140

111:                                              ; preds = %104
  %112 = load %struct.sock*, %struct.sock** %11, align 8
  %113 = getelementptr inbounds %struct.sock, %struct.sock* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @TCP_TIME_WAIT, align 8
  %116 = icmp ne i64 %114, %115
  br i1 %116, label %117, label %123

117:                                              ; preds = %111
  %118 = load %struct.sock*, %struct.sock** %11, align 8
  %119 = call %struct.TYPE_18__* @inet_sk(%struct.sock* %118)
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %137, label %123

123:                                              ; preds = %117, %111
  %124 = load %struct.sock*, %struct.sock** %11, align 8
  %125 = getelementptr inbounds %struct.sock, %struct.sock* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @TCP_TIME_WAIT, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %135

129:                                              ; preds = %123
  %130 = load %struct.sock*, %struct.sock** %11, align 8
  %131 = call %struct.TYPE_17__* @inet_twsk(%struct.sock* %130)
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br label %135

135:                                              ; preds = %129, %123
  %136 = phi i1 [ false, %123 ], [ %134, %129 ]
  br label %137

137:                                              ; preds = %135, %117
  %138 = phi i1 [ true, %117 ], [ %136, %135 ]
  %139 = zext i1 %138 to i32
  store i32 %139, i32* %18, align 4
  br label %140

140:                                              ; preds = %137, %104, %99
  %141 = load %struct.sock*, %struct.sock** %11, align 8
  %142 = call i32 @xt_socket_put_sk(%struct.sock* %141)
  %143 = load i32, i32* %17, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %148, label %145

145:                                              ; preds = %140
  %146 = load i32, i32* %18, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %149, label %148

148:                                              ; preds = %145, %140
  store %struct.sock* null, %struct.sock** %11, align 8
  br label %149

149:                                              ; preds = %148, %145
  br label %150

150:                                              ; preds = %149, %70
  %151 = load i64, i64* %16, align 8
  %152 = load i32, i32* %15, align 4
  %153 = call i32 @ntohs(i32 %152)
  %154 = load i32, i32* %14, align 4
  %155 = call i32 @ntohs(i32 %154)
  %156 = load %struct.iphdr*, %struct.iphdr** %8, align 8
  %157 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %156, i32 0, i32 1
  %158 = load %struct.udphdr*, %struct.udphdr** %10, align 8
  %159 = icmp ne %struct.udphdr* %158, null
  br i1 %159, label %160, label %165

160:                                              ; preds = %150
  %161 = load %struct.udphdr*, %struct.udphdr** %10, align 8
  %162 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @ntohs(i32 %163)
  br label %166

165:                                              ; preds = %150
  br label %166

166:                                              ; preds = %165, %160
  %167 = phi i32 [ %164, %160 ], [ 0, %165 ]
  %168 = load %struct.sock*, %struct.sock** %11, align 8
  %169 = call i32 @pr_debug(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i64 %151, i32* %13, i32 %153, i32* %12, i32 %155, i32* %157, i32 %167, %struct.sock* %168)
  %170 = load %struct.sock*, %struct.sock** %11, align 8
  %171 = icmp ne %struct.sock* %170, null
  %172 = zext i1 %171 to i32
  store i32 %172, i32* %4, align 4
  br label %173

173:                                              ; preds = %166, %68, %66, %39
  %174 = load i32, i32* %4, align 4
  ret i32 %174
}

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local %struct.udphdr* @skb_header_pointer(%struct.sk_buff*, i32, i32, %struct.udphdr*) #1

declare dso_local i32 @ip_hdrlen(%struct.sk_buff*) #1

declare dso_local i64 @extract_icmp4_fields(%struct.sk_buff*, i64*, i32*, i32*, i32*, i32*) #1

declare dso_local %struct.sock* @nf_tproxy_get_sock_v4(i32, i64, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dev_net(i32) #1

declare dso_local %struct.TYPE_18__* @inet_sk(%struct.sock*) #1

declare dso_local %struct.TYPE_17__* @inet_twsk(%struct.sock*) #1

declare dso_local i32 @xt_socket_put_sk(%struct.sock*) #1

declare dso_local i32 @pr_debug(i8*, i64, i32*, i32, i32*, i32, i32*, i32, %struct.sock*) #1

declare dso_local i32 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
