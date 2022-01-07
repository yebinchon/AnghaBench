; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_ulpqueue.c_sctp_ulpq_tail_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_ulpqueue.c_sctp_ulpq_tail_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_ulpq = type { i32 }
%struct.sctp_chunk = type { i32, i64 }
%struct.sk_buff_head = type { i32 }
%struct.sctp_ulpevent = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@MSG_EOR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_ulpq_tail_data(%struct.sctp_ulpq* %0, %struct.sctp_chunk* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sctp_ulpq*, align 8
  %6 = alloca %struct.sctp_chunk*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff_head, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.sctp_ulpevent*, align 8
  store %struct.sctp_ulpq* %0, %struct.sctp_ulpq** %5, align 8
  store %struct.sctp_chunk* %1, %struct.sctp_chunk** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %12 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i32*
  store i32* %14, i32** %9, align 8
  %15 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %16 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call %struct.sctp_ulpevent* @sctp_ulpevent_make_rcvmsg(i32 %17, %struct.sctp_chunk* %18, i32 %19)
  store %struct.sctp_ulpevent* %20, %struct.sctp_ulpevent** %10, align 8
  %21 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %10, align 8
  %22 = icmp ne %struct.sctp_ulpevent* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %55

26:                                               ; preds = %3
  %27 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %5, align 8
  %28 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %10, align 8
  %29 = call %struct.sctp_ulpevent* @sctp_ulpq_reasm(%struct.sctp_ulpq* %27, %struct.sctp_ulpevent* %28)
  store %struct.sctp_ulpevent* %29, %struct.sctp_ulpevent** %10, align 8
  %30 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %10, align 8
  %31 = icmp ne %struct.sctp_ulpevent* %30, null
  br i1 %31, label %32, label %47

32:                                               ; preds = %26
  %33 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %10, align 8
  %34 = getelementptr inbounds %struct.sctp_ulpevent, %struct.sctp_ulpevent* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @MSG_EOR, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %32
  %40 = call i32 @skb_queue_head_init(%struct.sk_buff_head* %8)
  %41 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %10, align 8
  %42 = call i32 @sctp_event2skb(%struct.sctp_ulpevent* %41)
  %43 = call i32 @__skb_queue_tail(%struct.sk_buff_head* %8, i32 %42)
  %44 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %5, align 8
  %45 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %10, align 8
  %46 = call %struct.sctp_ulpevent* @sctp_ulpq_order(%struct.sctp_ulpq* %44, %struct.sctp_ulpevent* %45)
  store %struct.sctp_ulpevent* %46, %struct.sctp_ulpevent** %10, align 8
  br label %47

47:                                               ; preds = %39, %32, %26
  %48 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %10, align 8
  %49 = icmp ne %struct.sctp_ulpevent* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %5, align 8
  %52 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %10, align 8
  %53 = call i32 @sctp_ulpq_tail_event(%struct.sctp_ulpq* %51, %struct.sctp_ulpevent* %52)
  br label %54

54:                                               ; preds = %50, %47
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %54, %23
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local %struct.sctp_ulpevent* @sctp_ulpevent_make_rcvmsg(i32, %struct.sctp_chunk*, i32) #1

declare dso_local %struct.sctp_ulpevent* @sctp_ulpq_reasm(%struct.sctp_ulpq*, %struct.sctp_ulpevent*) #1

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
