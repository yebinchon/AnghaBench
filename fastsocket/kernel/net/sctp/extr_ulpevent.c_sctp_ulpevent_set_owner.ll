; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_ulpevent.c_sctp_ulpevent_set_owner.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_ulpevent.c_sctp_ulpevent_set_owner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_ulpevent = type { %struct.sctp_association*, i32 }
%struct.sctp_association = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sctp_ulpevent*, %struct.sctp_association*)* @sctp_ulpevent_set_owner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_ulpevent_set_owner(%struct.sctp_ulpevent* %0, %struct.sctp_association* %1) #0 {
  %3 = alloca %struct.sctp_ulpevent*, align 8
  %4 = alloca %struct.sctp_association*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  store %struct.sctp_ulpevent* %0, %struct.sctp_ulpevent** %3, align 8
  store %struct.sctp_association* %1, %struct.sctp_association** %4, align 8
  %6 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %7 = call i32 @sctp_association_hold(%struct.sctp_association* %6)
  %8 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %3, align 8
  %9 = call %struct.sk_buff* @sctp_event2skb(%struct.sctp_ulpevent* %8)
  store %struct.sk_buff* %9, %struct.sk_buff** %5, align 8
  %10 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %11 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %3, align 8
  %12 = getelementptr inbounds %struct.sctp_ulpevent, %struct.sctp_ulpevent* %11, i32 0, i32 0
  store %struct.sctp_association* %10, %struct.sctp_association** %12, align 8
  %13 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %3, align 8
  %14 = getelementptr inbounds %struct.sctp_ulpevent, %struct.sctp_ulpevent* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %3, align 8
  %17 = getelementptr inbounds %struct.sctp_ulpevent, %struct.sctp_ulpevent* %16, i32 0, i32 0
  %18 = load %struct.sctp_association*, %struct.sctp_association** %17, align 8
  %19 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %18, i32 0, i32 1
  %20 = call i32 @atomic_add(i32 %15, i32* %19)
  %21 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %22 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %23 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @sctp_skb_set_owner_r(%struct.sk_buff* %21, i32 %25)
  ret void
}

declare dso_local i32 @sctp_association_hold(%struct.sctp_association*) #1

declare dso_local %struct.sk_buff* @sctp_event2skb(%struct.sctp_ulpevent*) #1

declare dso_local i32 @atomic_add(i32, i32*) #1

declare dso_local i32 @sctp_skb_set_owner_r(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
