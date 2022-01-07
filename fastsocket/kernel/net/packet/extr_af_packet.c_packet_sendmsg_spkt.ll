; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/packet/extr_af_packet.c_packet_sendmsg_spkt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/packet/extr_af_packet.c_packet_sendmsg_spkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i32 }
%struct.socket = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.msghdr = type { i32, i32, i64 }
%struct.sockaddr_pkt = type { i64*, i32 }
%struct.sk_buff = type { i64, i64, i32, %struct.net_device*, i32 }
%struct.net_device = type { i32, i64, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ENETDOWN = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kiocb*, %struct.socket*, %struct.msghdr*, i64)* @packet_sendmsg_spkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @packet_sendmsg_spkt(%struct.kiocb* %0, %struct.socket* %1, %struct.msghdr* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kiocb*, align 8
  %7 = alloca %struct.socket*, align 8
  %8 = alloca %struct.msghdr*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sock*, align 8
  %11 = alloca %struct.sockaddr_pkt*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca %struct.net_device*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.kiocb* %0, %struct.kiocb** %6, align 8
  store %struct.socket* %1, %struct.socket** %7, align 8
  store %struct.msghdr* %2, %struct.msghdr** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.socket*, %struct.socket** %7, align 8
  %17 = getelementptr inbounds %struct.socket, %struct.socket* %16, i32 0, i32 0
  %18 = load %struct.sock*, %struct.sock** %17, align 8
  store %struct.sock* %18, %struct.sock** %10, align 8
  %19 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %20 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.sockaddr_pkt*
  store %struct.sockaddr_pkt* %22, %struct.sockaddr_pkt** %11, align 8
  store i32 0, i32* %14, align 4
  %23 = load %struct.sockaddr_pkt*, %struct.sockaddr_pkt** %11, align 8
  %24 = icmp ne %struct.sockaddr_pkt* %23, null
  br i1 %24, label %25, label %45

25:                                               ; preds = %4
  %26 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %27 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = icmp ult i64 %29, 4
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %185

34:                                               ; preds = %25
  %35 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %36 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = icmp eq i64 %38, 16
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load %struct.sockaddr_pkt*, %struct.sockaddr_pkt** %11, align 8
  %42 = getelementptr inbounds %struct.sockaddr_pkt, %struct.sockaddr_pkt* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %14, align 4
  br label %44

44:                                               ; preds = %40, %34
  br label %48

45:                                               ; preds = %4
  %46 = load i32, i32* @ENOTCONN, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %185

48:                                               ; preds = %44
  %49 = load %struct.sockaddr_pkt*, %struct.sockaddr_pkt** %11, align 8
  %50 = getelementptr inbounds %struct.sockaddr_pkt, %struct.sockaddr_pkt* %49, i32 0, i32 0
  %51 = load i64*, i64** %50, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 13
  store i64 0, i64* %52, align 8
  %53 = load %struct.sock*, %struct.sock** %10, align 8
  %54 = call i32 @sock_net(%struct.sock* %53)
  %55 = load %struct.sockaddr_pkt*, %struct.sockaddr_pkt** %11, align 8
  %56 = getelementptr inbounds %struct.sockaddr_pkt, %struct.sockaddr_pkt* %55, i32 0, i32 0
  %57 = load i64*, i64** %56, align 8
  %58 = call %struct.net_device* @dev_get_by_name(i32 %54, i64* %57)
  store %struct.net_device* %58, %struct.net_device** %13, align 8
  %59 = load i32, i32* @ENODEV, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %15, align 4
  %61 = load %struct.net_device*, %struct.net_device** %13, align 8
  %62 = icmp eq %struct.net_device* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %48
  br label %177

64:                                               ; preds = %48
  %65 = load i32, i32* @ENETDOWN, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %15, align 4
  %67 = load %struct.net_device*, %struct.net_device** %13, align 8
  %68 = getelementptr inbounds %struct.net_device, %struct.net_device* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @IFF_UP, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %64
  br label %177

74:                                               ; preds = %64
  %75 = load i32, i32* @EMSGSIZE, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %15, align 4
  %77 = load i64, i64* %9, align 8
  %78 = load %struct.net_device*, %struct.net_device** %13, align 8
  %79 = getelementptr inbounds %struct.net_device, %struct.net_device* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.net_device*, %struct.net_device** %13, align 8
  %82 = getelementptr inbounds %struct.net_device, %struct.net_device* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = add i64 %80, %83
  %85 = icmp ugt i64 %77, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %74
  br label %177

87:                                               ; preds = %74
  %88 = load i32, i32* @ENOBUFS, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %15, align 4
  %90 = load %struct.sock*, %struct.sock** %10, align 8
  %91 = load i64, i64* %9, align 8
  %92 = load %struct.net_device*, %struct.net_device** %13, align 8
  %93 = call i64 @LL_RESERVED_SPACE(%struct.net_device* %92)
  %94 = add i64 %91, %93
  %95 = load i32, i32* @GFP_KERNEL, align 4
  %96 = call %struct.sk_buff* @sock_wmalloc(%struct.sock* %90, i64 %94, i32 0, i32 %95)
  store %struct.sk_buff* %96, %struct.sk_buff** %12, align 8
  %97 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %98 = icmp eq %struct.sk_buff* %97, null
  br i1 %98, label %99, label %100

99:                                               ; preds = %87
  br label %177

100:                                              ; preds = %87
  %101 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %102 = load %struct.net_device*, %struct.net_device** %13, align 8
  %103 = call i64 @LL_RESERVED_SPACE(%struct.net_device* %102)
  %104 = call i32 @skb_reserve(%struct.sk_buff* %101, i64 %103)
  %105 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %106 = call i32 @skb_reset_network_header(%struct.sk_buff* %105)
  %107 = load %struct.net_device*, %struct.net_device** %13, align 8
  %108 = getelementptr inbounds %struct.net_device, %struct.net_device* %107, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %135

111:                                              ; preds = %100
  %112 = load %struct.net_device*, %struct.net_device** %13, align 8
  %113 = getelementptr inbounds %struct.net_device, %struct.net_device* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %116 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = sub i64 %117, %114
  store i64 %118, i64* %116, align 8
  %119 = load %struct.net_device*, %struct.net_device** %13, align 8
  %120 = getelementptr inbounds %struct.net_device, %struct.net_device* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %123 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = sub i64 %124, %121
  store i64 %125, i64* %123, align 8
  %126 = load i64, i64* %9, align 8
  %127 = load %struct.net_device*, %struct.net_device** %13, align 8
  %128 = getelementptr inbounds %struct.net_device, %struct.net_device* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = icmp ult i64 %126, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %111
  %132 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %133 = call i32 @skb_reset_network_header(%struct.sk_buff* %132)
  br label %134

134:                                              ; preds = %131, %111
  br label %135

135:                                              ; preds = %134, %100
  %136 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %137 = load i64, i64* %9, align 8
  %138 = call i32 @skb_put(%struct.sk_buff* %136, i64 %137)
  %139 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %140 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load i64, i64* %9, align 8
  %143 = call i32 @memcpy_fromiovec(i32 %138, i32 %141, i64 %142)
  store i32 %143, i32* %15, align 4
  %144 = load i32, i32* %14, align 4
  %145 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %146 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %145, i32 0, i32 4
  store i32 %144, i32* %146, align 8
  %147 = load %struct.net_device*, %struct.net_device** %13, align 8
  %148 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %149 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %148, i32 0, i32 3
  store %struct.net_device* %147, %struct.net_device** %149, align 8
  %150 = load %struct.sock*, %struct.sock** %10, align 8
  %151 = getelementptr inbounds %struct.sock, %struct.sock* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %154 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %153, i32 0, i32 2
  store i32 %152, i32* %154, align 8
  %155 = load i32, i32* %15, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %135
  br label %174

158:                                              ; preds = %135
  %159 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %160 = load %struct.sock*, %struct.sock** %10, align 8
  %161 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %162 = call i32 @skb_tx(%struct.sk_buff* %161)
  %163 = call i32 @sock_tx_timestamp(%struct.msghdr* %159, %struct.sock* %160, i32 %162)
  store i32 %163, i32* %15, align 4
  %164 = load i32, i32* %15, align 4
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %158
  br label %174

167:                                              ; preds = %158
  %168 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %169 = call i32 @dev_queue_xmit(%struct.sk_buff* %168)
  %170 = load %struct.net_device*, %struct.net_device** %13, align 8
  %171 = call i32 @dev_put(%struct.net_device* %170)
  %172 = load i64, i64* %9, align 8
  %173 = trunc i64 %172 to i32
  store i32 %173, i32* %5, align 4
  br label %185

174:                                              ; preds = %166, %157
  %175 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %176 = call i32 @kfree_skb(%struct.sk_buff* %175)
  br label %177

177:                                              ; preds = %174, %99, %86, %73, %63
  %178 = load %struct.net_device*, %struct.net_device** %13, align 8
  %179 = icmp ne %struct.net_device* %178, null
  br i1 %179, label %180, label %183

180:                                              ; preds = %177
  %181 = load %struct.net_device*, %struct.net_device** %13, align 8
  %182 = call i32 @dev_put(%struct.net_device* %181)
  br label %183

183:                                              ; preds = %180, %177
  %184 = load i32, i32* %15, align 4
  store i32 %184, i32* %5, align 4
  br label %185

185:                                              ; preds = %183, %167, %45, %31
  %186 = load i32, i32* %5, align 4
  ret i32 %186
}

declare dso_local %struct.net_device* @dev_get_by_name(i32, i64*) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local %struct.sk_buff* @sock_wmalloc(%struct.sock*, i64, i32, i32) #1

declare dso_local i64 @LL_RESERVED_SPACE(%struct.net_device*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local i32 @memcpy_fromiovec(i32, i32, i64) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @sock_tx_timestamp(%struct.msghdr*, %struct.sock*, i32) #1

declare dso_local i32 @skb_tx(%struct.sk_buff*) #1

declare dso_local i32 @dev_queue_xmit(%struct.sk_buff*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
