; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/rfcomm/extr_core.c_rfcomm_process_rx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/rfcomm/extr_core.c_rfcomm_process_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rfcomm_session = type { i32, i32, %struct.socket* }
%struct.socket = type { %struct.sock* }
%struct.sock = type { i64, i32, i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"session %p state %ld qlen %d\00", align 1
@BT_CLOSED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rfcomm_session*)* @rfcomm_process_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rfcomm_process_rx(%struct.rfcomm_session* %0) #0 {
  %2 = alloca %struct.rfcomm_session*, align 8
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  store %struct.rfcomm_session* %0, %struct.rfcomm_session** %2, align 8
  %6 = load %struct.rfcomm_session*, %struct.rfcomm_session** %2, align 8
  %7 = getelementptr inbounds %struct.rfcomm_session, %struct.rfcomm_session* %6, i32 0, i32 2
  %8 = load %struct.socket*, %struct.socket** %7, align 8
  store %struct.socket* %8, %struct.socket** %3, align 8
  %9 = load %struct.socket*, %struct.socket** %3, align 8
  %10 = getelementptr inbounds %struct.socket, %struct.socket* %9, i32 0, i32 0
  %11 = load %struct.sock*, %struct.sock** %10, align 8
  store %struct.sock* %11, %struct.sock** %4, align 8
  %12 = load %struct.rfcomm_session*, %struct.rfcomm_session** %2, align 8
  %13 = load %struct.rfcomm_session*, %struct.rfcomm_session** %2, align 8
  %14 = getelementptr inbounds %struct.rfcomm_session, %struct.rfcomm_session* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.sock*, %struct.sock** %4, align 8
  %17 = getelementptr inbounds %struct.sock, %struct.sock* %16, i32 0, i32 2
  %18 = call i32 @skb_queue_len(i32* %17)
  %19 = call i32 @BT_DBG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), %struct.rfcomm_session* %12, i32 %15, i32 %18)
  br label %20

20:                                               ; preds = %25, %1
  %21 = load %struct.sock*, %struct.sock** %4, align 8
  %22 = getelementptr inbounds %struct.sock, %struct.sock* %21, i32 0, i32 2
  %23 = call %struct.sk_buff* @skb_dequeue(i32* %22)
  store %struct.sk_buff* %23, %struct.sk_buff** %5, align 8
  %24 = icmp ne %struct.sk_buff* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %27 = call i32 @skb_orphan(%struct.sk_buff* %26)
  %28 = load %struct.rfcomm_session*, %struct.rfcomm_session** %2, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %30 = call i32 @rfcomm_recv_frame(%struct.rfcomm_session* %28, %struct.sk_buff* %29)
  br label %20

31:                                               ; preds = %20
  %32 = load %struct.sock*, %struct.sock** %4, align 8
  %33 = getelementptr inbounds %struct.sock, %struct.sock* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @BT_CLOSED, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %51

37:                                               ; preds = %31
  %38 = load %struct.rfcomm_session*, %struct.rfcomm_session** %2, align 8
  %39 = getelementptr inbounds %struct.rfcomm_session, %struct.rfcomm_session* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = load %struct.rfcomm_session*, %struct.rfcomm_session** %2, align 8
  %44 = call i32 @rfcomm_session_put(%struct.rfcomm_session* %43)
  br label %45

45:                                               ; preds = %42, %37
  %46 = load %struct.rfcomm_session*, %struct.rfcomm_session** %2, align 8
  %47 = load %struct.sock*, %struct.sock** %4, align 8
  %48 = getelementptr inbounds %struct.sock, %struct.sock* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @rfcomm_session_close(%struct.rfcomm_session* %46, i32 %49)
  br label %51

51:                                               ; preds = %45, %31
  ret void
}

declare dso_local i32 @BT_DBG(i8*, %struct.rfcomm_session*, i32, i32) #1

declare dso_local i32 @skb_queue_len(i32*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @skb_orphan(%struct.sk_buff*) #1

declare dso_local i32 @rfcomm_recv_frame(%struct.rfcomm_session*, %struct.sk_buff*) #1

declare dso_local i32 @rfcomm_session_put(%struct.rfcomm_session*) #1

declare dso_local i32 @rfcomm_session_close(%struct.rfcomm_session*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
