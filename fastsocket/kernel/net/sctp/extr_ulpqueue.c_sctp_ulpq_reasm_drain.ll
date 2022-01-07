; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_ulpqueue.c_sctp_ulpq_reasm_drain.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_ulpqueue.c_sctp_ulpq_reasm_drain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_ulpq = type { i32 }
%struct.sctp_ulpevent = type { i32 }
%struct.sk_buff_head = type { i32 }

@MSG_EOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sctp_ulpq*)* @sctp_ulpq_reasm_drain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_ulpq_reasm_drain(%struct.sctp_ulpq* %0) #0 {
  %2 = alloca %struct.sctp_ulpq*, align 8
  %3 = alloca %struct.sctp_ulpevent*, align 8
  %4 = alloca %struct.sk_buff_head, align 4
  store %struct.sctp_ulpq* %0, %struct.sctp_ulpq** %2, align 8
  store %struct.sctp_ulpevent* null, %struct.sctp_ulpevent** %3, align 8
  %5 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %2, align 8
  %6 = getelementptr inbounds %struct.sctp_ulpq, %struct.sctp_ulpq* %5, i32 0, i32 0
  %7 = call i64 @skb_queue_empty(i32* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %41

10:                                               ; preds = %1
  br label %11

11:                                               ; preds = %40, %10
  %12 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %2, align 8
  %13 = call %struct.sctp_ulpevent* @sctp_ulpq_retrieve_reassembled(%struct.sctp_ulpq* %12)
  store %struct.sctp_ulpevent* %13, %struct.sctp_ulpevent** %3, align 8
  %14 = icmp ne %struct.sctp_ulpevent* %13, null
  br i1 %14, label %15, label %41

15:                                               ; preds = %11
  %16 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %3, align 8
  %17 = icmp ne %struct.sctp_ulpevent* %16, null
  br i1 %17, label %18, label %33

18:                                               ; preds = %15
  %19 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %3, align 8
  %20 = getelementptr inbounds %struct.sctp_ulpevent, %struct.sctp_ulpevent* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @MSG_EOR, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %18
  %26 = call i32 @skb_queue_head_init(%struct.sk_buff_head* %4)
  %27 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %3, align 8
  %28 = call i32 @sctp_event2skb(%struct.sctp_ulpevent* %27)
  %29 = call i32 @__skb_queue_tail(%struct.sk_buff_head* %4, i32 %28)
  %30 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %2, align 8
  %31 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %3, align 8
  %32 = call %struct.sctp_ulpevent* @sctp_ulpq_order(%struct.sctp_ulpq* %30, %struct.sctp_ulpevent* %31)
  store %struct.sctp_ulpevent* %32, %struct.sctp_ulpevent** %3, align 8
  br label %33

33:                                               ; preds = %25, %18, %15
  %34 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %3, align 8
  %35 = icmp ne %struct.sctp_ulpevent* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %2, align 8
  %38 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %3, align 8
  %39 = call i32 @sctp_ulpq_tail_event(%struct.sctp_ulpq* %37, %struct.sctp_ulpevent* %38)
  br label %40

40:                                               ; preds = %36, %33
  br label %11

41:                                               ; preds = %9, %11
  ret void
}

declare dso_local i64 @skb_queue_empty(i32*) #1

declare dso_local %struct.sctp_ulpevent* @sctp_ulpq_retrieve_reassembled(%struct.sctp_ulpq*) #1

declare dso_local i32 @skb_queue_head_init(%struct.sk_buff_head*) #1

declare dso_local i32 @__skb_queue_tail(%struct.sk_buff_head*, i32) #1

declare dso_local i32 @sctp_event2skb(%struct.sctp_ulpevent*) #1

declare dso_local %struct.sctp_ulpevent* @sctp_ulpq_order(%struct.sctp_ulpq*, %struct.sctp_ulpevent*) #1

declare dso_local i32 @sctp_ulpq_tail_event(%struct.sctp_ulpq*, %struct.sctp_ulpevent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
