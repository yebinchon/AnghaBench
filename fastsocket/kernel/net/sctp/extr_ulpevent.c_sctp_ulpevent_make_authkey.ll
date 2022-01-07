; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_ulpevent.c_sctp_ulpevent_make_authkey.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_ulpevent.c_sctp_ulpevent_make_authkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_ulpevent = type { i32 }
%struct.sctp_association = type { i32 }
%struct.sctp_authkey_event = type { i32, i32, i32, i64, i32, i64, i32 }
%struct.sk_buff = type { i32 }

@MSG_NOTIFICATION = common dso_local global i32 0, align 4
@SCTP_AUTHENTICATION_INDICATION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sctp_ulpevent* @sctp_ulpevent_make_authkey(%struct.sctp_association* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.sctp_ulpevent*, align 8
  %6 = alloca %struct.sctp_association*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sctp_ulpevent*, align 8
  %11 = alloca %struct.sctp_authkey_event*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  store %struct.sctp_association* %0, %struct.sctp_association** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* @MSG_NOTIFICATION, align 4
  %14 = load i32, i32* %9, align 4
  %15 = call %struct.sctp_ulpevent* @sctp_ulpevent_new(i32 48, i32 %13, i32 %14)
  store %struct.sctp_ulpevent* %15, %struct.sctp_ulpevent** %10, align 8
  %16 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %10, align 8
  %17 = icmp ne %struct.sctp_ulpevent* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  br label %48

19:                                               ; preds = %4
  %20 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %10, align 8
  %21 = call %struct.sk_buff* @sctp_event2skb(%struct.sctp_ulpevent* %20)
  store %struct.sk_buff* %21, %struct.sk_buff** %12, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %23 = call i64 @skb_put(%struct.sk_buff* %22, i32 48)
  %24 = inttoptr i64 %23 to %struct.sctp_authkey_event*
  store %struct.sctp_authkey_event* %24, %struct.sctp_authkey_event** %11, align 8
  %25 = load i32, i32* @SCTP_AUTHENTICATION_INDICATION, align 4
  %26 = load %struct.sctp_authkey_event*, %struct.sctp_authkey_event** %11, align 8
  %27 = getelementptr inbounds %struct.sctp_authkey_event, %struct.sctp_authkey_event* %26, i32 0, i32 6
  store i32 %25, i32* %27, align 8
  %28 = load %struct.sctp_authkey_event*, %struct.sctp_authkey_event** %11, align 8
  %29 = getelementptr inbounds %struct.sctp_authkey_event, %struct.sctp_authkey_event* %28, i32 0, i32 5
  store i64 0, i64* %29, align 8
  %30 = load %struct.sctp_authkey_event*, %struct.sctp_authkey_event** %11, align 8
  %31 = getelementptr inbounds %struct.sctp_authkey_event, %struct.sctp_authkey_event* %30, i32 0, i32 0
  store i32 48, i32* %31, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.sctp_authkey_event*, %struct.sctp_authkey_event** %11, align 8
  %34 = getelementptr inbounds %struct.sctp_authkey_event, %struct.sctp_authkey_event* %33, i32 0, i32 4
  store i32 %32, i32* %34, align 8
  %35 = load %struct.sctp_authkey_event*, %struct.sctp_authkey_event** %11, align 8
  %36 = getelementptr inbounds %struct.sctp_authkey_event, %struct.sctp_authkey_event* %35, i32 0, i32 3
  store i64 0, i64* %36, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.sctp_authkey_event*, %struct.sctp_authkey_event** %11, align 8
  %39 = getelementptr inbounds %struct.sctp_authkey_event, %struct.sctp_authkey_event* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  %40 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %10, align 8
  %41 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %42 = call i32 @sctp_ulpevent_set_owner(%struct.sctp_ulpevent* %40, %struct.sctp_association* %41)
  %43 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %44 = call i32 @sctp_assoc2id(%struct.sctp_association* %43)
  %45 = load %struct.sctp_authkey_event*, %struct.sctp_authkey_event** %11, align 8
  %46 = getelementptr inbounds %struct.sctp_authkey_event, %struct.sctp_authkey_event* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %10, align 8
  store %struct.sctp_ulpevent* %47, %struct.sctp_ulpevent** %5, align 8
  br label %49

48:                                               ; preds = %18
  store %struct.sctp_ulpevent* null, %struct.sctp_ulpevent** %5, align 8
  br label %49

49:                                               ; preds = %48, %19
  %50 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %5, align 8
  ret %struct.sctp_ulpevent* %50
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
