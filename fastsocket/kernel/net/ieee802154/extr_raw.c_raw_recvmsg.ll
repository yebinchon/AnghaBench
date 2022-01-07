; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ieee802154/extr_raw.c_raw_recvmsg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ieee802154/extr_raw.c_raw_recvmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i32 }
%struct.sock = type { i32 }
%struct.msghdr = type { i32, i32 }
%struct.sk_buff = type { i64 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@MSG_TRUNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kiocb*, %struct.sock*, %struct.msghdr*, i64, i32, i32, i32*)* @raw_recvmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raw_recvmsg(%struct.kiocb* %0, %struct.sock* %1, %struct.msghdr* %2, i64 %3, i32 %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.kiocb*, align 8
  %10 = alloca %struct.sock*, align 8
  %11 = alloca %struct.msghdr*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.sk_buff*, align 8
  store %struct.kiocb* %0, %struct.kiocb** %9, align 8
  store %struct.sock* %1, %struct.sock** %10, align 8
  store %struct.msghdr* %2, %struct.msghdr** %11, align 8
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  store i64 0, i64* %16, align 8
  %19 = load i32, i32* @EOPNOTSUPP, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %17, align 4
  %21 = load %struct.sock*, %struct.sock** %10, align 8
  %22 = load i32, i32* %14, align 4
  %23 = load i32, i32* %13, align 4
  %24 = call %struct.sk_buff* @skb_recv_datagram(%struct.sock* %21, i32 %22, i32 %23, i32* %17)
  store %struct.sk_buff* %24, %struct.sk_buff** %18, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %26 = icmp ne %struct.sk_buff* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %7
  br label %70

28:                                               ; preds = %7
  %29 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %16, align 8
  %32 = load i64, i64* %12, align 8
  %33 = load i64, i64* %16, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %28
  %36 = load i32, i32* @MSG_TRUNC, align 4
  %37 = load %struct.msghdr*, %struct.msghdr** %11, align 8
  %38 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 4
  %41 = load i64, i64* %12, align 8
  store i64 %41, i64* %16, align 8
  br label %42

42:                                               ; preds = %35, %28
  %43 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %44 = load %struct.msghdr*, %struct.msghdr** %11, align 8
  %45 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i64, i64* %16, align 8
  %48 = call i32 @skb_copy_datagram_iovec(%struct.sk_buff* %43, i32 0, i32 %46, i64 %47)
  store i32 %48, i32* %17, align 4
  %49 = load i32, i32* %17, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %42
  br label %66

52:                                               ; preds = %42
  %53 = load %struct.msghdr*, %struct.msghdr** %11, align 8
  %54 = load %struct.sock*, %struct.sock** %10, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %56 = call i32 @sock_recv_ts_and_drops(%struct.msghdr* %53, %struct.sock* %54, %struct.sk_buff* %55)
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* @MSG_TRUNC, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %52
  %62 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %63 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %16, align 8
  br label %65

65:                                               ; preds = %61, %52
  br label %66

66:                                               ; preds = %65, %51
  %67 = load %struct.sock*, %struct.sock** %10, align 8
  %68 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %69 = call i32 @skb_free_datagram(%struct.sock* %67, %struct.sk_buff* %68)
  br label %70

70:                                               ; preds = %66, %27
  %71 = load i32, i32* %17, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = load i32, i32* %17, align 4
  store i32 %74, i32* %8, align 4
  br label %78

75:                                               ; preds = %70
  %76 = load i64, i64* %16, align 8
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %8, align 4
  br label %78

78:                                               ; preds = %75, %73
  %79 = load i32, i32* %8, align 4
  ret i32 %79
}

declare dso_local %struct.sk_buff* @skb_recv_datagram(%struct.sock*, i32, i32, i32*) #1

declare dso_local i32 @skb_copy_datagram_iovec(%struct.sk_buff*, i32, i32, i64) #1

declare dso_local i32 @sock_recv_ts_and_drops(%struct.msghdr*, %struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @skb_free_datagram(%struct.sock*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
