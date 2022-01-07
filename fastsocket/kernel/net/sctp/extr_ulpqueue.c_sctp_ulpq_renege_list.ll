; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_ulpqueue.c_sctp_ulpq_renege_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_ulpqueue.c_sctp_ulpq_renege_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_ulpq = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.sctp_tsnmap }
%struct.sctp_tsnmap = type { i32 }
%struct.sk_buff_head = type { i32 }
%struct.sk_buff = type { i32 }
%struct.sctp_ulpevent = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.sctp_ulpq*, %struct.sk_buff_head*, i64)* @sctp_ulpq_renege_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sctp_ulpq_renege_list(%struct.sctp_ulpq* %0, %struct.sk_buff_head* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.sctp_ulpq*, align 8
  %6 = alloca %struct.sk_buff_head*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.sctp_ulpevent*, align 8
  %12 = alloca %struct.sctp_tsnmap*, align 8
  store %struct.sctp_ulpq* %0, %struct.sctp_ulpq** %5, align 8
  store %struct.sk_buff_head* %1, %struct.sk_buff_head** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %13 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %5, align 8
  %14 = getelementptr inbounds %struct.sctp_ulpq, %struct.sctp_ulpq* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store %struct.sctp_tsnmap* %17, %struct.sctp_tsnmap** %12, align 8
  br label %18

18:                                               ; preds = %42, %3
  %19 = load %struct.sk_buff_head*, %struct.sk_buff_head** %6, align 8
  %20 = call %struct.sk_buff* @__skb_dequeue_tail(%struct.sk_buff_head* %19)
  store %struct.sk_buff* %20, %struct.sk_buff** %10, align 8
  %21 = icmp ne %struct.sk_buff* %20, null
  br i1 %21, label %22, label %43

22:                                               ; preds = %18
  %23 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %24 = call i64 @skb_headlen(%struct.sk_buff* %23)
  %25 = load i64, i64* %8, align 8
  %26 = add nsw i64 %25, %24
  store i64 %26, i64* %8, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %28 = call %struct.sctp_ulpevent* @sctp_skb2event(%struct.sk_buff* %27)
  store %struct.sctp_ulpevent* %28, %struct.sctp_ulpevent** %11, align 8
  %29 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %11, align 8
  %30 = getelementptr inbounds %struct.sctp_ulpevent, %struct.sctp_ulpevent* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %9, align 4
  %32 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %11, align 8
  %33 = call i32 @sctp_ulpevent_free(%struct.sctp_ulpevent* %32)
  %34 = load %struct.sctp_tsnmap*, %struct.sctp_tsnmap** %12, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @sctp_tsnmap_renege(%struct.sctp_tsnmap* %34, i32 %35)
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* %7, align 8
  %39 = icmp sge i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %22
  %41 = load i64, i64* %8, align 8
  store i64 %41, i64* %4, align 8
  br label %45

42:                                               ; preds = %22
  br label %18

43:                                               ; preds = %18
  %44 = load i64, i64* %8, align 8
  store i64 %44, i64* %4, align 8
  br label %45

45:                                               ; preds = %43, %40
  %46 = load i64, i64* %4, align 8
  ret i64 %46
}

declare dso_local %struct.sk_buff* @__skb_dequeue_tail(%struct.sk_buff_head*) #1

declare dso_local i64 @skb_headlen(%struct.sk_buff*) #1

declare dso_local %struct.sctp_ulpevent* @sctp_skb2event(%struct.sk_buff*) #1

declare dso_local i32 @sctp_ulpevent_free(%struct.sctp_ulpevent*) #1

declare dso_local i32 @sctp_tsnmap_renege(%struct.sctp_tsnmap*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
