; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/can/extr_raw.c_raw_sendmsg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/can/extr_raw.c_raw_sendmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i32 }
%struct.socket = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.msghdr = type { i32, i32, i64 }
%struct.raw_sock = type { i32, i32 }
%struct.sk_buff = type { %struct.sock*, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.sockaddr_can = type { i64, i32 }

@AF_CAN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@init_net = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kiocb*, %struct.socket*, %struct.msghdr*, i64)* @raw_sendmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raw_sendmsg(%struct.kiocb* %0, %struct.socket* %1, %struct.msghdr* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kiocb*, align 8
  %7 = alloca %struct.socket*, align 8
  %8 = alloca %struct.msghdr*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sock*, align 8
  %11 = alloca %struct.raw_sock*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca %struct.net_device*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.sockaddr_can*, align 8
  store %struct.kiocb* %0, %struct.kiocb** %6, align 8
  store %struct.socket* %1, %struct.socket** %7, align 8
  store %struct.msghdr* %2, %struct.msghdr** %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load %struct.socket*, %struct.socket** %7, align 8
  %18 = getelementptr inbounds %struct.socket, %struct.socket* %17, i32 0, i32 0
  %19 = load %struct.sock*, %struct.sock** %18, align 8
  store %struct.sock* %19, %struct.sock** %10, align 8
  %20 = load %struct.sock*, %struct.sock** %10, align 8
  %21 = call %struct.raw_sock* @raw_sk(%struct.sock* %20)
  store %struct.raw_sock* %21, %struct.raw_sock** %11, align 8
  %22 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %23 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %4
  %27 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %28 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.sockaddr_can*
  store %struct.sockaddr_can* %30, %struct.sockaddr_can** %16, align 8
  %31 = load %struct.sockaddr_can*, %struct.sockaddr_can** %16, align 8
  %32 = getelementptr inbounds %struct.sockaddr_can, %struct.sockaddr_can* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @AF_CAN, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %26
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %122

39:                                               ; preds = %26
  %40 = load %struct.sockaddr_can*, %struct.sockaddr_can** %16, align 8
  %41 = getelementptr inbounds %struct.sockaddr_can, %struct.sockaddr_can* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %14, align 4
  br label %47

43:                                               ; preds = %4
  %44 = load %struct.raw_sock*, %struct.raw_sock** %11, align 8
  %45 = getelementptr inbounds %struct.raw_sock, %struct.raw_sock* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %14, align 4
  br label %47

47:                                               ; preds = %43, %39
  %48 = load i64, i64* %9, align 8
  %49 = icmp ne i64 %48, 4
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  br label %122

53:                                               ; preds = %47
  %54 = load i32, i32* %14, align 4
  %55 = call %struct.net_device* @dev_get_by_index(i32* @init_net, i32 %54)
  store %struct.net_device* %55, %struct.net_device** %13, align 8
  %56 = load %struct.net_device*, %struct.net_device** %13, align 8
  %57 = icmp ne %struct.net_device* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %53
  %59 = load i32, i32* @ENXIO, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %5, align 4
  br label %122

61:                                               ; preds = %53
  %62 = load %struct.sock*, %struct.sock** %10, align 8
  %63 = load i64, i64* %9, align 8
  %64 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %65 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @MSG_DONTWAIT, align 4
  %68 = and i32 %66, %67
  %69 = call %struct.sk_buff* @sock_alloc_send_skb(%struct.sock* %62, i64 %63, i32 %68, i32* %15)
  store %struct.sk_buff* %69, %struct.sk_buff** %12, align 8
  %70 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %71 = icmp ne %struct.sk_buff* %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %61
  br label %117

73:                                               ; preds = %61
  %74 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %75 = load i64, i64* %9, align 8
  %76 = call i32 @skb_put(%struct.sk_buff* %74, i64 %75)
  %77 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %78 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i64, i64* %9, align 8
  %81 = call i32 @memcpy_fromiovec(i32 %76, i32 %79, i64 %80)
  store i32 %81, i32* %15, align 4
  %82 = load i32, i32* %15, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %73
  br label %114

85:                                               ; preds = %73
  %86 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %87 = load %struct.sock*, %struct.sock** %10, align 8
  %88 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %89 = call i32 @skb_tx(%struct.sk_buff* %88)
  %90 = call i32 @sock_tx_timestamp(%struct.msghdr* %86, %struct.sock* %87, i32 %89)
  store i32 %90, i32* %15, align 4
  %91 = load i32, i32* %15, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %85
  br label %114

94:                                               ; preds = %85
  %95 = load %struct.net_device*, %struct.net_device** %13, align 8
  %96 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %97 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %96, i32 0, i32 1
  store %struct.net_device* %95, %struct.net_device** %97, align 8
  %98 = load %struct.sock*, %struct.sock** %10, align 8
  %99 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %100 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %99, i32 0, i32 0
  store %struct.sock* %98, %struct.sock** %100, align 8
  %101 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %102 = load %struct.raw_sock*, %struct.raw_sock** %11, align 8
  %103 = getelementptr inbounds %struct.raw_sock, %struct.raw_sock* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @can_send(%struct.sk_buff* %101, i32 %104)
  store i32 %105, i32* %15, align 4
  %106 = load %struct.net_device*, %struct.net_device** %13, align 8
  %107 = call i32 @dev_put(%struct.net_device* %106)
  %108 = load i32, i32* %15, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %94
  br label %120

111:                                              ; preds = %94
  %112 = load i64, i64* %9, align 8
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %5, align 4
  br label %122

114:                                              ; preds = %93, %84
  %115 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %116 = call i32 @kfree_skb(%struct.sk_buff* %115)
  br label %117

117:                                              ; preds = %114, %72
  %118 = load %struct.net_device*, %struct.net_device** %13, align 8
  %119 = call i32 @dev_put(%struct.net_device* %118)
  br label %120

120:                                              ; preds = %117, %110
  %121 = load i32, i32* %15, align 4
  store i32 %121, i32* %5, align 4
  br label %122

122:                                              ; preds = %120, %111, %58, %50, %36
  %123 = load i32, i32* %5, align 4
  ret i32 %123
}

declare dso_local %struct.raw_sock* @raw_sk(%struct.sock*) #1

declare dso_local %struct.net_device* @dev_get_by_index(i32*, i32) #1

declare dso_local %struct.sk_buff* @sock_alloc_send_skb(%struct.sock*, i64, i32, i32*) #1

declare dso_local i32 @memcpy_fromiovec(i32, i32, i64) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @sock_tx_timestamp(%struct.msghdr*, %struct.sock*, i32) #1

declare dso_local i32 @skb_tx(%struct.sk_buff*) #1

declare dso_local i32 @can_send(%struct.sk_buff*, i32) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
