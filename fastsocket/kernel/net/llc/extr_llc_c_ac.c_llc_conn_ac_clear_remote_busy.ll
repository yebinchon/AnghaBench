; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/llc/extr_llc_c_ac.c_llc_conn_ac_clear_remote_busy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/llc/extr_llc_c_ac.c_llc_conn_ac_clear_remote_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.llc_sock = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.llc_pdu_sn = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @llc_conn_ac_clear_remote_busy(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.llc_sock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.llc_pdu_sn*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %8 = load %struct.sock*, %struct.sock** %3, align 8
  %9 = call %struct.llc_sock* @llc_sk(%struct.sock* %8)
  store %struct.llc_sock* %9, %struct.llc_sock** %5, align 8
  %10 = load %struct.llc_sock*, %struct.llc_sock** %5, align 8
  %11 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %2
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = call %struct.llc_pdu_sn* @llc_pdu_sn_hdr(%struct.sk_buff* %15)
  store %struct.llc_pdu_sn* %16, %struct.llc_pdu_sn** %7, align 8
  %17 = load %struct.llc_sock*, %struct.llc_sock** %5, align 8
  %18 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %17, i32 0, i32 1
  store i64 0, i64* %18, align 8
  %19 = load %struct.llc_sock*, %struct.llc_sock** %5, align 8
  %20 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = call i32 @del_timer(i32* %21)
  %23 = load %struct.llc_pdu_sn*, %struct.llc_pdu_sn** %7, align 8
  %24 = call i32 @LLC_I_GET_NR(%struct.llc_pdu_sn* %23)
  store i32 %24, i32* %6, align 4
  %25 = load %struct.sock*, %struct.sock** %3, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @llc_conn_resend_i_pdu_as_cmd(%struct.sock* %25, i32 %26, i32 0)
  br label %28

28:                                               ; preds = %14, %2
  ret i32 0
}

declare dso_local %struct.llc_sock* @llc_sk(%struct.sock*) #1

declare dso_local %struct.llc_pdu_sn* @llc_pdu_sn_hdr(%struct.sk_buff*) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @LLC_I_GET_NR(%struct.llc_pdu_sn*) #1

declare dso_local i32 @llc_conn_resend_i_pdu_as_cmd(%struct.sock*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
