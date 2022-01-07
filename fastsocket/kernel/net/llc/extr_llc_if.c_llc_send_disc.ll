; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/llc/extr_llc_if.c_llc_send_disc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/llc/extr_llc_if.c_llc_send_disc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, i64 }
%struct.llc_conn_state_ev = type { i32, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_2__ = type { i64 }

@SOCK_STREAM = common dso_local global i64 0, align 8
@TCP_ESTABLISHED = common dso_local global i64 0, align 8
@LLC_CONN_STATE_ADM = common dso_local global i64 0, align 8
@LLC_CONN_OUT_OF_SVC = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@TCP_CLOSING = common dso_local global i64 0, align 8
@LLC_CONN_EV_TYPE_PRIM = common dso_local global i32 0, align 4
@LLC_DISC_PRIM = common dso_local global i32 0, align 4
@LLC_PRIM_TYPE_REQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @llc_send_disc(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.llc_conn_state_ev*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  store i32 1, i32* %3, align 4
  %6 = load %struct.sock*, %struct.sock** %2, align 8
  %7 = call i32 @sock_hold(%struct.sock* %6)
  %8 = load %struct.sock*, %struct.sock** %2, align 8
  %9 = getelementptr inbounds %struct.sock, %struct.sock* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @SOCK_STREAM, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %33, label %13

13:                                               ; preds = %1
  %14 = load %struct.sock*, %struct.sock** %2, align 8
  %15 = getelementptr inbounds %struct.sock, %struct.sock* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @TCP_ESTABLISHED, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %33, label %19

19:                                               ; preds = %13
  %20 = load %struct.sock*, %struct.sock** %2, align 8
  %21 = call %struct.TYPE_2__* @llc_sk(%struct.sock* %20)
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @LLC_CONN_STATE_ADM, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %33, label %26

26:                                               ; preds = %19
  %27 = load %struct.sock*, %struct.sock** %2, align 8
  %28 = call %struct.TYPE_2__* @llc_sk(%struct.sock* %27)
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @LLC_CONN_OUT_OF_SVC, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %26, %19, %13, %1
  br label %61

34:                                               ; preds = %26
  %35 = load i32, i32* @GFP_ATOMIC, align 4
  %36 = call %struct.sk_buff* @alloc_skb(i32 0, i32 %35)
  store %struct.sk_buff* %36, %struct.sk_buff** %5, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %38 = icmp ne %struct.sk_buff* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  br label %61

40:                                               ; preds = %34
  %41 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %42 = load %struct.sock*, %struct.sock** %2, align 8
  %43 = call i32 @skb_set_owner_w(%struct.sk_buff* %41, %struct.sock* %42)
  %44 = load i64, i64* @TCP_CLOSING, align 8
  %45 = load %struct.sock*, %struct.sock** %2, align 8
  %46 = getelementptr inbounds %struct.sock, %struct.sock* %45, i32 0, i32 1
  store i64 %44, i64* %46, align 8
  %47 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %48 = call %struct.llc_conn_state_ev* @llc_conn_ev(%struct.sk_buff* %47)
  store %struct.llc_conn_state_ev* %48, %struct.llc_conn_state_ev** %4, align 8
  %49 = load i32, i32* @LLC_CONN_EV_TYPE_PRIM, align 4
  %50 = load %struct.llc_conn_state_ev*, %struct.llc_conn_state_ev** %4, align 8
  %51 = getelementptr inbounds %struct.llc_conn_state_ev, %struct.llc_conn_state_ev* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @LLC_DISC_PRIM, align 4
  %53 = load %struct.llc_conn_state_ev*, %struct.llc_conn_state_ev** %4, align 8
  %54 = getelementptr inbounds %struct.llc_conn_state_ev, %struct.llc_conn_state_ev* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* @LLC_PRIM_TYPE_REQ, align 4
  %56 = load %struct.llc_conn_state_ev*, %struct.llc_conn_state_ev** %4, align 8
  %57 = getelementptr inbounds %struct.llc_conn_state_ev, %struct.llc_conn_state_ev* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  %58 = load %struct.sock*, %struct.sock** %2, align 8
  %59 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %60 = call i32 @llc_conn_state_process(%struct.sock* %58, %struct.sk_buff* %59)
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %40, %39, %33
  %62 = load %struct.sock*, %struct.sock** %2, align 8
  %63 = call i32 @sock_put(%struct.sock* %62)
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @sock_hold(%struct.sock*) #1

declare dso_local %struct.TYPE_2__* @llc_sk(%struct.sock*) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @skb_set_owner_w(%struct.sk_buff*, %struct.sock*) #1

declare dso_local %struct.llc_conn_state_ev* @llc_conn_ev(%struct.sk_buff*) #1

declare dso_local i32 @llc_conn_state_process(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
