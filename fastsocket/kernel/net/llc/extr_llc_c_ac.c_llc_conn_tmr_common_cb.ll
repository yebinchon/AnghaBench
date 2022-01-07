; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/llc/extr_llc_c_ac.c_llc_conn_tmr_common_cb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/llc/extr_llc_c_ac.c_llc_conn_tmr_common_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.llc_conn_state_ev = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32)* @llc_conn_tmr_common_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @llc_conn_tmr_common_cb(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.llc_conn_state_ev*, align 8
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i64, i64* %3, align 8
  %9 = inttoptr i64 %8 to %struct.sock*
  store %struct.sock* %9, %struct.sock** %5, align 8
  %10 = load i32, i32* @GFP_ATOMIC, align 4
  %11 = call %struct.sk_buff* @alloc_skb(i32 0, i32 %10)
  store %struct.sk_buff* %11, %struct.sk_buff** %6, align 8
  %12 = load %struct.sock*, %struct.sock** %5, align 8
  %13 = call i32 @bh_lock_sock(%struct.sock* %12)
  %14 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %15 = icmp ne %struct.sk_buff* %14, null
  br i1 %15, label %16, label %28

16:                                               ; preds = %2
  %17 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %18 = call %struct.llc_conn_state_ev* @llc_conn_ev(%struct.sk_buff* %17)
  store %struct.llc_conn_state_ev* %18, %struct.llc_conn_state_ev** %7, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %20 = load %struct.sock*, %struct.sock** %5, align 8
  %21 = call i32 @skb_set_owner_r(%struct.sk_buff* %19, %struct.sock* %20)
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.llc_conn_state_ev*, %struct.llc_conn_state_ev** %7, align 8
  %24 = getelementptr inbounds %struct.llc_conn_state_ev, %struct.llc_conn_state_ev* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.sock*, %struct.sock** %5, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %27 = call i32 @llc_process_tmr_ev(%struct.sock* %25, %struct.sk_buff* %26)
  br label %28

28:                                               ; preds = %16, %2
  %29 = load %struct.sock*, %struct.sock** %5, align 8
  %30 = call i32 @bh_unlock_sock(%struct.sock* %29)
  ret void
}

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @bh_lock_sock(%struct.sock*) #1

declare dso_local %struct.llc_conn_state_ev* @llc_conn_ev(%struct.sk_buff*) #1

declare dso_local i32 @skb_set_owner_r(%struct.sk_buff*, %struct.sock*) #1

declare dso_local i32 @llc_process_tmr_ev(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @bh_unlock_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
