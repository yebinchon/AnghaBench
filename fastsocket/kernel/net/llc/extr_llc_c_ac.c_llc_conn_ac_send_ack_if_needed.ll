; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/llc/extr_llc_c_ac.c_llc_conn_ac_send_ack_if_needed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/llc/extr_llc_c_ac.c_llc_conn_ac_send_ack_if_needed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.llc_sock = type { i32, i32, i32, i32, i32 }

@LLC_2_SEQ_NBR_MODULO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @llc_conn_ac_send_ack_if_needed(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.llc_sock*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = load %struct.sock*, %struct.sock** %3, align 8
  %8 = call %struct.llc_sock* @llc_sk(%struct.sock* %7)
  store %struct.llc_sock* %8, %struct.llc_sock** %6, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = call i32 @llc_pdu_decode_pf_bit(%struct.sk_buff* %9, i32* %5)
  %11 = load i32, i32* %5, align 4
  %12 = and i32 %11, 1
  %13 = load %struct.llc_sock*, %struct.llc_sock** %6, align 8
  %14 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = or i32 %15, %12
  store i32 %16, i32* %14, align 4
  %17 = load %struct.llc_sock*, %struct.llc_sock** %6, align 8
  %18 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %33, label %21

21:                                               ; preds = %2
  %22 = load %struct.llc_sock*, %struct.llc_sock** %6, align 8
  %23 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.llc_sock*, %struct.llc_sock** %6, align 8
  %26 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  %27 = load %struct.llc_sock*, %struct.llc_sock** %6, align 8
  %28 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %27, i32 0, i32 1
  store i32 1, i32* %28, align 4
  %29 = load i32, i32* %5, align 4
  %30 = and i32 %29, 1
  %31 = load %struct.llc_sock*, %struct.llc_sock** %6, align 8
  %32 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  br label %33

33:                                               ; preds = %21, %2
  %34 = load %struct.llc_sock*, %struct.llc_sock** %6, align 8
  %35 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.llc_sock*, %struct.llc_sock** %6, align 8
  %38 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = sub nsw i32 %36, %39
  %41 = add nsw i32 %40, 1
  %42 = load i32, i32* @LLC_2_SEQ_NBR_MODULO, align 4
  %43 = add nsw i32 %41, %42
  %44 = load i32, i32* @LLC_2_SEQ_NBR_MODULO, align 4
  %45 = srem i32 %43, %44
  %46 = load %struct.llc_sock*, %struct.llc_sock** %6, align 8
  %47 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = icmp sge i32 %45, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %33
  %51 = load %struct.sock*, %struct.sock** %3, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %53 = call i32 @llc_conn_ac_send_rr_rsp_f_set_ackpf(%struct.sock* %51, %struct.sk_buff* %52)
  %54 = load %struct.llc_sock*, %struct.llc_sock** %6, align 8
  %55 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %54, i32 0, i32 1
  store i32 0, i32* %55, align 4
  %56 = load %struct.llc_sock*, %struct.llc_sock** %6, align 8
  %57 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %56, i32 0, i32 0
  store i32 0, i32* %57, align 4
  %58 = load %struct.sock*, %struct.sock** %3, align 8
  %59 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %60 = call i32 @llc_conn_ac_inc_npta_value(%struct.sock* %58, %struct.sk_buff* %59)
  br label %61

61:                                               ; preds = %50, %33
  ret i32 0
}

declare dso_local %struct.llc_sock* @llc_sk(%struct.sock*) #1

declare dso_local i32 @llc_pdu_decode_pf_bit(%struct.sk_buff*, i32*) #1

declare dso_local i32 @llc_conn_ac_send_rr_rsp_f_set_ackpf(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @llc_conn_ac_inc_npta_value(%struct.sock*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
