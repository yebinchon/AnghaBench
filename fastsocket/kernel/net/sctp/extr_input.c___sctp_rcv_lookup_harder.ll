; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_input.c___sctp_rcv_lookup_harder.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_input.c___sctp_rcv_lookup_harder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_association = type { i32 }
%struct.sk_buff = type { i64, i64 }
%union.sctp_addr = type { i32 }
%struct.sctp_transport = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sctp_association* (%struct.sk_buff*, %union.sctp_addr*, %struct.sctp_transport**)* @__sctp_rcv_lookup_harder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sctp_association* @__sctp_rcv_lookup_harder(%struct.sk_buff* %0, %union.sctp_addr* %1, %struct.sctp_transport** %2) #0 {
  %4 = alloca %struct.sctp_association*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %union.sctp_addr*, align 8
  %7 = alloca %struct.sctp_transport**, align 8
  %8 = alloca %struct.TYPE_2__*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %union.sctp_addr* %1, %union.sctp_addr** %6, align 8
  store %struct.sctp_transport** %2, %struct.sctp_transport*** %7, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %12, %struct.TYPE_2__** %8, align 8
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @ntohs(i32 %15)
  %17 = call i64 @WORD_ROUND(i32 %16)
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sgt i64 %17, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store %struct.sctp_association* null, %struct.sctp_association** %4, align 8
  br label %37

23:                                               ; preds = %3
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %32 [
    i32 129, label %27
    i32 128, label %27
  ]

27:                                               ; preds = %23, %23
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = load %union.sctp_addr*, %union.sctp_addr** %6, align 8
  %30 = load %struct.sctp_transport**, %struct.sctp_transport*** %7, align 8
  %31 = call %struct.sctp_association* @__sctp_rcv_init_lookup(%struct.sk_buff* %28, %union.sctp_addr* %29, %struct.sctp_transport** %30)
  store %struct.sctp_association* %31, %struct.sctp_association** %4, align 8
  br label %37

32:                                               ; preds = %23
  %33 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %34 = load %union.sctp_addr*, %union.sctp_addr** %6, align 8
  %35 = load %struct.sctp_transport**, %struct.sctp_transport*** %7, align 8
  %36 = call %struct.sctp_association* @__sctp_rcv_walk_lookup(%struct.sk_buff* %33, %union.sctp_addr* %34, %struct.sctp_transport** %35)
  store %struct.sctp_association* %36, %struct.sctp_association** %4, align 8
  br label %37

37:                                               ; preds = %32, %27, %22
  %38 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  ret %struct.sctp_association* %38
}

declare dso_local i64 @WORD_ROUND(i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local %struct.sctp_association* @__sctp_rcv_init_lookup(%struct.sk_buff*, %union.sctp_addr*, %struct.sctp_transport**) #1

declare dso_local %struct.sctp_association* @__sctp_rcv_walk_lookup(%struct.sk_buff*, %union.sctp_addr*, %struct.sctp_transport**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
