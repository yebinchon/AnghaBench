; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_ulpqueue.c_sctp_ulpq_abort_pd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_ulpqueue.c_sctp_ulpq_abort_pd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_ulpq = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.sock* }
%struct.sock = type { i32 (%struct.sock*, i32)*, i32 }
%struct.sctp_ulpevent = type { i32 }
%struct.TYPE_6__ = type { i32 }

@SCTP_PARTIAL_DELIVERY_EVENT = common dso_local global i32 0, align 4
@SCTP_PARTIAL_DELIVERY_ABORTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sctp_ulpq_abort_pd(%struct.sctp_ulpq* %0, i32 %1) #0 {
  %3 = alloca %struct.sctp_ulpq*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sctp_ulpevent*, align 8
  %6 = alloca %struct.sock*, align 8
  store %struct.sctp_ulpq* %0, %struct.sctp_ulpq** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.sctp_ulpevent* null, %struct.sctp_ulpevent** %5, align 8
  %7 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %3, align 8
  %8 = getelementptr inbounds %struct.sctp_ulpq, %struct.sctp_ulpq* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %54

12:                                               ; preds = %2
  %13 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %3, align 8
  %14 = getelementptr inbounds %struct.sctp_ulpq, %struct.sctp_ulpq* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.sock*, %struct.sock** %17, align 8
  store %struct.sock* %18, %struct.sock** %6, align 8
  %19 = load i32, i32* @SCTP_PARTIAL_DELIVERY_EVENT, align 4
  %20 = load %struct.sock*, %struct.sock** %6, align 8
  %21 = call %struct.TYPE_6__* @sctp_sk(%struct.sock* %20)
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = call i64 @sctp_ulpevent_type_enabled(i32 %19, i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %12
  %26 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %3, align 8
  %27 = getelementptr inbounds %struct.sctp_ulpq, %struct.sctp_ulpq* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = load i32, i32* @SCTP_PARTIAL_DELIVERY_ABORTED, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call %struct.sctp_ulpevent* @sctp_ulpevent_make_pdapi(%struct.TYPE_5__* %28, i32 %29, i32 %30)
  store %struct.sctp_ulpevent* %31, %struct.sctp_ulpevent** %5, align 8
  br label %32

32:                                               ; preds = %25, %12
  %33 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %5, align 8
  %34 = icmp ne %struct.sctp_ulpevent* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load %struct.sock*, %struct.sock** %6, align 8
  %37 = getelementptr inbounds %struct.sock, %struct.sock* %36, i32 0, i32 1
  %38 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %5, align 8
  %39 = call i32 @sctp_event2skb(%struct.sctp_ulpevent* %38)
  %40 = call i32 @__skb_queue_tail(i32* %37, i32 %39)
  br label %41

41:                                               ; preds = %35, %32
  %42 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %3, align 8
  %43 = call i64 @sctp_ulpq_clear_pd(%struct.sctp_ulpq* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  %46 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %5, align 8
  %47 = icmp ne %struct.sctp_ulpevent* %46, null
  br i1 %47, label %48, label %54

48:                                               ; preds = %45, %41
  %49 = load %struct.sock*, %struct.sock** %6, align 8
  %50 = getelementptr inbounds %struct.sock, %struct.sock* %49, i32 0, i32 0
  %51 = load i32 (%struct.sock*, i32)*, i32 (%struct.sock*, i32)** %50, align 8
  %52 = load %struct.sock*, %struct.sock** %6, align 8
  %53 = call i32 %51(%struct.sock* %52, i32 0)
  br label %54

54:                                               ; preds = %11, %48, %45
  ret void
}

declare dso_local i64 @sctp_ulpevent_type_enabled(i32, i32*) #1

declare dso_local %struct.TYPE_6__* @sctp_sk(%struct.sock*) #1

declare dso_local %struct.sctp_ulpevent* @sctp_ulpevent_make_pdapi(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @__skb_queue_tail(i32*, i32) #1

declare dso_local i32 @sctp_event2skb(%struct.sctp_ulpevent*) #1

declare dso_local i64 @sctp_ulpq_clear_pd(%struct.sctp_ulpq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
