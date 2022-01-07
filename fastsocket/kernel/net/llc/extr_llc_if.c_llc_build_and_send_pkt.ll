; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/llc/extr_llc_if.c_llc_build_and_send_pkt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/llc/extr_llc_if.c_llc_build_and_send_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.llc_conn_state_ev = type { i32, i32, i32 }
%struct.llc_sock = type { i64, i32, i32, i64 }

@ECONNABORTED = common dso_local global i32 0, align 4
@LLC_CONN_STATE_ADM = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@LLC_CONN_EV_TYPE_PRIM = common dso_local global i32 0, align 4
@LLC_DATA_PRIM = common dso_local global i32 0, align 4
@LLC_PRIM_TYPE_REQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @llc_build_and_send_pkt(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.llc_conn_state_ev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.llc_sock*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %8 = load i32, i32* @ECONNABORTED, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %6, align 4
  %10 = load %struct.sock*, %struct.sock** %3, align 8
  %11 = call %struct.llc_sock* @llc_sk(%struct.sock* %10)
  store %struct.llc_sock* %11, %struct.llc_sock** %7, align 8
  %12 = load %struct.llc_sock*, %struct.llc_sock** %7, align 8
  %13 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @LLC_CONN_STATE_ADM, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %62

21:                                               ; preds = %2
  %22 = load i32, i32* @EBUSY, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  %24 = load %struct.llc_sock*, %struct.llc_sock** %7, align 8
  %25 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i64 @llc_data_accept_state(i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %21
  %30 = load %struct.llc_sock*, %struct.llc_sock** %7, align 8
  %31 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br label %34

34:                                               ; preds = %29, %21
  %35 = phi i1 [ true, %21 ], [ %33, %29 ]
  %36 = zext i1 %35 to i32
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load %struct.llc_sock*, %struct.llc_sock** %7, align 8
  %41 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %40, i32 0, i32 1
  store i32 1, i32* %41, align 8
  br label %62

42:                                               ; preds = %34
  %43 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %44 = call %struct.llc_conn_state_ev* @llc_conn_ev(%struct.sk_buff* %43)
  store %struct.llc_conn_state_ev* %44, %struct.llc_conn_state_ev** %5, align 8
  %45 = load i32, i32* @LLC_CONN_EV_TYPE_PRIM, align 4
  %46 = load %struct.llc_conn_state_ev*, %struct.llc_conn_state_ev** %5, align 8
  %47 = getelementptr inbounds %struct.llc_conn_state_ev, %struct.llc_conn_state_ev* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @LLC_DATA_PRIM, align 4
  %49 = load %struct.llc_conn_state_ev*, %struct.llc_conn_state_ev** %5, align 8
  %50 = getelementptr inbounds %struct.llc_conn_state_ev, %struct.llc_conn_state_ev* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @LLC_PRIM_TYPE_REQ, align 4
  %52 = load %struct.llc_conn_state_ev*, %struct.llc_conn_state_ev** %5, align 8
  %53 = getelementptr inbounds %struct.llc_conn_state_ev, %struct.llc_conn_state_ev* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load %struct.llc_sock*, %struct.llc_sock** %7, align 8
  %55 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %58 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  %59 = load %struct.sock*, %struct.sock** %3, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %61 = call i32 @llc_conn_state_process(%struct.sock* %59, %struct.sk_buff* %60)
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %42, %39, %20
  %63 = load i32, i32* %6, align 4
  ret i32 %63
}

declare dso_local %struct.llc_sock* @llc_sk(%struct.sock*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @llc_data_accept_state(i64) #1

declare dso_local %struct.llc_conn_state_ev* @llc_conn_ev(%struct.sk_buff*) #1

declare dso_local i32 @llc_conn_state_process(%struct.sock*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
