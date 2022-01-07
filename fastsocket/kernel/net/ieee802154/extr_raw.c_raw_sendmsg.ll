; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ieee802154/extr_raw.c_raw_sendmsg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ieee802154/extr_raw.c_raw_sendmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i32 }
%struct.sock = type { i32 }
%struct.msghdr = type { i32, i32 }
%struct.net_device = type { i32, i64 }
%struct.sk_buff = type { i32, %struct.sock*, %struct.net_device* }

@MSG_OOB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"msg->msg_flags = 0x%x\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ARPHRD_IEEE802154 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"no dev\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"name = %s, mtu = %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"size = %Zu, mtu = %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@ETH_P_IEEE802154 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kiocb*, %struct.sock*, %struct.msghdr*, i64)* @raw_sendmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raw_sendmsg(%struct.kiocb* %0, %struct.sock* %1, %struct.msghdr* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kiocb*, align 8
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.msghdr*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca i32, align 4
  store %struct.kiocb* %0, %struct.kiocb** %6, align 8
  store %struct.sock* %1, %struct.sock** %7, align 8
  store %struct.msghdr* %2, %struct.msghdr** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %15 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @MSG_OOB, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %4
  %21 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %22 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @EOPNOTSUPP, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %147

27:                                               ; preds = %4
  %28 = load %struct.sock*, %struct.sock** %7, align 8
  %29 = call i32 @lock_sock(%struct.sock* %28)
  %30 = load %struct.sock*, %struct.sock** %7, align 8
  %31 = getelementptr inbounds %struct.sock, %struct.sock* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %27
  %35 = load %struct.sock*, %struct.sock** %7, align 8
  %36 = call i32 @sock_net(%struct.sock* %35)
  %37 = load i32, i32* @ARPHRD_IEEE802154, align 4
  %38 = call %struct.net_device* @dev_getfirstbyhwtype(i32 %36, i32 %37)
  store %struct.net_device* %38, %struct.net_device** %10, align 8
  br label %46

39:                                               ; preds = %27
  %40 = load %struct.sock*, %struct.sock** %7, align 8
  %41 = call i32 @sock_net(%struct.sock* %40)
  %42 = load %struct.sock*, %struct.sock** %7, align 8
  %43 = getelementptr inbounds %struct.sock, %struct.sock* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call %struct.net_device* @dev_get_by_index(i32 %41, i32 %44)
  store %struct.net_device* %45, %struct.net_device** %10, align 8
  br label %46

46:                                               ; preds = %39, %34
  %47 = load %struct.sock*, %struct.sock** %7, align 8
  %48 = call i32 @release_sock(%struct.sock* %47)
  %49 = load %struct.net_device*, %struct.net_device** %10, align 8
  %50 = icmp ne %struct.net_device* %49, null
  br i1 %50, label %55, label %51

51:                                               ; preds = %46
  %52 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i32, i32* @ENXIO, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %13, align 4
  br label %145

55:                                               ; preds = %46
  %56 = load %struct.net_device*, %struct.net_device** %10, align 8
  %57 = getelementptr inbounds %struct.net_device, %struct.net_device* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  store i32 %58, i32* %11, align 4
  %59 = load %struct.net_device*, %struct.net_device** %10, align 8
  %60 = getelementptr inbounds %struct.net_device, %struct.net_device* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* %11, align 4
  %63 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i64 %61, i32 %62)
  %64 = load i64, i64* %9, align 8
  %65 = load i32, i32* %11, align 4
  %66 = zext i32 %65 to i64
  %67 = icmp ugt i64 %64, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %55
  %69 = load i64, i64* %9, align 8
  %70 = load i32, i32* %11, align 4
  %71 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i64 %69, i32 %70)
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %13, align 4
  br label %142

