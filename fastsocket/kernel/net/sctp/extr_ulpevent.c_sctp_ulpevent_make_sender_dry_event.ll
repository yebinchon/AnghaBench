; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_ulpevent.c_sctp_ulpevent_make_sender_dry_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_ulpevent.c_sctp_ulpevent_make_sender_dry_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_ulpevent = type { i32 }
%struct.sctp_association = type { i32 }
%struct.sctp_sender_dry_event = type { i32, i32, i64, i32 }
%struct.sk_buff = type { i32 }

@MSG_NOTIFICATION = common dso_local global i32 0, align 4
@SCTP_SENDER_DRY_EVENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sctp_ulpevent* @sctp_ulpevent_make_sender_dry_event(%struct.sctp_association* %0, i32 %1) #0 {
  %3 = alloca %struct.sctp_ulpevent*, align 8
  %4 = alloca %struct.sctp_association*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sctp_ulpevent*, align 8
  %7 = alloca %struct.sctp_sender_dry_event*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  store %struct.sctp_association* %0, %struct.sctp_association** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @MSG_NOTIFICATION, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.sctp_ulpevent* @sctp_ulpevent_new(i32 24, i32 %9, i32 %10)
  store %struct.sctp_ulpevent* %11, %struct.sctp_ulpevent** %6, align 8
  %12 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %6, align 8
  %13 = icmp ne %struct.sctp_ulpevent* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store %struct.sctp_ulpevent* null, %struct.sctp_ulpevent** %3, align 8
  br label %36

15:                                               ; preds = %2
  %16 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %6, align 8
  %17 = call %struct.sk_buff* @sctp_event2skb(%struct.sctp_ulpevent* %16)
  store %struct.sk_buff* %17, %struct.sk_buff** %8, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %19 = call i64 @skb_put(%struct.sk_buff* %18, i32 24)
  %20 = inttoptr i64 %19 to %struct.sctp_sender_dry_event*
  store %struct.sctp_sender_dry_event* %20, %struct.sctp_sender_dry_event** %7, align 8
  %21 = load i32, i32* @SCTP_SENDER_DRY_EVENT, align 4
  %22 = load %struct.sctp_sender_dry_event*, %struct.sctp_sender_dry_event** %7, align 8
  %23 = getelementptr inbounds %struct.sctp_sender_dry_event, %struct.sctp_sender_dry_event* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 8
  %24 = load %struct.sctp_sender_dry_event*, %struct.sctp_sender_dry_event** %7, align 8
  %25 = getelementptr inbounds %struct.sctp_sender_dry_event, %struct.sctp_sender_dry_event* %24, i32 0, i32 2
  store i64 0, i64* %25, align 8
  %26 = load %struct.sctp_sender_dry_event*, %struct.sctp_sender_dry_event** %7, align 8
  %27 = getelementptr inbounds %struct.sctp_sender_dry_event, %struct.sctp_sender_dry_event* %26, i32 0, i32 0
  store i32 24, i32* %27, align 8
  %28 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %6, align 8
  %29 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %30 = call i32 @sctp_ulpevent_set_owner(%struct.sctp_ulpevent* %28, %struct.sctp_association* %29)
  %31 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %32 = call i32 @sctp_assoc2id(%struct.sctp_association* %31)
  %33 = load %struct.sctp_sender_dry_event*, %struct.sctp_sender_dry_event** %7, align 8
  %34 = getelementptr inbounds %struct.sctp_sender_dry_event, %struct.sctp_sender_dry_event* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %6, align 8
  store %struct.sctp_ulpevent* %35, %struct.sctp_ulpevent** %3, align 8
  br label %36

36:                                               ; preds = %15, %14
  %37 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %3, align 8
  ret %struct.sctp_ulpevent* %37
}

declare dso_local %struct.sctp_ulpevent* @sctp_ulpevent_new(i32, i32, i32) #1

declare dso_local %struct.sk_buff* @sctp_event2skb(%struct.sctp_ulpevent*) #1

declare dso_local i64 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @sctp_ulpevent_set_owner(%struct.sctp_ulpevent*, %struct.sctp_association*) #1

declare dso_local i32 @sctp_assoc2id(%struct.sctp_association*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
