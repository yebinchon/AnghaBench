; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ieee802154/extr_dgram.c_dgram_sendmsg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ieee802154/extr_dgram.c_dgram_sendmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i32 }
%struct.sock = type { i32 }
%struct.msghdr = type { i32, i32 }
%struct.net_device = type { i32, i64 }
%struct.sk_buff = type { i32, %struct.sock*, %struct.net_device* }
%struct.dgram_sock = type { i32, i64, i32, i64 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 (%struct.net_device*)* }

@MSG_OOB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"msg->msg_flags = 0x%x\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ARPHRD_IEEE802154 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"no dev\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"name = %s, mtu = %u\0A\00", align 1
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@IEEE802154_FC_TYPE_DATA = common dso_local global i32 0, align 4
@MAC_CB_FLAG_ACKREQ = common dso_local global i32 0, align 4
@ETH_P_IEEE802154 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"size = %Zu, mtu = %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kiocb*, %struct.sock*, %struct.msghdr*, i64)* @dgram_sendmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dgram_sendmsg(%struct.kiocb* %0, %struct.sock* %1, %struct.msghdr* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kiocb*, align 8
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.msghdr*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca %struct.dgram_sock*, align 8
  %14 = alloca i32, align 4
  store %struct.kiocb* %0, %struct.kiocb** %6, align 8
  store %struct.sock* %1, %struct.sock** %7, align 8
  store %struct.msghdr* %2, %struct.msghdr** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.sock*, %struct.sock** %7, align 8
  %16 = call %struct.dgram_sock* @dgram_sk(%struct.sock* %15)
  store %struct.dgram_sock* %16, %struct.dgram_sock** %13, align 8
  %17 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %18 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @MSG_OOB, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %4
  %24 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %25 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @EOPNOTSUPP, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %191

30:                                               ; preds = %4
  %31 = load %struct.dgram_sock*, %struct.dgram_sock** %13, align 8
  %32 = getelementptr inbounds %struct.dgram_sock, %struct.dgram_sock* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %30
  %36 = load %struct.sock*, %struct.sock** %7, align 8
  %37 = call i32 @sock_net(%struct.sock* %36)
  %38 = load i32, i32* @ARPHRD_IEEE802154, align 4
  %39 = call %struct.net_device* @dev_getfirstbyhwtype(i32 %37, i32 %38)
  store %struct.net_device* %39, %struct.net_device** %10, align 8
  br label %46

40:                                               ; preds = %30
  %41 = load %struct.sock*, %struct.sock** %7, align 8
  %42 = call i32 @sock_net(%struct.sock* %41)
  %43 = load %struct.dgram_sock*, %struct.dgram_sock** %13, align 8
  %44 = getelementptr inbounds %struct.dgram_sock, %struct.dgram_sock* %43, i32 0, i32 0
  %45 = call %struct.net_device* @ieee802154_get_dev(i32 %42, i32* %44)
  store %struct.net_device* %45, %struct.net_device** %10, align 8
  br label %46

46:                                               ; preds = %40, %35
  %47 = load %struct.net_device*, %struct.net_device** %10, align 8
  %48 = icmp ne %struct.net_device* %47, null
  br i1 %48, label %53, label %49

49:                                               ; preds = %46
  %50 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32, i32* @ENXIO, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %14, align 4
  br label %189

53:                                               ; preds = %46
  %54 = load %struct.net_device*, %struct.net_device** %10, align 8
  %55 = getelementptr inbounds %struct.net_device, %struct.net_device* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  store i32 %56, i32* %11, align 4
  %57 = load %struct.net_device*, %struct.net_device** %10, align 8
  %58 = getelementptr inbounds %struct.net_device, %struct.net_device* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* %11, align 4
  %61 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i64 %59, i32 %60)
  %62 = load %struct.sock*, %struct.sock** %7, align 8
  %63 = load %struct.net_device*, %struct.net_device** %10, align 8
  %64 = call i64 @LL_ALLOCATED_SPACE(%struct.net_device* %63)
  %65 = load i64, i64* %9, align 8
  %66 = add i64 %64, %65
  %67 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %68 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @MSG_DONTWAIT, align 4
  %71 = and i32 %69, %70
  %72 = call %struct.sk_buff* @sock_alloc_send_skb(%struct.sock* %62, i64 %66, i32 %71, i32* %14)
  store %struct.sk_buff* %72, %struct.sk_buff** %12, align 8
  %73 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %74 = icmp ne %struct.sk_buff* %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %53
  br label %186

