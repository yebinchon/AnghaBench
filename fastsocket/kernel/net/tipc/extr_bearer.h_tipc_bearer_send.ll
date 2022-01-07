; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_bearer.h_tipc_bearer_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_bearer.h_tipc_bearer_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bearer = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.sk_buff*, i32*, %struct.tipc_media_addr*)* }
%struct.sk_buff = type { i32 }
%struct.tipc_media_addr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bearer*, %struct.sk_buff*, %struct.tipc_media_addr*)* @tipc_bearer_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tipc_bearer_send(%struct.bearer* %0, %struct.sk_buff* %1, %struct.tipc_media_addr* %2) #0 {
  %4 = alloca %struct.bearer*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.tipc_media_addr*, align 8
  store %struct.bearer* %0, %struct.bearer** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.tipc_media_addr* %2, %struct.tipc_media_addr** %6, align 8
  %7 = load %struct.bearer*, %struct.bearer** %4, align 8
  %8 = getelementptr inbounds %struct.bearer, %struct.bearer* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32 (%struct.sk_buff*, i32*, %struct.tipc_media_addr*)*, i32 (%struct.sk_buff*, i32*, %struct.tipc_media_addr*)** %10, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %13 = load %struct.bearer*, %struct.bearer** %4, align 8
  %14 = getelementptr inbounds %struct.bearer, %struct.bearer* %13, i32 0, i32 0
  %15 = load %struct.tipc_media_addr*, %struct.tipc_media_addr** %6, align 8
  %16 = call i32 %11(%struct.sk_buff* %12, i32* %14, %struct.tipc_media_addr* %15)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  ret i32 %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
