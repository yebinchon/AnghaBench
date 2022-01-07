; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/can/extr_raw.c_raw_recvmsg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/can/extr_raw.c_raw_recvmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i32 }
%struct.socket = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.msghdr = type { i32, i64, i32, i32 }
%struct.sk_buff = type { i64, i32, i32 }

@MSG_DONTWAIT = common dso_local global i32 0, align 4
@MSG_TRUNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kiocb*, %struct.socket*, %struct.msghdr*, i64, i32)* @raw_recvmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raw_recvmsg(%struct.kiocb* %0, %struct.socket* %1, %struct.msghdr* %2, i64 %3, i32 %4) #0 {
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
  store %struct.kiocb* %0, %struct.kiocb** %7, align 8
  store %struct.socket* %1, %struct.socket** %8, align 8
  store %struct.msghdr* %2, %struct.msghdr** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load %struct.socket*, %struct.socket** %8, align 8
  %17 = getelementptr inbounds %struct.socket, %struct.socket* %16, i32 0, i32 0
  %18 = load %struct.sock*, %struct.sock** %17, align 8
  store %struct.sock* %18, %struct.sock** %12, align 8
  store i32 0, i32* %14, align 4
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* @MSG_DONTWAIT, align 4
  %21 = and i32 %19, %20
  store i32 %21, i32* %15, align 4
  %22 = load i32, i32* @MSG_DONTWAIT, align 4
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %11, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %11, align 4
  %26 = load %struct.msghdr*, %struct.msghdr** %9, align 8
  %27 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %26, i32 0, i32 0
  store i32 0, i32* %27, align 8
  %28 = load %struct.sock*, %struct.sock** %12, align 8
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %15, align 4
  %31 = call %struct.sk_buff* @skb_recv_datagram(%struct.sock* %28, i32 %29, i32 %30, i32* %14)
  store %struct.sk_buff* %31, %struct.sk_buff** %13, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %33 = icmp ne %struct.sk_buff* %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %5
  %35 = load i32, i32* %14, align 4
  store i32 %35, i32* %6, align 4
  br label %96

36:                                               ; preds = %5
  %37 = load i64, i64* %10, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ult i64 %37, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %36
  %43 = load i32, i32* @MSG_TRUNC, align 4
  %44 = load %struct.msghdr*, %struct.msghdr** %9, align 8
  %45 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 4
  br label %52

48:                                               ; preds = %36
  %49 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %50 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %10, align 8
  br label %52

52:                                               ; preds = %48, %42
  %53 = load %struct.msghdr*, %struct.msghdr** %9, align 8
  %54 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %57 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load i64, i64* %10, align 8
  %60 = call i32 @memcpy_toiovec(i32 %55, i32 %58, i64 %59)
  store i32 %60, i32* %14, align 4
  %61 = load i32, i32* %14, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %52
  %64 = load %struct.sock*, %struct.sock** %12, align 8
  %65 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %66 = call i32 @skb_free_datagram(%struct.sock* %64, %struct.sk_buff* %65)
  %67 = load i32, i32* %14, align 4
  store i32 %67, i32* %6, align 4
  br label %96

68:                                               ; preds = %52
  %69 = load %struct.msghdr*, %struct.msghdr** %9, align 8
  %70 = load %struct.sock*, %struct.sock** %12, align 8
  %71 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %72 = call i32 @sock_recv_ts_and_drops(%struct.msghdr* %69, %struct.sock* %70, %struct.sk_buff* %71)
  %73 = load %struct.msghdr*, %struct.msghdr** %9, align 8
  %74 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %90

77:                                               ; preds = %68
  %78 = load %struct.msghdr*, %struct.msghdr** %9, align 8
  %79 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %78, i32 0, i32 0
  store i32 4, i32* %79, align 8
  %80 = load %struct.msghdr*, %struct.msghdr** %9, align 8
  %81 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %84 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.msghdr*, %struct.msghdr** %9, align 8
  %87 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @memcpy(i64 %82, i32 %85, i32 %88)
  br label %90

90:                                               ; preds = %77, %68
  %91 = load %struct.sock*, %struct.sock** %12, align 8
  %92 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %93 = call i32 @skb_free_datagram(%struct.sock* %91, %struct.sk_buff* %92)
  %94 = load i64, i64* %10, align 8
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %6, align 4
  br label %96

96:                                               ; preds = %90, %63, %34
  %97 = load i32, i32* %6, align 4
  ret i32 %97
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
