; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/hidp/extr_core.c_hidp_process_transmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/hidp/extr_core.c_hidp_process_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hidp_session = type { i32, i32, i32, i32 }
%struct.sk_buff = type { i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"session %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hidp_session*)* @hidp_process_transmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hidp_process_transmit(%struct.hidp_session* %0) #0 {
  %2 = alloca %struct.hidp_session*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  store %struct.hidp_session* %0, %struct.hidp_session** %2, align 8
  %4 = load %struct.hidp_session*, %struct.hidp_session** %2, align 8
  %5 = call i32 @BT_DBG(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), %struct.hidp_session* %4)
  br label %6

6:                                                ; preds = %28, %1
  %7 = load %struct.hidp_session*, %struct.hidp_session** %2, align 8
  %8 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %7, i32 0, i32 2
  %9 = call %struct.sk_buff* @skb_dequeue(i32* %8)
  store %struct.sk_buff* %9, %struct.sk_buff** %3, align 8
  %10 = icmp ne %struct.sk_buff* %9, null
  br i1 %10, label %11, label %33

11:                                               ; preds = %6
  %12 = load %struct.hidp_session*, %struct.hidp_session** %2, align 8
  %13 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @hidp_send_frame(i32 %14, i32 %17, i32 %20)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %11
  %24 = load %struct.hidp_session*, %struct.hidp_session** %2, align 8
  %25 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %24, i32 0, i32 2
  %26 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %27 = call i32 @skb_queue_head(i32* %25, %struct.sk_buff* %26)
  br label %33

28:                                               ; preds = %11
  %29 = load %struct.hidp_session*, %struct.hidp_session** %2, align 8
  %30 = call i32 @hidp_set_timer(%struct.hidp_session* %29)
  %31 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %32 = call i32 @kfree_skb(%struct.sk_buff* %31)
  br label %6

33:                                               ; preds = %23, %6
  br label %34

34:                                               ; preds = %56, %33
  %35 = load %struct.hidp_session*, %struct.hidp_session** %2, align 8
  %36 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %35, i32 0, i32 0
  %37 = call %struct.sk_buff* @skb_dequeue(i32* %36)
  store %struct.sk_buff* %37, %struct.sk_buff** %3, align 8
  %38 = icmp ne %struct.sk_buff* %37, null
  br i1 %38, label %39, label %61

39:                                               ; preds = %34
  %40 = load %struct.hidp_session*, %struct.hidp_session** %2, align 8
  %41 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %44 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %47 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @hidp_send_frame(i32 %42, i32 %45, i32 %48)
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %39
  %52 = load %struct.hidp_session*, %struct.hidp_session** %2, align 8
  %53 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %52, i32 0, i32 0
  %54 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %55 = call i32 @skb_queue_head(i32* %53, %struct.sk_buff* %54)
  br label %61

56:                                               ; preds = %39
  %57 = load %struct.hidp_session*, %struct.hidp_session** %2, align 8
  %58 = call i32 @hidp_set_timer(%struct.hidp_session* %57)
  %59 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %60 = call i32 @kfree_skb(%struct.sk_buff* %59)
  br label %34

61:                                               ; preds = %51, %34
  ret void
}

declare dso_local i32 @BT_DBG(i8*, %struct.hidp_session*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i64 @hidp_send_frame(i32, i32, i32) #1

declare dso_local i32 @skb_queue_head(i32*, %struct.sk_buff*) #1

declare dso_local i32 @hidp_set_timer(%struct.hidp_session*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