74:                                               ; preds = %55
  %75 = load %struct.sock*, %struct.sock** %7, align 8
  %76 = load %struct.net_device*, %struct.net_device** %10, align 8
  %77 = call i64 @LL_ALLOCATED_SPACE(%struct.net_device* %76)
  %78 = load i64, i64* %9, align 8
  %79 = add i64 %77, %78
  %80 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %81 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @MSG_DONTWAIT, align 4
  %84 = and i32 %82, %83
  %85 = call %struct.sk_buff* @sock_alloc_send_skb(%struct.sock* %75, i64 %79, i32 %84, i32* %13)
  store %struct.sk_buff* %85, %struct.sk_buff** %12, align 8
  %86 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %87 = icmp ne %struct.sk_buff* %86, null
  br i1 %87, label %89, label %88

88:                                               ; preds = %74
  br label %142

89:                                               ; preds = %74
  %90 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %91 = load %struct.net_device*, %struct.net_device** %10, align 8
  %92 = call i32 @LL_RESERVED_SPACE(%struct.net_device* %91)
  %93 = call i32 @skb_reserve(%struct.sk_buff* %90, i32 %92)
  %94 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %95 = call i32 @skb_reset_mac_header(%struct.sk_buff* %94)
  %96 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %97 = call i32 @skb_reset_network_header(%struct.sk_buff* %96)
  %98 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %99 = load i64, i64* %9, align 8
  %100 = call i32 @skb_put(%struct.sk_buff* %98, i64 %99)
  %101 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %102 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i64, i64* %9, align 8
  %105 = call i32 @memcpy_fromiovec(i32 %100, i32 %103, i64 %104)
  store i32 %105, i32* %13, align 4
  %106 = load i32, i32* %13, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %89
  br label %139

109:                                              ; preds = %89
  %110 = load %struct.net_device*, %struct.net_device** %10, align 8
  %111 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %112 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %111, i32 0, i32 2
  store %struct.net_device* %110, %struct.net_device** %112, align 8
  %113 = load %struct.sock*, %struct.sock** %7, align 8
  %114 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %115 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %114, i32 0, i32 1
  store %struct.sock* %113, %struct.sock** %115, align 8
  %116 = load i32, i32* @ETH_P_IEEE802154, align 4
  %117 = call i32 @htons(i32 %116)
  %118 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %119 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 8
  %120 = load %struct.net_device*, %struct.net_device** %10, align 8
  %121 = call i32 @dev_put(%struct.net_device* %120)
  %122 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %123 = call i32 @dev_queue_xmit(%struct.sk_buff* %122)
  store i32 %123, i32* %13, align 4
  %124 = load i32, i32* %13, align 4
  %125 = icmp sgt i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %109
  %127 = load i32, i32* %13, align 4
  %128 = call i32 @net_xmit_errno(i32 %127)
  store i32 %128, i32* %13, align 4
  br label %129

129:                                              ; preds = %126, %109
  %130 = load i32, i32* %13, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %129
  %133 = sext i32 %130 to i64
  br label %136

134:                                              ; preds = %129
  %135 = load i64, i64* %9, align 8
  br label %136

136:                                              ; preds = %134, %132
  %137 = phi i64 [ %133, %132 ], [ %135, %134 ]
  %138 = trunc i64 %137 to i32
  store i32 %138, i32* %5, align 4
  br label %147

139:                                              ; preds = %108
  %140 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %141 = call i32 @kfree_skb(%struct.sk_buff* %140)
  br label %142

142:                                              ; preds = %139, %88, %68
  %143 = load %struct.net_device*, %struct.net_device** %10, align 8
  %144 = call i32 @dev_put(%struct.net_device* %143)
  br label %145

145:                                              ; preds = %142, %51
  %146 = load i32, i32* %13, align 4
  store i32 %146, i32* %5, align 4
  br label %147

147:                                              ; preds = %145, %136, %20
  %148 = load i32, i32* %5, align 4
  ret i32 %148
}

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local %struct.net_device* @dev_getfirstbyhwtype(i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local %struct.net_device* @dev_get_by_index(i32, i32) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local %struct.sk_buff* @sock_alloc_send_skb(%struct.sock*, i64, i32, i32*) #1

declare dso_local i64 @LL_ALLOCATED_SPACE(%struct.net_device*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @LL_RESERVED_SPACE(%struct.net_device*) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

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
