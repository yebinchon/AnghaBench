; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_raw.c_rawv6_recvmsg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_raw.c_rawv6_recvmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i32 }
%struct.sock = type { i32 }
%struct.msghdr = type { i32, i32, i64 }
%struct.ipv6_pinfo = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.sockaddr_in6 = type { i64, i32, i64, i64, i32 }
%struct.sk_buff = type { i64 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i64 }

@MSG_OOB = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@MSG_ERRQUEUE = common dso_local global i32 0, align 4
@MSG_TRUNC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@IPV6_ADDR_LINKLOCAL = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EHOSTUNREACH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kiocb*, %struct.sock*, %struct.msghdr*, i64, i32, i32, i32*)* @rawv6_recvmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rawv6_recvmsg(%struct.kiocb* %0, %struct.sock* %1, %struct.msghdr* %2, i64 %3, i32 %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.kiocb*, align 8
  %10 = alloca %struct.sock*, align 8
  %11 = alloca %struct.msghdr*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.ipv6_pinfo*, align 8
  %17 = alloca %struct.sockaddr_in6*, align 8
  %18 = alloca %struct.sk_buff*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store %struct.kiocb* %0, %struct.kiocb** %9, align 8
  store %struct.sock* %1, %struct.sock** %10, align 8
  store %struct.msghdr* %2, %struct.msghdr** %11, align 8
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  %21 = load %struct.sock*, %struct.sock** %10, align 8
  %22 = call %struct.ipv6_pinfo* @inet6_sk(%struct.sock* %21)
  store %struct.ipv6_pinfo* %22, %struct.ipv6_pinfo** %16, align 8
  %23 = load %struct.msghdr*, %struct.msghdr** %11, align 8
  %24 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %26, %struct.sockaddr_in6** %17, align 8
  %27 = load i32, i32* %14, align 4
  %28 = load i32, i32* @MSG_OOB, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %7
  %32 = load i32, i32* @EOPNOTSUPP, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %8, align 4
  br label %202

34:                                               ; preds = %7
  %35 = load i32, i32* %14, align 4
  %36 = load i32, i32* @MSG_ERRQUEUE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = load %struct.sock*, %struct.sock** %10, align 8
  %41 = load %struct.msghdr*, %struct.msghdr** %11, align 8
  %42 = load i64, i64* %12, align 8
  %43 = load i32*, i32** %15, align 8
  %44 = call i32 @ipv6_recv_error(%struct.sock* %40, %struct.msghdr* %41, i64 %42, i32* %43)
  store i32 %44, i32* %8, align 4
  br label %202

45:                                               ; preds = %34
  %46 = load %struct.sock*, %struct.sock** %10, align 8
  %47 = load i32, i32* %14, align 4
  %48 = load i32, i32* %13, align 4
  %49 = call %struct.sk_buff* @skb_recv_datagram(%struct.sock* %46, i32 %47, i32 %48, i32* %20)
  store %struct.sk_buff* %49, %struct.sk_buff** %18, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %51 = icmp ne %struct.sk_buff* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %45
  br label %180

53:                                               ; preds = %45
  %54 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %55 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %19, align 8
  %57 = load i64, i64* %19, align 8
  %58 = load i64, i64* %12, align 8
  %59 = icmp ugt i64 %57, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %53
  %61 = load i64, i64* %12, align 8
  store i64 %61, i64* %19, align 8
  %62 = load i32, i32* @MSG_TRUNC, align 4
  %63 = load %struct.msghdr*, %struct.msghdr** %11, align 8
  %64 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 8
  br label %67

67:                                               ; preds = %60, %53
  %68 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %69 = call i64 @skb_csum_unnecessary(%struct.sk_buff* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %67
  %72 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %73 = load %struct.msghdr*, %struct.msghdr** %11, align 8
  %74 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i64, i64* %19, align 8
  %77 = call i32 @skb_copy_datagram_iovec(%struct.sk_buff* %72, i32 0, i32 %75, i64 %76)
  store i32 %77, i32* %20, align 4
  br label %110

78:                                               ; preds = %67
  %79 = load %struct.msghdr*, %struct.msghdr** %11, align 8
  %80 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @MSG_TRUNC, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %97

85:                                               ; preds = %78
  %86 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %87 = call i64 @__skb_checksum_complete(%struct.sk_buff* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %85
  br label %182

90:                                               ; preds = %85
  %91 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %92 = load %struct.msghdr*, %struct.msghdr** %11, align 8
  %93 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i64, i64* %19, align 8
  %96 = call i32 @skb_copy_datagram_iovec(%struct.sk_buff* %91, i32 0, i32 %94, i64 %95)
  store i32 %96, i32* %20, align 4
  br label %109

97:                                               ; preds = %78
  %98 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %99 = load %struct.msghdr*, %struct.msghdr** %11, align 8
  %100 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @skb_copy_and_csum_datagram_iovec(%struct.sk_buff* %98, i32 0, i32 %101)
  store i32 %102, i32* %20, align 4
  %103 = load i32, i32* %20, align 4
  %104 = load i32, i32* @EINVAL, align 4
  %105 = sub nsw i32 0, %104
  %106 = icmp eq i32 %103, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %97
  br label %182

108:                                              ; preds = %97
  br label %109

109:                                              ; preds = %108, %90
  br label %110

110:                                              ; preds = %109, %71
  %111 = load i32, i32* %20, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %110
  br label %176

114:                                              ; preds = %110
  %115 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %17, align 8
  %116 = icmp ne %struct.sockaddr_in6* %115, null
  br i1 %116, label %117, label %148

117:                                              ; preds = %114
  %118 = load i32, i32* @AF_INET6, align 4
  %119 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %17, align 8
  %120 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %119, i32 0, i32 4
  store i32 %118, i32* %120, align 8
  %121 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %17, align 8
  %122 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %121, i32 0, i32 3
  store i64 0, i64* %122, align 8
  %123 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %17, align 8
  %124 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %123, i32 0, i32 1
  %125 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %126 = call %struct.TYPE_5__* @ipv6_hdr(%struct.sk_buff* %125)
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 0
  %128 = call i32 @ipv6_addr_copy(i32* %124, i32* %127)
  %129 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %17, align 8
  %130 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %129, i32 0, i32 2
  store i64 0, i64* %130, align 8
  %131 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %17, align 8
  %132 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %131, i32 0, i32 0
  store i64 0, i64* %132, align 8
  %133 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %17, align 8
  %134 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %133, i32 0, i32 1
  %135 = call i32 @ipv6_addr_type(i32* %134)
  %136 = load i32, i32* @IPV6_ADDR_LINKLOCAL, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %146

139:                                              ; preds = %117
  %140 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %141 = call %struct.TYPE_6__* @IP6CB(%struct.sk_buff* %140)
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %17, align 8
  %145 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %144, i32 0, i32 0
  store i64 %143, i64* %145, align 8
  br label %146

146:                                              ; preds = %139, %117
  %147 = load i32*, i32** %15, align 8
  store i32 40, i32* %147, align 4
  br label %148

148:                                              ; preds = %146, %114
  %149 = load %struct.msghdr*, %struct.msghdr** %11, align 8
  %150 = load %struct.sock*, %struct.sock** %10, align 8
  %151 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %152 = call i32 @sock_recv_ts_and_drops(%struct.msghdr* %149, %struct.sock* %150, %struct.sk_buff* %151)
  %153 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %16, align 8
  %154 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %163

158:                                              ; preds = %148
  %159 = load %struct.sock*, %struct.sock** %10, align 8
  %160 = load %struct.msghdr*, %struct.msghdr** %11, align 8
  %161 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %162 = call i32 @datagram_recv_ctl(%struct.sock* %159, %struct.msghdr* %160, %struct.sk_buff* %161)
  br label %163

163:                                              ; preds = %158, %148
  %164 = load i64, i64* %19, align 8
  %165 = trunc i64 %164 to i32
  store i32 %165, i32* %20, align 4
  %166 = load i32, i32* %14, align 4
  %167 = load i32, i32* @MSG_TRUNC, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %175

170:                                              ; preds = %163
  %171 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %172 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = trunc i64 %173 to i32
  store i32 %174, i32* %20, align 4
  br label %175

175:                                              ; preds = %170, %163
  br label %176

176:                                              ; preds = %175, %113
  %177 = load %struct.sock*, %struct.sock** %10, align 8
  %178 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %179 = call i32 @skb_free_datagram(%struct.sock* %177, %struct.sk_buff* %178)
  br label %180

180:                                              ; preds = %197, %176, %52
  %181 = load i32, i32* %20, align 4
  store i32 %181, i32* %8, align 4
  br label %202

182:                                              ; preds = %107, %89
  %183 = load %struct.sock*, %struct.sock** %10, align 8
  %184 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %185 = load i32, i32* %14, align 4
  %186 = call i32 @skb_kill_datagram(%struct.sock* %183, %struct.sk_buff* %184, i32 %185)
  %187 = load i32, i32* %14, align 4
  %188 = load i32, i32* @MSG_DONTWAIT, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %182
  %192 = load i32, i32* @EAGAIN, align 4
  %193 = sub nsw i32 0, %192
  br label %197

194:                                              ; preds = %182
  %195 = load i32, i32* @EHOSTUNREACH, align 4
  %196 = sub nsw i32 0, %195
  br label %197

197:                                              ; preds = %194, %191
  %198 = phi i32 [ %193, %191 ], [ %196, %194 ]
  store i32 %198, i32* %20, align 4
  %199 = load %struct.sock*, %struct.sock** %10, align 8
  %200 = getelementptr inbounds %struct.sock, %struct.sock* %199, i32 0, i32 0
  %201 = call i32 @atomic_inc(i32* %200)
  br label %180

202:                                              ; preds = %180, %39, %31
  %203 = load i32, i32* %8, align 4
  ret i32 %203
}

declare dso_local %struct.ipv6_pinfo* @inet6_sk(%struct.sock*) #1

declare dso_local i32 @ipv6_recv_error(%struct.sock*, %struct.msghdr*, i64, i32*) #1

declare dso_local %struct.sk_buff* @skb_recv_datagram(%struct.sock*, i32, i32, i32*) #1

declare dso_local i64 @skb_csum_unnecessary(%struct.sk_buff*) #1

declare dso_local i32 @skb_copy_datagram_iovec(%struct.sk_buff*, i32, i32, i64) #1

declare dso_local i64 @__skb_checksum_complete(%struct.sk_buff*) #1

declare dso_local i32 @skb_copy_and_csum_datagram_iovec(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @ipv6_addr_copy(i32*, i32*) #1

declare dso_local %struct.TYPE_5__* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ipv6_addr_type(i32*) #1

declare dso_local %struct.TYPE_6__* @IP6CB(%struct.sk_buff*) #1

declare dso_local i32 @sock_recv_ts_and_drops(%struct.msghdr*, %struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @datagram_recv_ctl(%struct.sock*, %struct.msghdr*, %struct.sk_buff*) #1

declare dso_local i32 @skb_free_datagram(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @skb_kill_datagram(%struct.sock*, %struct.sk_buff*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
