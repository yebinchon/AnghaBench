; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/econet/extr_af_econet.c_econet_recvmsg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/econet/extr_af_econet.c_econet_recvmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.kiocb = type { i32 }
%struct.socket = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.msghdr = type { i32, i64, i32, i32 }
%struct.sk_buff = type { i64, i32, i32, i32 }

@econet_mutex = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@MSG_TRUNC = common dso_local global i32 0, align 4
@m = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kiocb*, %struct.socket*, %struct.msghdr*, i64, i32)* @econet_recvmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @econet_recvmsg(%struct.kiocb* %0, %struct.socket* %1, %struct.msghdr* %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.kiocb*, align 8
  %7 = alloca %struct.socket*, align 8
  %8 = alloca %struct.msghdr*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sock*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.kiocb* %0, %struct.kiocb** %6, align 8
  store %struct.socket* %1, %struct.socket** %7, align 8
  store %struct.msghdr* %2, %struct.msghdr** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = load %struct.socket*, %struct.socket** %7, align 8
  %16 = getelementptr inbounds %struct.socket, %struct.socket* %15, i32 0, i32 0
  %17 = load %struct.sock*, %struct.sock** %16, align 8
  store %struct.sock* %17, %struct.sock** %11, align 8
  %18 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %19 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %18, i32 0, i32 0
  store i32 0, i32* %19, align 8
  %20 = call i32 @mutex_lock(i32* @econet_mutex)
  %21 = load %struct.sock*, %struct.sock** %11, align 8
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* @MSG_DONTWAIT, align 4
  %25 = and i32 %23, %24
  %26 = call %struct.sk_buff* @skb_recv_datagram(%struct.sock* %21, i32 %22, i32 %25, i32* %14)
  store %struct.sk_buff* %26, %struct.sk_buff** %12, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %28 = icmp eq %struct.sk_buff* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %5
  br label %86

30:                                               ; preds = %5
  %31 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %13, align 8
  %34 = load i64, i64* %13, align 8
  %35 = load i64, i64* %9, align 8
  %36 = icmp ugt i64 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %30
  %38 = load i64, i64* %9, align 8
  store i64 %38, i64* %13, align 8
  %39 = load i32, i32* @MSG_TRUNC, align 4
  %40 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %41 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %37, %30
  %45 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %46 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = load i64, i64* %13, align 8
  %52 = call i32 @memcpy_toiovec(i32 %47, i32 %50, i64 %51)
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %14, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %44
  br label %82

56:                                               ; preds = %44
  %57 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %58 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.sock*, %struct.sock** %11, align 8
  %61 = getelementptr inbounds %struct.sock, %struct.sock* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  %62 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %63 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %79

66:                                               ; preds = %56
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** @m, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  store i32 4, i32* %68, align 4
  %69 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %70 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %73 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %76 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @memcpy(i64 %71, i32 %74, i32 %77)
  br label %79

79:                                               ; preds = %66, %56
  %80 = load i64, i64* %13, align 8
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %14, align 4
  br label %82

82:                                               ; preds = %79, %55
  %83 = load %struct.sock*, %struct.sock** %11, align 8
  %84 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %85 = call i32 @skb_free_datagram(%struct.sock* %83, %struct.sk_buff* %84)
  br label %86

86:                                               ; preds = %82, %29
  %87 = call i32 @mutex_unlock(i32* @econet_mutex)
  %88 = load i32, i32* %14, align 4
  ret i32 %88
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.sk_buff* @skb_recv_datagram(%struct.sock*, i32, i32, i32*) #1

declare dso_local i32 @memcpy_toiovec(i32, i32, i64) #1

declare dso_local i32 @memcpy(i64, i32, i32) #1

declare dso_local i32 @skb_free_datagram(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
