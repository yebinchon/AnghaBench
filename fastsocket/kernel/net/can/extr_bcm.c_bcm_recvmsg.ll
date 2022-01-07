; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/can/extr_bcm.c_bcm_recvmsg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/can/extr_bcm.c_bcm_recvmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i32 }
%struct.socket = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.msghdr = type { i32, i64, i32 }
%struct.sk_buff = type { i64, i32, i32 }

@MSG_DONTWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kiocb*, %struct.socket*, %struct.msghdr*, i64, i32)* @bcm_recvmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_recvmsg(%struct.kiocb* %0, %struct.socket* %1, %struct.msghdr* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.kiocb*, align 8
  %8 = alloca %struct.socket*, align 8
  %9 = alloca %struct.msghdr*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.sock*, align 8
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.kiocb* %0, %struct.kiocb** %7, align 8
  store %struct.socket* %1, %struct.socket** %8, align 8
  store %struct.msghdr* %2, %struct.msghdr** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load %struct.socket*, %struct.socket** %8, align 8
  %18 = getelementptr inbounds %struct.socket, %struct.socket* %17, i32 0, i32 0
  %19 = load %struct.sock*, %struct.sock** %18, align 8
  store %struct.sock* %19, %struct.sock** %12, align 8
  store i32 0, i32* %14, align 4
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* @MSG_DONTWAIT, align 4
  %22 = and i32 %20, %21
  store i32 %22, i32* %15, align 4
  %23 = load i32, i32* @MSG_DONTWAIT, align 4
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %11, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %11, align 4
  %27 = load %struct.msghdr*, %struct.msghdr** %9, align 8
  %28 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %27, i32 0, i32 0
  store i32 0, i32* %28, align 8
  %29 = load %struct.sock*, %struct.sock** %12, align 8
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* %15, align 4
  %32 = call %struct.sk_buff* @skb_recv_datagram(%struct.sock* %29, i32 %30, i32 %31, i32* %14)
  store %struct.sk_buff* %32, %struct.sk_buff** %13, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %34 = icmp ne %struct.sk_buff* %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %5
  %36 = load i32, i32* %14, align 4
  store i32 %36, i32* %6, align 4
  br label %91

37:                                               ; preds = %5
  %38 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %10, align 8
  %42 = icmp ult i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %45 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %10, align 8
  br label %47

47:                                               ; preds = %43, %37
  %48 = load %struct.msghdr*, %struct.msghdr** %9, align 8
  %49 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load i64, i64* %10, align 8
  %55 = call i32 @memcpy_toiovec(i32 %50, i32 %53, i64 %54)
  store i32 %55, i32* %16, align 4
  %56 = load i32, i32* %16, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %47
  %59 = load %struct.sock*, %struct.sock** %12, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %61 = call i32 @skb_free_datagram(%struct.sock* %59, %struct.sk_buff* %60)
  %62 = load i32, i32* %16, align 4
  store i32 %62, i32* %6, align 4
  br label %91

63:                                               ; preds = %47
  %64 = load %struct.msghdr*, %struct.msghdr** %9, align 8
  %65 = load %struct.sock*, %struct.sock** %12, align 8
  %66 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %67 = call i32 @sock_recv_ts_and_drops(%struct.msghdr* %64, %struct.sock* %65, %struct.sk_buff* %66)
  %68 = load %struct.msghdr*, %struct.msghdr** %9, align 8
  %69 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %85

72:                                               ; preds = %63
  %73 = load %struct.msghdr*, %struct.msghdr** %9, align 8
  %74 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %73, i32 0, i32 0
  store i32 4, i32* %74, align 8
  %75 = load %struct.msghdr*, %struct.msghdr** %9, align 8
  %76 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %79 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.msghdr*, %struct.msghdr** %9, align 8
  %82 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @memcpy(i64 %77, i32 %80, i32 %83)
  br label %85

85:                                               ; preds = %72, %63
  %86 = load %struct.sock*, %struct.sock** %12, align 8
  %87 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %88 = call i32 @skb_free_datagram(%struct.sock* %86, %struct.sk_buff* %87)
  %89 = load i64, i64* %10, align 8
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %6, align 4
  br label %91

91:                                               ; preds = %85, %58, %35
  %92 = load i32, i32* %6, align 4
  ret i32 %92
}

declare dso_local %struct.sk_buff* @skb_recv_datagram(%struct.sock*, i32, i32, i32*) #1

declare dso_local i32 @memcpy_toiovec(i32, i32, i64) #1

declare dso_local i32 @skb_free_datagram(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @sock_recv_ts_and_drops(%struct.msghdr*, %struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @memcpy(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
