; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/can/extr_raw.c_raw_rcv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/can/extr_raw.c_raw_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.TYPE_2__*, i64, %struct.sock* }
%struct.TYPE_2__ = type { i32 }
%struct.sock = type { i32 }
%struct.raw_sock = type { i32 }
%struct.sockaddr_can = type { i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@AF_CAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, i8*)* @raw_rcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @raw_rcv(%struct.sk_buff* %0, i8* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.raw_sock*, align 8
  %7 = alloca %struct.sockaddr_can*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.sock*
  store %struct.sock* %9, %struct.sock** %5, align 8
  %10 = load %struct.sock*, %struct.sock** %5, align 8
  %11 = call %struct.raw_sock* @raw_sk(%struct.sock* %10)
  store %struct.raw_sock* %11, %struct.raw_sock** %6, align 8
  %12 = load %struct.raw_sock*, %struct.raw_sock** %6, align 8
  %13 = getelementptr inbounds %struct.raw_sock, %struct.raw_sock* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %2
  %17 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 2
  %19 = load %struct.sock*, %struct.sock** %18, align 8
  %20 = load %struct.sock*, %struct.sock** %5, align 8
  %21 = icmp eq %struct.sock* %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %55

23:                                               ; preds = %16, %2
  %24 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %25 = load i32, i32* @GFP_ATOMIC, align 4
  %26 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %24, i32 %25)
  store %struct.sk_buff* %26, %struct.sk_buff** %3, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %28 = icmp ne %struct.sk_buff* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %23
  br label %55

30:                                               ; preds = %23
  %31 = call i32 @BUILD_BUG_ON(i32 0)
  %32 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %33 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to %struct.sockaddr_can*
  store %struct.sockaddr_can* %35, %struct.sockaddr_can** %7, align 8
  %36 = load %struct.sockaddr_can*, %struct.sockaddr_can** %7, align 8
  %37 = call i32 @memset(%struct.sockaddr_can* %36, i32 0, i32 8)
  %38 = load i32, i32* @AF_CAN, align 4
  %39 = load %struct.sockaddr_can*, %struct.sockaddr_can** %7, align 8
  %40 = getelementptr inbounds %struct.sockaddr_can, %struct.sockaddr_can* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.sockaddr_can*, %struct.sockaddr_can** %7, align 8
  %47 = getelementptr inbounds %struct.sockaddr_can, %struct.sockaddr_can* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load %struct.sock*, %struct.sock** %5, align 8
  %49 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %50 = call i64 @sock_queue_rcv_skb(%struct.sock* %48, %struct.sk_buff* %49)
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %30
  %53 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %54 = call i32 @kfree_skb(%struct.sk_buff* %53)
  br label %55

55:                                               ; preds = %22, %29, %52, %30
  ret void
}

declare dso_local %struct.raw_sock* @raw_sk(%struct.sock*) #1

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @memset(%struct.sockaddr_can*, i32, i32) #1

declare dso_local i64 @sock_queue_rcv_skb(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