76:                                               ; preds = %53
  %77 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %78 = load %struct.net_device*, %struct.net_device** %10, align 8
  %79 = call i32 @LL_RESERVED_SPACE(%struct.net_device* %78)
  %80 = call i32 @skb_reserve(%struct.sk_buff* %77, i32 %79)
  %81 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %82 = call i32 @skb_reset_network_header(%struct.sk_buff* %81)
  %83 = load i32, i32* @IEEE802154_FC_TYPE_DATA, align 4
  %84 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %85 = call %struct.TYPE_3__* @mac_cb(%struct.sk_buff* %84)
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  store i32 %83, i32* %86, align 4
  %87 = load %struct.dgram_sock*, %struct.dgram_sock** %13, align 8
  %88 = getelementptr inbounds %struct.dgram_sock, %struct.dgram_sock* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %76
  %92 = load i32, i32* @MAC_CB_FLAG_ACKREQ, align 4
  %93 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %94 = call %struct.TYPE_3__* @mac_cb(%struct.sk_buff* %93)
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = or i32 %96, %92
  store i32 %97, i32* %95, align 4
  br label %98

98:                                               ; preds = %91, %76
  %99 = load %struct.net_device*, %struct.net_device** %10, align 8
  %100 = call %struct.TYPE_4__* @ieee802154_mlme_ops(%struct.net_device* %99)
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i32 (%struct.net_device*)*, i32 (%struct.net_device*)** %101, align 8
  %103 = load %struct.net_device*, %struct.net_device** %10, align 8
  %104 = call i32 %102(%struct.net_device* %103)
  %105 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %106 = call %struct.TYPE_3__* @mac_cb(%struct.sk_buff* %105)
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  store i32 %104, i32* %107, align 4
  %108 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %109 = load %struct.net_device*, %struct.net_device** %10, align 8
  %110 = load i32, i32* @ETH_P_IEEE802154, align 4
  %111 = load %struct.dgram_sock*, %struct.dgram_sock** %13, align 8
  %112 = getelementptr inbounds %struct.dgram_sock, %struct.dgram_sock* %111, i32 0, i32 2
  %113 = load %struct.dgram_sock*, %struct.dgram_sock** %13, align 8
  %114 = getelementptr inbounds %struct.dgram_sock, %struct.dgram_sock* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %98
  %118 = load %struct.dgram_sock*, %struct.dgram_sock** %13, align 8
  %119 = getelementptr inbounds %struct.dgram_sock, %struct.dgram_sock* %118, i32 0, i32 0
  br label %121

120:                                              ; preds = %98
  br label %121

121:                                              ; preds = %120, %117
  %122 = phi i32* [ %119, %117 ], [ null, %120 ]
  %123 = load i64, i64* %9, align 8
  %124 = call i32 @dev_hard_header(%struct.sk_buff* %108, %struct.net_device* %109, i32 %110, i32* %112, i32* %122, i64 %123)
  store i32 %124, i32* %14, align 4
  %125 = load i32, i32* %14, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %121
  br label %183

128:                                              ; preds = %121
  %129 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %130 = call i32 @skb_reset_mac_header(%struct.sk_buff* %129)
  %131 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %132 = load i64, i64* %9, align 8
  %133 = call i32 @skb_put(%struct.sk_buff* %131, i64 %132)
  %134 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %135 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load i64, i64* %9, align 8
  %138 = call i32 @memcpy_fromiovec(i32 %133, i32 %136, i64 %137)
  store i32 %138, i32* %14, align 4
  %139 = load i32, i32* %14, align 4
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %128
  br label %183

