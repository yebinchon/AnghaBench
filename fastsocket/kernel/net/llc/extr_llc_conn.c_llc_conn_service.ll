; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/llc/extr_llc_conn.c_llc_conn_service.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/llc/extr_llc_conn.c_llc_conn_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 (%struct.sock*)* }
%struct.sk_buff = type { i32 }
%struct.llc_sock = type { i64 }
%struct.llc_conn_state_trans = type { i64 }

@NBR_CONN_STATES = common dso_local global i64 0, align 8
@NO_STATE_CHANGE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*)* @llc_conn_service to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @llc_conn_service(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.llc_sock*, align 8
  %7 = alloca %struct.llc_conn_state_trans*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  store i32 1, i32* %5, align 4
  %8 = load %struct.sock*, %struct.sock** %3, align 8
  %9 = call %struct.llc_sock* @llc_sk(%struct.sock* %8)
  store %struct.llc_sock* %9, %struct.llc_sock** %6, align 8
  %10 = load %struct.llc_sock*, %struct.llc_sock** %6, align 8
  %11 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @NBR_CONN_STATES, align 8
  %14 = icmp sgt i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %55

16:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  %17 = load %struct.sock*, %struct.sock** %3, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = call %struct.llc_conn_state_trans* @llc_qualify_conn_ev(%struct.sock* %17, %struct.sk_buff* %18)
  store %struct.llc_conn_state_trans* %19, %struct.llc_conn_state_trans** %7, align 8
  %20 = load %struct.llc_conn_state_trans*, %struct.llc_conn_state_trans** %7, align 8
  %21 = icmp ne %struct.llc_conn_state_trans* %20, null
  br i1 %21, label %22, label %54

22:                                               ; preds = %16
  %23 = load %struct.sock*, %struct.sock** %3, align 8
  %24 = load %struct.llc_conn_state_trans*, %struct.llc_conn_state_trans** %7, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %26 = call i32 @llc_exec_conn_trans_actions(%struct.sock* %23, %struct.llc_conn_state_trans* %24, %struct.sk_buff* %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %53, label %29

29:                                               ; preds = %22
  %30 = load %struct.llc_conn_state_trans*, %struct.llc_conn_state_trans** %7, align 8
  %31 = getelementptr inbounds %struct.llc_conn_state_trans, %struct.llc_conn_state_trans* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @NO_STATE_CHANGE, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %53

35:                                               ; preds = %29
  %36 = load %struct.llc_conn_state_trans*, %struct.llc_conn_state_trans** %7, align 8
  %37 = getelementptr inbounds %struct.llc_conn_state_trans, %struct.llc_conn_state_trans* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.llc_sock*, %struct.llc_sock** %6, align 8
  %40 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load %struct.llc_sock*, %struct.llc_sock** %6, align 8
  %42 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @llc_data_accept_state(i64 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %35
  %47 = load %struct.sock*, %struct.sock** %3, align 8
  %48 = getelementptr inbounds %struct.sock, %struct.sock* %47, i32 0, i32 0
  %49 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %48, align 8
  %50 = load %struct.sock*, %struct.sock** %3, align 8
  %51 = call i32 %49(%struct.sock* %50)
  br label %52

52:                                               ; preds = %46, %35
  br label %53

53:                                               ; preds = %52, %29, %22
  br label %54

54:                                               ; preds = %53, %16
  br label %55

55:                                               ; preds = %54, %15
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local %struct.llc_sock* @llc_sk(%struct.sock*) #1

declare dso_local %struct.llc_conn_state_trans* @llc_qualify_conn_ev(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @llc_exec_conn_trans_actions(%struct.sock*, %struct.llc_conn_state_trans*, %struct.sk_buff*) #1

declare dso_local i32 @llc_data_accept_state(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
