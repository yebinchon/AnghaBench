; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_udp.c_udp_recvmsg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_udp.c_udp_recvmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i32 }
%struct.sock = type { i32 }
%struct.msghdr = type { i32, i32, i64 }
%struct.inet_sock = type { i64 }
%struct.sockaddr_in = type { i32, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@MSG_ERRQUEUE = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@MSG_TRUNC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@UDP_MIB_INDATAGRAMS = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@UDP_MIB_INERRORS = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @udp_recvmsg(%struct.kiocb* %0, %struct.sock* %1, %struct.msghdr* %2, i64 %3, i32 %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.kiocb*, align 8
  %10 = alloca %struct.sock*, align 8
  %11 = alloca %struct.msghdr*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.inet_sock*, align 8
  %17 = alloca %struct.sockaddr_in*, align 8
  %18 = alloca %struct.sk_buff*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.kiocb* %0, %struct.kiocb** %9, align 8
  store %struct.sock* %1, %struct.sock** %10, align 8
  store %struct.msghdr* %2, %struct.msghdr** %11, align 8
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  %24 = load %struct.sock*, %struct.sock** %10, align 8
  %25 = call %struct.inet_sock* @inet_sk(%struct.sock* %24)
  store %struct.inet_sock* %25, %struct.inet_sock** %16, align 8
  %26 = load %struct.msghdr*, %struct.msghdr** %11, align 8
  %27 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %29, %struct.sockaddr_in** %17, align 8
  %30 = load %struct.sock*, %struct.sock** %10, align 8
  %31 = call i32 @IS_UDPLITE(%struct.sock* %30)
  store i32 %31, i32* %23, align 4
  %32 = load i32, i32* %14, align 4
  %33 = load i32, i32* @MSG_ERRQUEUE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %7
  %37 = load %struct.sock*, %struct.sock** %10, align 8
  %38 = load %struct.msghdr*, %struct.msghdr** %11, align 8
  %39 = load i64, i64* %12, align 8
  %40 = load i32*, i32** %15, align 8
  %41 = call i32 @ip_recv_error(%struct.sock* %37, %struct.msghdr* %38, i64 %39, i32* %40)
  store i32 %41, i32* %8, align 4
  br label %211

42:                                               ; preds = %7
  br label %43

43:                                               ; preds = %210, %42
  %44 = load %struct.sock*, %struct.sock** %10, align 8
  %45 = load i32, i32* %14, align 4
  %46 = load i32, i32* %13, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i32, i32* @MSG_DONTWAIT, align 4
  br label %51

50:                                               ; preds = %43
  br label %51

51:                                               ; preds = %50, %48
  %52 = phi i32 [ %49, %48 ], [ 0, %50 ]
  %53 = or i32 %45, %52
  %54 = call %struct.sk_buff* @__skb_recv_datagram(%struct.sock* %44, i32 %53, i32* %21, i32* %22)
  store %struct.sk_buff* %54, %struct.sk_buff** %18, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %56 = icmp ne %struct.sk_buff* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %51
  br label %186

58:                                               ; preds = %51
  %59 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %60 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = sub i64 %62, 4
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %19, align 4
  %65 = load i64, i64* %12, align 8
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %20, align 4
  %67 = load i32, i32* %20, align 4
  %68 = load i32, i32* %19, align 4
  %69 = icmp ugt i32 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %58
  %71 = load i32, i32* %19, align 4
  store i32 %71, i32* %20, align 4
  br label %83

72:                                               ; preds = %58
  %73 = load i32, i32* %20, align 4
  %74 = load i32, i32* %19, align 4
  %75 = icmp ult i32 %73, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %72
  %77 = load i32, i32* @MSG_TRUNC, align 4
  %78 = load %struct.msghdr*, %struct.msghdr** %11, align 8
  %79 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 8
  br label %82

82:                                               ; preds = %76, %72
  br label %83

83:                                               ; preds = %82, %70
  %84 = load i32, i32* %20, align 4
  %85 = load i32, i32* %19, align 4
  %86 = icmp ult i32 %84, %85
  br i1 %86, label %93, label %87

87:                                               ; preds = %83
  %88 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %89 = call %struct.TYPE_8__* @UDP_SKB_CB(%struct.sk_buff* %88)
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %87, %83
  %94 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %95 = call i64 @udp_lib_checksum_complete(%struct.sk_buff* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %93
  br label %188

98:                                               ; preds = %93
  br label %99

99:                                               ; preds = %98, %87
  %100 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %101 = call i64 @skb_csum_unnecessary(%struct.sk_buff* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %99
  %104 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %105 = load %struct.msghdr*, %struct.msghdr** %11, align 8
  %106 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %20, align 4
  %109 = call i32 @skb_copy_datagram_iovec(%struct.sk_buff* %104, i32 4, i32 %107, i32 %108)
  store i32 %109, i32* %22, align 4
  br label %122

110:                                              ; preds = %99
  %111 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %112 = load %struct.msghdr*, %struct.msghdr** %11, align 8
  %113 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @skb_copy_and_csum_datagram_iovec(%struct.sk_buff* %111, i32 4, i32 %114)
  store i32 %115, i32* %22, align 4
  %116 = load i32, i32* %22, align 4
  %117 = load i32, i32* @EINVAL, align 4
  %118 = sub nsw i32 0, %117
  %119 = icmp eq i32 %116, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %110
  br label %188

121:                                              ; preds = %110
  br label %122

122:                                              ; preds = %121, %103
  %123 = load i32, i32* %22, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %122
  br label %182

126:                                              ; preds = %122
  %127 = load i32, i32* %21, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %135, label %129

129:                                              ; preds = %126
  %130 = load %struct.sock*, %struct.sock** %10, align 8
  %131 = call i32 @sock_net(%struct.sock* %130)
  %132 = load i32, i32* @UDP_MIB_INDATAGRAMS, align 4
  %133 = load i32, i32* %23, align 4
  %134 = call i32 @UDP_INC_STATS_USER(i32 %131, i32 %132, i32 %133)
  br label %135

135:                                              ; preds = %129, %126
  %136 = load %struct.msghdr*, %struct.msghdr** %11, align 8
  %137 = load %struct.sock*, %struct.sock** %10, align 8
  %138 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %139 = call i32 @sock_recv_ts_and_drops(%struct.msghdr* %136, %struct.sock* %137, %struct.sk_buff* %138)
  %140 = load %struct.sockaddr_in*, %struct.sockaddr_in** %17, align 8
  %141 = icmp ne %struct.sockaddr_in* %140, null
  br i1 %141, label %142, label %164

142:                                              ; preds = %135
  %143 = load i32, i32* @AF_INET, align 4
  %144 = load %struct.sockaddr_in*, %struct.sockaddr_in** %17, align 8
  %145 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %144, i32 0, i32 3
  store i32 %143, i32* %145, align 4
  %146 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %147 = call %struct.TYPE_6__* @udp_hdr(%struct.sk_buff* %146)
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.sockaddr_in*, %struct.sockaddr_in** %17, align 8
  %151 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %150, i32 0, i32 2
  store i32 %149, i32* %151, align 4
  %152 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %153 = call %struct.TYPE_7__* @ip_hdr(%struct.sk_buff* %152)
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.sockaddr_in*, %struct.sockaddr_in** %17, align 8
  %157 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 0
  store i32 %155, i32* %158, align 4
  %159 = load %struct.sockaddr_in*, %struct.sockaddr_in** %17, align 8
  %160 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @memset(i32 %161, i32 0, i32 4)
  %163 = load i32*, i32** %15, align 8
  store i32 16, i32* %163, align 4
  br label %164

164:                                              ; preds = %142, %135
  %165 = load %struct.inet_sock*, %struct.inet_sock** %16, align 8
  %166 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %173

169:                                              ; preds = %164
  %170 = load %struct.msghdr*, %struct.msghdr** %11, align 8
  %171 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %172 = call i32 @ip_cmsg_recv(%struct.msghdr* %170, %struct.sk_buff* %171)
  br label %173

173:                                              ; preds = %169, %164
  %174 = load i32, i32* %20, align 4
  store i32 %174, i32* %22, align 4
  %175 = load i32, i32* %14, align 4
  %176 = load i32, i32* @MSG_TRUNC, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %173
  %180 = load i32, i32* %19, align 4
  store i32 %180, i32* %22, align 4
  br label %181

181:                                              ; preds = %179, %173
  br label %182

182:                                              ; preds = %181, %125
  %183 = load %struct.sock*, %struct.sock** %10, align 8
  %184 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %185 = call i32 @skb_free_datagram_locked(%struct.sock* %183, %struct.sk_buff* %184)
  br label %186

186:                                              ; preds = %182, %57
  %187 = load i32, i32* %22, align 4
  store i32 %187, i32* %8, align 4
  br label %211

188:                                              ; preds = %120, %97
  %189 = load %struct.sock*, %struct.sock** %10, align 8
  %190 = call i32 @lock_sock(%struct.sock* %189)
  %191 = load %struct.sock*, %struct.sock** %10, align 8
  %192 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %193 = load i32, i32* %14, align 4
  %194 = call i32 @skb_kill_datagram(%struct.sock* %191, %struct.sk_buff* %192, i32 %193)
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %202, label %196

196:                                              ; preds = %188
  %197 = load %struct.sock*, %struct.sock** %10, align 8
  %198 = call i32 @sock_net(%struct.sock* %197)
  %199 = load i32, i32* @UDP_MIB_INERRORS, align 4
  %200 = load i32, i32* %23, align 4
  %201 = call i32 @UDP_INC_STATS_USER(i32 %198, i32 %199, i32 %200)
  br label %202

202:                                              ; preds = %196, %188
  %203 = load %struct.sock*, %struct.sock** %10, align 8
  %204 = call i32 @release_sock(%struct.sock* %203)
  %205 = load i32, i32* %13, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %210

207:                                              ; preds = %202
  %208 = load i32, i32* @EAGAIN, align 4
  %209 = sub nsw i32 0, %208
  store i32 %209, i32* %8, align 4
  br label %211

210:                                              ; preds = %202
  br label %43

211:                                              ; preds = %207, %186, %36
  %212 = load i32, i32* %8, align 4
  ret i32 %212
}

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local i32 @IS_UDPLITE(%struct.sock*) #1

declare dso_local i32 @ip_recv_error(%struct.sock*, %struct.msghdr*, i64, i32*) #1

declare dso_local %struct.sk_buff* @__skb_recv_datagram(%struct.sock*, i32, i32*, i32*) #1

declare dso_local %struct.TYPE_8__* @UDP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i64 @udp_lib_checksum_complete(%struct.sk_buff*) #1

declare dso_local i64 @skb_csum_unnecessary(%struct.sk_buff*) #1

declare dso_local i32 @skb_copy_datagram_iovec(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @skb_copy_and_csum_datagram_iovec(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @UDP_INC_STATS_USER(i32, i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @sock_recv_ts_and_drops(%struct.msghdr*, %struct.sock*, %struct.sk_buff*) #1

declare dso_local %struct.TYPE_6__* @udp_hdr(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_7__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @ip_cmsg_recv(%struct.msghdr*, %struct.sk_buff*) #1

declare dso_local i32 @skb_free_datagram_locked(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @skb_kill_datagram(%struct.sock*, %struct.sk_buff*, i32) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