142:                                              ; preds = %128
  %143 = load i64, i64* %9, align 8
  %144 = load i32, i32* %11, align 4
  %145 = zext i32 %144 to i64
  %146 = icmp ugt i64 %143, %145
  br i1 %146, label %147, label %153

147:                                              ; preds = %142
  %148 = load i64, i64* %9, align 8
  %149 = load i32, i32* %11, align 4
  %150 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i64 %148, i32 %149)
  %151 = load i32, i32* @EINVAL, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %14, align 4
  br label %183

153:                                              ; preds = %142
  %154 = load %struct.net_device*, %struct.net_device** %10, align 8
  %155 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %156 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %155, i32 0, i32 2
  store %struct.net_device* %154, %struct.net_device** %156, align 8
  %157 = load %struct.sock*, %struct.sock** %7, align 8
  %158 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %159 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %158, i32 0, i32 1
  store %struct.sock* %157, %struct.sock** %159, align 8
  %160 = load i32, i32* @ETH_P_IEEE802154, align 4
  %161 = call i32 @htons(i32 %160)
  %162 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %163 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %162, i32 0, i32 0
  store i32 %161, i32* %163, align 8
  %164 = load %struct.net_device*, %struct.net_device** %10, align 8
  %165 = call i32 @dev_put(%struct.net_device* %164)
  %166 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %167 = call i32 @dev_queue_xmit(%struct.sk_buff* %166)
  store i32 %167, i32* %14, align 4
  %168 = load i32, i32* %14, align 4
  %169 = icmp sgt i32 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %153
  %171 = load i32, i32* %14, align 4
  %172 = call i32 @net_xmit_errno(i32 %171)
  store i32 %172, i32* %14, align 4
  br label %173

173:                                              ; preds = %170, %153
  %174 = load i32, i32* %14, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %173
  %177 = sext i32 %174 to i64
  br label %180

178:                                              ; preds = %173
  %179 = load i64, i64* %9, align 8
  br label %180

180:                                              ; preds = %178, %176
  %181 = phi i64 [ %177, %176 ], [ %179, %178 ]
  %182 = trunc i64 %181 to i32
  store i32 %182, i32* %5, align 4
  br label %191

183:                                              ; preds = %147, %141, %127
  %184 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %185 = call i32 @kfree_skb(%struct.sk_buff* %184)
  br label %186

186:                                              ; preds = %183, %75
  %187 = load %struct.net_device*, %struct.net_device** %10, align 8
  %188 = call i32 @dev_put(%struct.net_device* %187)
  br label %189

189:                                              ; preds = %186, %49
  %190 = load i32, i32* %14, align 4
  store i32 %190, i32* %5, align 4
  br label %191

191:                                              ; preds = %189, %180, %23
  %192 = load i32, i32* %5, align 4
  ret i32 %192
}

declare dso_local %struct.dgram_sock* @dgram_sk(%struct.sock*) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local %struct.net_device* @dev_getfirstbyhwtype(i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local %struct.net_device* @ieee802154_get_dev(i32, i32*) #1

declare dso_local %struct.sk_buff* @sock_alloc_send_skb(%struct.sock*, i64, i32, i32*) #1

declare dso_local i64 @LL_ALLOCATED_SPACE(%struct.net_device*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @LL_RESERVED_SPACE(%struct.net_device*) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_3__* @mac_cb(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_4__* @ieee802154_mlme_ops(%struct.net_device*) #1

declare dso_local i32 @dev_hard_header(%struct.sk_buff*, %struct.net_device*, i32, i32*, i32*, i64) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @memcpy_fromiovec(i32, i32, i64) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local i32 @dev_queue_xmit(%struct.sk_buff*) #1

declare dso_local i32 @net_xmit_errno(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
