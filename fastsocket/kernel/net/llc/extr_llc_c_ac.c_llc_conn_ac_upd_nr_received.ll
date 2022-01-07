; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/llc/extr_llc_c_ac.c_llc_conn_ac_upd_nr_received.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/llc/extr_llc_c_ac.c_llc_conn_ac_upd_nr_received.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.llc_pdu_sn = type { i32 }
%struct.llc_sock = type { i64, %struct.TYPE_4__, i64, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { i32 }

@IFF_LOOPBACK = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @llc_conn_ac_upd_nr_received(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.llc_pdu_sn*, align 8
  %8 = alloca %struct.llc_sock*, align 8
  %9 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  store i64 0, i64* %6, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = call %struct.llc_pdu_sn* @llc_pdu_sn_hdr(%struct.sk_buff* %10)
  store %struct.llc_pdu_sn* %11, %struct.llc_pdu_sn** %7, align 8
  %12 = load %struct.sock*, %struct.sock** %3, align 8
  %13 = call %struct.llc_sock* @llc_sk(%struct.sock* %12)
  store %struct.llc_sock* %13, %struct.llc_sock** %8, align 8
  %14 = load %struct.llc_pdu_sn*, %struct.llc_pdu_sn** %7, align 8
  %15 = call i32 @PDU_SUPV_GET_Nr(%struct.llc_pdu_sn* %14)
  %16 = load %struct.llc_sock*, %struct.llc_sock** %8, align 8
  %17 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %16, i32 0, i32 4
  store i32 %15, i32* %17, align 8
  %18 = load %struct.sock*, %struct.sock** %3, align 8
  %19 = load %struct.llc_sock*, %struct.llc_sock** %8, align 8
  %20 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @llc_conn_remove_acked_pdus(%struct.sock* %18, i32 %21, i64* %6)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %2
  %26 = load %struct.llc_sock*, %struct.llc_sock** %8, align 8
  %27 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %26, i32 0, i32 3
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @IFF_LOOPBACK, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %66

34:                                               ; preds = %25, %2
  %35 = load %struct.llc_sock*, %struct.llc_sock** %8, align 8
  %36 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %35, i32 0, i32 2
  store i64 0, i64* %36, align 8
  %37 = load %struct.llc_sock*, %struct.llc_sock** %8, align 8
  %38 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = call i32 @del_timer(i32* %39)
  %41 = load %struct.llc_sock*, %struct.llc_sock** %8, align 8
  %42 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %34
  %46 = load %struct.llc_sock*, %struct.llc_sock** %8, align 8
  %47 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %46, i32 0, i32 0
  store i64 0, i64* %47, align 8
  %48 = load %struct.sock*, %struct.sock** %3, align 8
  %49 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %50 = call i32 @llc_conn_ac_data_confirm(%struct.sock* %48, %struct.sk_buff* %49)
  br label %51

51:                                               ; preds = %45, %34
  %52 = load i64, i64* %6, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %51
  %55 = load %struct.llc_sock*, %struct.llc_sock** %8, align 8
  %56 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i64, i64* @jiffies, align 8
  %59 = load %struct.llc_sock*, %struct.llc_sock** %8, align 8
  %60 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %58, %62
  %64 = call i32 @mod_timer(i32* %57, i64 %63)
  br label %65

65:                                               ; preds = %54, %51
  br label %84

66:                                               ; preds = %25
  %67 = load %struct.llc_sock*, %struct.llc_sock** %8, align 8
  %68 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %83

71:                                               ; preds = %66
  %72 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %73 = call i32 @llc_pdu_decode_pf_bit(%struct.sk_buff* %72, i32* %9)
  %74 = load i32, i32* %9, align 4
  %75 = icmp eq i32 %74, 1
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = load %struct.llc_sock*, %struct.llc_sock** %8, align 8
  %78 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %77, i32 0, i32 0
  store i64 0, i64* %78, align 8
  %79 = load %struct.sock*, %struct.sock** %3, align 8
  %80 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %81 = call i32 @llc_conn_ac_data_confirm(%struct.sock* %79, %struct.sk_buff* %80)
  br label %82

82:                                               ; preds = %76, %71
  br label %83

83:                                               ; preds = %82, %66
  br label %84

84:                                               ; preds = %83, %65
  ret i32 0
}

declare dso_local %struct.llc_pdu_sn* @llc_pdu_sn_hdr(%struct.sk_buff*) #1

declare dso_local %struct.llc_sock* @llc_sk(%struct.sock*) #1

declare dso_local i32 @PDU_SUPV_GET_Nr(%struct.llc_pdu_sn*) #1

declare dso_local i32 @llc_conn_remove_acked_pdus(%struct.sock*, i32, i64*) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @llc_conn_ac_data_confirm(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @llc_pdu_decode_pf_bit(%struct.sk_buff*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
