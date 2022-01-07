; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_ulpevent.c_sctp_ulpevent_make_peer_addr_change.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_ulpevent.c_sctp_ulpevent_make_peer_addr_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_ulpevent = type { i32 }
%struct.sctp_association = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.sockaddr_storage = type { i32 }
%struct.sctp_paddr_change = type { i32, i32, i32, i32, i32, i64, i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_6__ = type { i32 (i32, %union.sctp_addr*)* }
%union.sctp_addr = type { i32 }

@MSG_NOTIFICATION = common dso_local global i32 0, align 4
@SCTP_PEER_ADDR_CHANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sctp_ulpevent* @sctp_ulpevent_make_peer_addr_change(%struct.sctp_association* %0, %struct.sockaddr_storage* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.sctp_ulpevent*, align 8
  %8 = alloca %struct.sctp_association*, align 8
  %9 = alloca %struct.sockaddr_storage*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.sctp_ulpevent*, align 8
  %15 = alloca %struct.sctp_paddr_change*, align 8
  %16 = alloca %struct.sk_buff*, align 8
  store %struct.sctp_association* %0, %struct.sctp_association** %8, align 8
  store %struct.sockaddr_storage* %1, %struct.sockaddr_storage** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = load i32, i32* @MSG_NOTIFICATION, align 4
  %18 = load i32, i32* %13, align 4
  %19 = call %struct.sctp_ulpevent* @sctp_ulpevent_new(i32 40, i32 %17, i32 %18)
  store %struct.sctp_ulpevent* %19, %struct.sctp_ulpevent** %14, align 8
  %20 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %14, align 8
  %21 = icmp ne %struct.sctp_ulpevent* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %6
  br label %72

23:                                               ; preds = %6
  %24 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %14, align 8
  %25 = call %struct.sk_buff* @sctp_event2skb(%struct.sctp_ulpevent* %24)
  store %struct.sk_buff* %25, %struct.sk_buff** %16, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %27 = call i64 @skb_put(%struct.sk_buff* %26, i32 40)
  %28 = inttoptr i64 %27 to %struct.sctp_paddr_change*
  store %struct.sctp_paddr_change* %28, %struct.sctp_paddr_change** %15, align 8
  %29 = load i32, i32* @SCTP_PEER_ADDR_CHANGE, align 4
  %30 = load %struct.sctp_paddr_change*, %struct.sctp_paddr_change** %15, align 8
  %31 = getelementptr inbounds %struct.sctp_paddr_change, %struct.sctp_paddr_change* %30, i32 0, i32 6
  store i32 %29, i32* %31, align 8
  %32 = load %struct.sctp_paddr_change*, %struct.sctp_paddr_change** %15, align 8
  %33 = getelementptr inbounds %struct.sctp_paddr_change, %struct.sctp_paddr_change* %32, i32 0, i32 0
  store i32 40, i32* %33, align 8
  %34 = load %struct.sctp_paddr_change*, %struct.sctp_paddr_change** %15, align 8
  %35 = getelementptr inbounds %struct.sctp_paddr_change, %struct.sctp_paddr_change* %34, i32 0, i32 5
  store i64 0, i64* %35, align 8
  %36 = load i32, i32* %11, align 4
  %37 = load %struct.sctp_paddr_change*, %struct.sctp_paddr_change** %15, align 8
  %38 = getelementptr inbounds %struct.sctp_paddr_change, %struct.sctp_paddr_change* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* %12, align 4
  %40 = load %struct.sctp_paddr_change*, %struct.sctp_paddr_change** %15, align 8
  %41 = getelementptr inbounds %struct.sctp_paddr_change, %struct.sctp_paddr_change* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %14, align 8
  %43 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %44 = call i32 @sctp_ulpevent_set_owner(%struct.sctp_ulpevent* %42, %struct.sctp_association* %43)
  %45 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %46 = call i32 @sctp_assoc2id(%struct.sctp_association* %45)
  %47 = load %struct.sctp_paddr_change*, %struct.sctp_paddr_change** %15, align 8
  %48 = getelementptr inbounds %struct.sctp_paddr_change, %struct.sctp_paddr_change* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 8
  %49 = load %struct.sctp_paddr_change*, %struct.sctp_paddr_change** %15, align 8
  %50 = getelementptr inbounds %struct.sctp_paddr_change, %struct.sctp_paddr_change* %49, i32 0, i32 3
  %51 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %9, align 8
  %52 = call i32 @memcpy(i32* %50, %struct.sockaddr_storage* %51, i32 4)
  %53 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %54 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call %struct.TYPE_6__* @sctp_get_pf_specific(i32 %58)
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32 (i32, %union.sctp_addr*)*, i32 (i32, %union.sctp_addr*)** %60, align 8
  %62 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %63 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = call i32 @sctp_sk(%struct.TYPE_5__* %65)
  %67 = load %struct.sctp_paddr_change*, %struct.sctp_paddr_change** %15, align 8
  %68 = getelementptr inbounds %struct.sctp_paddr_change, %struct.sctp_paddr_change* %67, i32 0, i32 3
  %69 = bitcast i32* %68 to %union.sctp_addr*
  %70 = call i32 %61(i32 %66, %union.sctp_addr* %69)
  %71 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %14, align 8
  store %struct.sctp_ulpevent* %71, %struct.sctp_ulpevent** %7, align 8
  br label %73

72:                                               ; preds = %22
  store %struct.sctp_ulpevent* null, %struct.sctp_ulpevent** %7, align 8
  br label %73

73:                                               ; preds = %72, %23
  %74 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %7, align 8
  ret %struct.sctp_ulpevent* %74
}

declare dso_local %struct.sctp_ulpevent* @sctp_ulpevent_new(i32, i32, i32) #1

declare dso_local %struct.sk_buff* @sctp_event2skb(%struct.sctp_ulpevent*) #1

declare dso_local i64 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @sctp_ulpevent_set_owner(%struct.sctp_ulpevent*, %struct.sctp_association*) #1

declare dso_local i32 @sctp_assoc2id(%struct.sctp_association*) #1

declare dso_local i32 @memcpy(i32*, %struct.sockaddr_storage*, i32) #1

declare dso_local %struct.TYPE_6__* @sctp_get_pf_specific(i32) #1

declare dso_local i32 @sctp_sk(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
