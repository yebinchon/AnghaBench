; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/llc/extr_llc_sap.c_llc_sap_state_process.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/llc/extr_llc_sap.c_llc_sap_state_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.llc_sap = type { i32 }
%struct.sk_buff = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.llc_sap_state_ev = type { i64, i32 }

@LLC_IND = common dso_local global i64 0, align 8
@TCP_LISTEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.llc_sap*, %struct.sk_buff*)* @llc_sap_state_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @llc_sap_state_process(%struct.llc_sap* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.llc_sap*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.llc_sap_state_ev*, align 8
  store %struct.llc_sap* %0, %struct.llc_sap** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %7 = call %struct.llc_sap_state_ev* @llc_sap_ev(%struct.sk_buff* %6)
  store %struct.llc_sap_state_ev* %7, %struct.llc_sap_state_ev** %5, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = call i32 @skb_get(%struct.sk_buff* %8)
  %10 = load %struct.llc_sap_state_ev*, %struct.llc_sap_state_ev** %5, align 8
  %11 = getelementptr inbounds %struct.llc_sap_state_ev, %struct.llc_sap_state_ev* %10, i32 0, i32 0
  store i64 0, i64* %11, align 8
  %12 = load %struct.llc_sap*, %struct.llc_sap** %3, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = call i32 @llc_sap_next_state(%struct.llc_sap* %12, %struct.sk_buff* %13)
  %15 = load %struct.llc_sap_state_ev*, %struct.llc_sap_state_ev** %5, align 8
  %16 = getelementptr inbounds %struct.llc_sap_state_ev, %struct.llc_sap_state_ev* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @LLC_IND, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %51

20:                                               ; preds = %2
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @TCP_LISTEN, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %20
  %29 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %30 = call i32 @kfree_skb(%struct.sk_buff* %29)
  br label %50

31:                                               ; preds = %20
  %32 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %33 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %36 = load %struct.llc_sap_state_ev*, %struct.llc_sap_state_ev** %5, align 8
  %37 = getelementptr inbounds %struct.llc_sap_state_ev, %struct.llc_sap_state_ev* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @llc_save_primitive(%struct.TYPE_3__* %34, %struct.sk_buff* %35, i32 %38)
  %40 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %41 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %44 = call i64 @sock_queue_rcv_skb(%struct.TYPE_3__* %42, %struct.sk_buff* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %31
  %47 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %48 = call i32 @kfree_skb(%struct.sk_buff* %47)
  br label %49

49:                                               ; preds = %46, %31
  br label %50

50:                                               ; preds = %49, %28
  br label %51

51:                                               ; preds = %50, %2
  %52 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %53 = call i32 @kfree_skb(%struct.sk_buff* %52)
  ret void
}

declare dso_local %struct.llc_sap_state_ev* @llc_sap_ev(%struct.sk_buff*) #1

declare dso_local i32 @skb_get(%struct.sk_buff*) #1

declare dso_local i32 @llc_sap_next_state(%struct.llc_sap*, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @llc_save_primitive(%struct.TYPE_3__*, %struct.sk_buff*, i32) #1

declare dso_local i64 @sock_queue_rcv_skb(%struct.TYPE_3__*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
