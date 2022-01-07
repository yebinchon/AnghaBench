; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/llc/extr_llc_c_ac.c_llc_conn_ac_send_i_as_ack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/llc/extr_llc_c_ac.c_llc_conn_ac_send_i_as_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.llc_sock = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @llc_conn_ac_send_i_as_ack(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.llc_sock*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %6 = load %struct.sock*, %struct.sock** %3, align 8
  %7 = call %struct.llc_sock* @llc_sk(%struct.sock* %6)
  store %struct.llc_sock* %7, %struct.llc_sock** %5, align 8
  %8 = load %struct.llc_sock*, %struct.llc_sock** %5, align 8
  %9 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load %struct.sock*, %struct.sock** %3, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = call i32 @llc_conn_ac_send_i_rsp_f_set_ackpf(%struct.sock* %13, %struct.sk_buff* %14)
  %16 = load %struct.llc_sock*, %struct.llc_sock** %5, align 8
  %17 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %16, i32 0, i32 1
  store i64 0, i64* %17, align 8
  %18 = load %struct.llc_sock*, %struct.llc_sock** %5, align 8
  %19 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %18, i32 0, i32 0
  store i64 0, i64* %19, align 8
  br label %24

20:                                               ; preds = %2
  %21 = load %struct.sock*, %struct.sock** %3, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = call i32 @llc_conn_ac_send_i_cmd_p_set_0(%struct.sock* %21, %struct.sk_buff* %22)
  br label %24

24:                                               ; preds = %20, %12
  ret i32 0
}

declare dso_local %struct.llc_sock* @llc_sk(%struct.sock*) #1

declare dso_local i32 @llc_conn_ac_send_i_rsp_f_set_ackpf(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @llc_conn_ac_send_i_cmd_p_set_0(%struct.sock*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
